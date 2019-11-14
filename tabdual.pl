:- dynamic defined/1, rule/2, rule/3, fact/1, isPred/1, abds/1, dtrie/1.

useFiles :-
	consult('SMGit/StudiMandiri/systems.pl').

:- op(950, fy, not).
:- op(1110, fy, '<-').
:- op(1110, xfy, '<-').
:- op(1120, xfx, '<>').

clear :-
	retractall(defined(_)),
	retractall(rule(_, _)),
	retractall(rule(_, _, _)),
	retractall(fact(_)), 
	retractall(isTransformed(_)),
	retractall(untrans(_)),
	retractall(abds(_)),
	retractall(isPred(_)),
	assert(numvars(0)),
	dtrie(X),trie_destroy(X),
	retractall(dtrie(_)),
	trie_new(T), assert(dtrie(T)).
clear :-
	trie_new(T), assert(dtrie(T)).

:- useFiles, retractall(mode(_)), assert(mode(table)), clear.

% Checking active mode
mode :-
	mode(Mode),
	write_ln(['Current mode: ', Mode]).

% Switch to normal table mode
switchMode(t) :- !,
	retractall(mode(_)),
	assert(mode(table)).
% Switch to dual by need mode
switchMode(n) :- !,
	retractall(mode(_)),
	assert(mode(dneed)).
% Switch to split solution mode
switchMode(sp) :- !,
	retractall(mode(_)),
	assert(mode(split)).
% Invalid mode input
switchMode(Mode) :-
	write_ln(['Unknown mode: ', Mode, '. Only t (\'tabling\') and sp (\'split\') are available.']),
	fail.
	
% Input Output to File
seeFileInput(F) :-
	concat_atom(['SMGit/StudiMandiri/in/', F, '.ab'], FIn),
	see(FIn).
	
tellFileOutput(F) :-
	mode(split), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '_s.pl'], FAb),
	tell(FAb).
tellFileOutput(F) :-
	mode(dneed), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '_n.pl'], FAb),
	tell(FAb).
tellFileOutput(F) :-
	mode(table), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '.pl'], FAb),
	tell(FAb).

load(F) :-
	mode(split), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '_s.pl'], FOut),
	consult(FOut).	
load(F) :-
	mode(dneed), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '_n.pl'], FOut),
	consult(FOut).	
load(F) :-
	mode(table), !,
	concat_atom(['SMGit/StudiMandiri/out/', F, '.pl'], FOut),
	consult(FOut).	

% Menambahkan indeks ke rule/2
add_indices :-
	retract(defined(H)),
	findRules(H, R),
	add_indices_to_rule(R, 1),
	add_indices,
	assert(defined(H)).
add_indices.

add_indices_to_rule([], _).
add_indices_to_rule([rule(H,B)|RR], N) :-
	% retract(rule(H,B)),
	assert(rule(H,B,N)),
	NN is N + 1,
	add_indices_to_rule(RR, NN).

% Transforming the abductive program
transform(Filename) :-
	seeFileInput(Filename),
	tellFileOutput(Filename),
	readProgramInput,
	transform,
	seen,
	told.

readProgramInput :-
	clear,
	readRules,
	add_indices.

readRules :-
	read(C),
	(
		C = end_of_file
	-> 
		true
	;
		C = beginProlog
	->
		readJustFacts
	;
		readRule(C), 
		% write(C), nl,
		readRules
	).

readJustFacts :-
	read(C),
	(
		C = endProlog
	->
		transformJustFact,
		readRules, !
	;
		readRule(C),
		writeRule(C, true),
		% write(C), nl,
		readJustFacts
	).

transform :-
	transformAbducibles,
	transformRule,
	transformWithoutIC.
	
% ---- Transforming the rules ---- %

transformRule :-
	retract(defined(H)),
	removeIsPred(H),
	findRules(H, R),
	generateTauAposts(R),
	% checkAndWriteTable(H, R),
	writeTable(H),
	generateTauPlus(H),
	generateDualRules(H, R),
	nl,
	transformRule.
transformRule.
	
removeIsPred(P) :-
	retract(isPred(P)), !.
removeIsPred(_).

% ---- T` Transformation ---- %

checkAndWriteTable(_, []).
checkAndWriteTable(H, [rule(_,B)|RR]) :-
	toList(B,B1),
	((checkRules(B1), checkAndWriteTable(H,RR));
	writeTable(H)).
	
checkRules([]).
checkRules([B|BB]) :-
	(isAbducible(B); (unground(B,B1), fact(B1))),
	checkRules(BB).

generateTauAposts([]) :- !.
generateTauAposts([R|RR]) :-
	generateTauApost(R),
	generateTauAposts(RR).

generateTauApost(rule(false, _)) :- !.
generateTauApost(rule(H, B)) :- 
	(mode(table); mode(dneed)), !,
	toList(B, BList),
	splitAr(BList, Br, Ar),
	toConj(Br, BrConj),
	createApostBody(BrConj, ResBr, Ar, O),
	createApostHead(H, HRes, O),
	writeRule(HRes, ResBr),
	nl.
generateTauApost(rule(H, B)) :- 
	mode(split), !,
	toList(B, BList),
	splitAr(BList, Br, Ar),
	splitAbd(Ar, Ar2),
	toConj(Br, BrConj),
	createApostBody(BrConj, ResBr, Ar2, O),
	createApostHead(H, HRes, O),
	writeRule(HRes, ResBr),
	nl.

splitAr([], [], []).
splitAr([B|BB], Br, [B|Ar]) :-
	isAbducible(B), !,
	splitAr(BB, Br, Ar).
splitAr([B|BB],[B|Br], Ar) :-
	splitAr(BB, Br, Ar).

splitAbd(Abd, Pos <> Neg) :-
	splitAbd(Abd, Pos, Neg).
splitAbd([],[] <> []) :- !.
splitAbd([not R|T],L1 <> L2) :- !,
	splitAbd(T, L1 <> T2),
	insert(not R, T2, L2).
splitAbd([R|T],L1 <> L2) :- !,
	splitAbd(T, T1 <> L2),
	insert(R, T1, L1).

createApostHead(H, ProH, O) :- !,
	H =.. [S|A],
	concat_atom([S, '_ab'], Sab),
	append(A, [O], NewA),
	ProH =.. [Sab| NewA].

createApostBody((B, BB), (ProB, ProBB), I, O) :- !,
	alpha(B, ProB, I, IO),
	createApostBody(BB, ProBB, IO, O).
createApostBody(B, ProB, I, O) :-
	alpha(B, ProB, I, O).

alpha(true, true, I, I) :- !.
alpha(L, ProL, I, O) :-
	notToPositive(L, NA),
	NA =.. [S|AR],
	append(AR, [I,O], NewAR),
	ProL =.. [S|NewAR].
	
% ---- End of T` Transformation ---- %	
	
% ---- T+ Transformation ---- %

generateTauPlus(false) :- !.
generateTauPlus(H) :- !,
	functor(H,F,Arity),
	generateVarList(Arity,L),
	generatePlusHead(F, L, I, O, HHead),
	generatePlusBody(F, L, I, O, HBody),
	writeRule(HHead, HBody).
	
generatePlusHead(F, L, I, O, HRes) :- !,
	append(L, [I,O], NewAR),
	HRes =.. [F|NewAR].
	
generatePlusBody(Fun, L, I, O, HBody) :- !,
	H =.. [Fun|L],
	createApostHead(H, HRes, E),
	Context =.. [produce_context|[O, I, E]],
	HBody = (HRes, Context).
	
% ---- End of T+ Transformation ---- %

% ---- T- Transformation ---- %

generateDualRules(H, R) :- !,
	functor(H,F,Arity),
	length(R,NumRule),
	generateVarList(Arity,L),
	generateTauMinHead(F, L, I, O, HRes),
	generateTauMinBody(F, L, R, BRes, I, O, 1, NumRule),
	% generateTauMinHead(F, L, I, I, Emp),
	% writeRule(Emp, true),
	writeRule(HRes, BRes).
	
generateTauMinHead(F, L, I, O, HRes) :- !,
	concat_atom(['not_', F], NotF),
	append(L, [I, O], NewL),
	HRes =.. [NotF|NewL].
	
generateTauMinBody(_, _, [], _, _, _, _, _) :- !.
generateTauMinBody(Fun, Var, [rule(R, B)|[]], BRes, I, O, Num, 1) :- !,
	concat_atom([Fun, '_star', Num], SStar),
	append(Var, [I, O], NewAR),
	BRes =.. [SStar| NewAR],
	R =.. [_|Arg],
	append(Var, [T, T], EqAR),
	BEq =.. [SStar|EqAR],
	writeSecDual1(BEq, Var, Arg),
	generateTauStar(SStar, Var, Arg, B, I, O, []).
generateTauMinBody(Fun, Var, [rule(R, B)|[]], (Copy, BRes), I, O, Num, _) :- !,
	concat_atom([Fun, '_star', Num], SStar),
	length(Var,N), generateVarList(N,L2),
	Copy =.. [copy_term|[Var, L2]],
	append(L2, [I, O], NewAR),
	BRes =.. [SStar| NewAR],
	R =.. [_|Arg],
	append(Var, [T, T], EqAR),
	BEq =.. [SStar|EqAR],
	writeSecDual1(BEq, Var, Arg),
	generateTauStar(SStar, Var, Arg, B, I, O, []).
generateTauMinBody(Fun, Var, [rule(R, B)|L], (Copy, BRes, BBRes), I, O, Num, NumRule) :-
	concat_atom([Fun, '_star', Num], SStar),
	length(Var,N), generateVarList(N,L2),
	append(L2, [I, O2], NewAR),
	Copy =.. [copy_term|[Var, L2]],
	BRes =.. [SStar| NewAR],
	R =.. [_|Arg],
	append(Var, [T, T], EqAR),
	BEq =.. [SStar|EqAR],
	writeSecDual1(BEq, Var, Arg),
	generateTauStar(SStar, Var, Arg, B, I, O, []),
	NewNum is Num + 1,
	generateTauMinBody(Fun, Var, L, BBRes, O2, O, NewNum, NumRule).

% ---- End of T- Transformation ---- %

% ---- T* Transformation ---- %

generateTauStar(_, _, _, true, _, _, _) :- !.	
generateTauStar(Head, Var, _, _, I, O, _) :-
	mode(dneed), !,
	append(Var, [I, O], Arg),
	Head2 =.. [Head|Arg],
	sub_atom(Head,_,1,0,Num),
	HBody =.. [Head|Var],
	Body =.. [dual,Num,HBody,I,O],
	writeRule(Head2,Body).
generateTauStar(Head, Var, R, (RBody, RRBody), I, O, PrevB) :- !,
	RBody =.. [_|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	Head2 =.. [Head|Arg],
	generateTauStarBody(PrevB, RBody, I, O, Body),
	writeRule(Head2,Body),
	append(PrevB,[RBody],Res),
	generateTauStar(Head, Var2, R, RRBody, I, O, Res).
generateTauStar(Head, Var, R, RBody, I, O, PrevB) :- !,
	RBody =.. [_|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	Head2 =.. [Head|Arg],
	generateTauStarBody(PrevB, RBody, I, O, Body),
	writeRule(Head2,Body).
	
generateTauStarBody([not _|RPrevB], CurB, I, O, (ResB)) :- !,
	% PrevB =.. [F|Arg],
	% append(Arg, [I, I1], Arg2),
	% PrevBn =.. [F|Arg2],
	generateTauStarBody(RPrevB, CurB, I, O, ResB).
generateTauStarBody([PrevB|RPrevB], CurB, I, O, (PrevBn, ResB)) :- !,
	PrevB =.. [F|Arg],
	append(Arg, [I, I1], Arg2),
	PrevBn =.. [F|Arg2],
	generateTauStarBody(RPrevB, CurB, I1, O, ResB).
generateTauStarBody([], not CurB, I, O, ResB) :-
	CurB =.. [F|Arg],
	append(Arg, [I, O], Arg2),
	ResB =.. [F|Arg2].
generateTauStarBody([], CurB, I, O, ResB) :- !,
	CurB =.. [F|Arg],
	append(Arg, [I, O], Arg2),
	concat_atom(['not_', F], F2),
	ResB =.. [F2|Arg2].

% ---- End of T* Transformation ---- %

% ---- To Transformation ---- %

transformAbducibles :- !,
	getAbducibles(A),
	generateAbdRules(A).

generateAbdRules([]) :- !.
generateAbdRules([A|AA]) :-
	transformAbducible(A),
	transformAbducible(not A),
	generateAbdRules(AA).

transformAbducible((not A)) :- !,
	A =.. [_,S,AR|_],
	functor(AP, S, AR),
	createAbdNegHead(AP, HRes, I, O),
	createAbdBody((not AP), ResB, I, O),
	writeRule(HRes, ResB).
transformAbducible(A) :-
	A =.. [_,S,AR|_],
	functor(AP, S, AR),
	AP =.. [S2|AR2],
	append(AR2, [I,O], NewAR),
	HRes =.. [S2|NewAR],
	createAbdBody(AP, ResB, I, O),
	writeRule(HRes, ResB).

createAbdNegHead(A, ProA, I, O) :- !,
	A =.. [S|AR],
	concat_atom(['not_',S],H),
	append(AR, [I,O], NewAR),
	ProA =.. [H|NewAR].

createAbdBody(A, ProA, I, O) :- !,
	ProA =.. ['insert_abducible'|[A,I,O]].
	
% ---- End of To Transformation ---- %

% ---- Transforming facts only ---- %

transformJustFact :-
	retract(defined(F)),
	generatePosFact(F),
	generateNegFact(F),
	assertFact(F),
	transformJustFact.
transformJustFact.

generatePosFact(F) :-
	processHeadPosFact(F, ProF),
	writeRule(ProF, F).

generateNegFact(F) :-
	processHeadNegFact(F, ProF),
	writeRule(ProF, (not F)).

processHeadPosFact(F, ProF) :-
	F =.. [S|AR],
	append(AR, [I,I], NewAR),
	ProF =.. [S|NewAR].

processHeadNegFact(F, ProF) :-
	F =.. [Fun|Arg],
	concat_atom(['not_',Fun],F2),
	append(Arg, [I,I], NewAR),
	ProF =.. [F2|NewAR].
	
% ---- End of Transforming facts only ---- %

% ---- Transformation without IC ---- %

transformWithoutIC :-
	findRules(false, R),
	length(R, 0), !,
	generateDualNoIC.
transformWithoutIC.

generateDualNoIC :-
	NF =.. ['not_false'|[I,I]],
	writeRule(NF, true),
	nl, nl.
	
% ---- End of Transformation without IC ---- %

% ---- Query Transformation ---- %

transformQuery(Q, I, O) :-
	createApostBody(Q, ProQ, I, T),
	NF =.. ['not_false'|[T,O]],
	% write(ProQ), write(NF).
	ProQ, NF.
	
% ---- End of Query Transformation ---- %

% ---- Querying abductive program ---- %

query(Q, O) :- 
	(mode(table); mode(dneed)), !, query(Q, [], O).
query(Q, O) :- 
	mode(split), !, query(Q, []<>[], O).
query(Q, I, O) :-
	transformQuery(Q, I, O).
	
ask(Q) :- 
	findall(O, query(Q,O), Sol).
	% writeSolution(Sol,1).
	% length(Sol,Len), write(Len).

ask2(I) :- 
	findall(O, active(phase0,aif,I,O), Sol),
	writeSolution(Sol,1).
	% length(Sol,Len), write(Len).

% Delete previously defined abducible

removePrevAbducibles(A, _) :-
	retract(A), !.
removePrevAbducibles(_, []).
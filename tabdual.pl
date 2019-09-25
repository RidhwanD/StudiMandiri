:- dynamic defined/1, rule/2, rule/3, isPred/1, abds/1, numvars/1, isTransformed/1.

useFiles :-
	consult('StudiMandiri/systems.pl').

:- op(950, fy, not).
:- op(1110, fy, '<-').
:- op(1110, xfy, '<-').

clear :-
	retractall(defined(_)),
	retractall(rule(_, _)),
	retractall(rule(_, _, _)), 
	retractall(abds(_)),
	retractall(isPred(_)),
	retractall(numvars(_)),
	assert(numvars(0)).

:- useFiles, retractall(mode(_)), assert(mode(table)), clear.
	
% Input Output to File
seeFileInput(F) :-
	concat_atom(['SMGit/StudiMandiri/in/', F, '.ab'], FIn),
	see(FIn).
	
tellFileOutput(F) :-
	concat_atom(['SMGit/StudiMandiri/out/', F, '.pl'], FAb),
	tell(FAb).

load(F) :-
	concat_atom(['SMGit/StudiMandiri/out/', F, '.pl'], FOut),
	consult(FOut).	
	
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
	readRules.
	% add_indices.

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
	% generateTauAposts(R),
	generateTauPlus(H),
	generateDualRules(H, R),
	nl,
	transformRule.
transformRule.
	
removeIsPred(P) :-
	retract(isPred(P)), !.
removeIsPred(_).

transformApost(H) :-
	\+ checkTransformed(H),
	unground(H, H2),
	findRules(H2, R),
	open('SMGit/StudiMandiri/tabling.pl', append, Handle),
	writeTable(H2, Handle),
	generateTauAposts(R, Handle),
	close(Handle), consult('SMGit/StudiMandiri/tabling.pl'),
	assertTransformed(H2).
	
% ---- T` Transformation ---- %

generateTauAposts([], _) :- !.
generateTauAposts([R|RR], F) :-
	generateTauApost(R,F),
	generateTauAposts(RR, F).

generateTauApost(rule(false, _),_) :- !.
generateTauApost(rule(H, B),F) :- !,
	toList(B, BList),
	splitAr(BList, Br, Ar),
	toConj(Br, BrConj),
	createApostBody(BrConj, ResBr, Ar, O),
	createApostHead(H, HRes, O),
	writeRule(HRes, ResBr, F),
	nl.

splitAr([], [], []).
splitAr([B|BB], Br, [B|Ar]) :-
	isAbducible(B), !,
	splitAr(BB, Br, Ar).
splitAr([B|BB],[B|Br], Ar) :-
	splitAr(BB, Br, Ar).

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
	generatePlusBody2(F, L, HBody2, HHead),
	writeRule(HHead, HBody2),
	writeRule(HHead, HBody).
	
generatePlusHead(F, L, I, O, HRes) :- !,
	append(L, [I,O], NewAR),
	HRes =.. [F|NewAR].
	
generatePlusBody(Fun, L, I, O, HBody) :- !,
	H =.. [Fun|L],
	createApostHead(H, HRes, E),
	Context =.. [produce_context|[O, I, E]],
	HBody = (HRes, Context).
	
generatePlusBody2(Fun, L, HBody, HHead):- !,
	H =.. [Fun|L],
	HB =.. [transformApost|[H]],
	HBody = (HB, !, HHead).
	
% ---- End of T+ Transformation ---- %

% ---- T- Transformation ---- %

generateDualRules(H, R) :- !,
	functor(H,F,Arity),
	length(R,NumRule),
	generateVarList(Arity,L),
	generateTauMinHead(F, L, I, O, HRes),
	generateTauMinBody(F, L, R, BRes, I, O, 1, NumRule),
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
	generateTauStar(SStar, Var, Arg, B, I, O).
generateTauMinBody(Fun, Var, [rule(R, B)|[]], (Copy, BRes), I, O, Num, _) :- !,
	concat_atom([Fun, '_star', Num], SStar),
	length(Var,N), generateVarList(N,L2),
	append(L2, [I, O], NewAR),
	Copy =.. [copy_term|[Var, L2]],
	BRes =.. [SStar| NewAR],
	R =.. [_|Arg],
	append(Var, [T, T], EqAR),
	BEq =.. [SStar|EqAR],
	writeSecDual1(BEq, Var, Arg),
	generateTauStar(SStar, Var, Arg, B, I, O).
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
	generateTauStar(SStar, Var, Arg, B, I, O),
	NewNum is Num + 1,
	generateTauMinBody(Fun, Var, L, BBRes, O2, O, NewNum, NumRule).

% ---- End of T- Transformation ---- %

% ---- T* Transformation ---- %

generateTauStar(_, _, _, true, _, _) :- !.	
generateTauStar(Head, Var, R, (not RBody, RRBody), I, O) :- !,
	RBody =.. [F|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	append(A1, [I, O], Arg2),
	Body =.. [F|Arg2],
	Head2 =.. [Head|Arg],
	writeRule(Head2,Body),
	generateTauStar(Head, Var, R, RRBody, I, O).
generateTauStar(Head, Var, R, (RBody, RRBody), I, O) :- !,
	RBody =.. [F|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	concat_atom(['not_',F],F2),
	append(A1, [I, O], Arg2),
	Body =.. [F2|Arg2],
	Head2 =.. [Head|Arg],
	writeRule(Head2,Body),
	generateTauStar(Head, Var, R, RRBody, I, O).
generateTauStar(Head, Var, R, not RBody, I, O) :- !,
	RBody =.. [F|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	append(A1, [I, O], Arg2),
	Body =.. [F|Arg2],
	Head2 =.. [Head|Arg],
	writeRule(Head2,Body).
generateTauStar(Head, Var, R, RBody, I, O) :- !,
	RBody =.. [F|A1],
	subtituteArg(Var,R,A1,Var2),
	append(Var2, [I, O], Arg),
	concat_atom(['not_',F],F2),
	append(A1, [I, O], Arg2),
	Body =.. [F2|Arg2],
	Head2 =.. [Head|Arg],
	writeRule(Head2,Body).

generateTauStar2(_, _, _, _, rule(_, true), _) :- !.
generateTauStar2(Fun, Var, I, O, rule(R, _), N) :- !,
	R =.. [F|_],
	append(Var, [I, O], Arg),
	H =.. [Fun|Arg],
	New =.. [F|Var],
	Body =.. [dual|[N,New,I,O]],
	writeRule(H, Body).

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

query(Q, O) :- query(Q, [], O).
query(Q, I, O) :-
	transformQuery(Q, I, O).

% Delete previously defined abducible

removePrevAbducibles(A, _) :-
	retract(A), !.
removePrevAbducibles(_, []).
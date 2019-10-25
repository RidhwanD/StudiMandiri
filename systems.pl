getAbducibles(A) :-
	abds(A), !.
getAbducibles([]).

isAbducible((not Ab)) :-
	isAbducible(Ab), !.
isAbducible(Ab) :- 
	functor(Ab, S, A), 
	getAbducibles(Abds), 
	member(S/A, Abds).

toList(','(B, BB), [B|BH]) :- !,
	toList(BB, BH).
toList(A, [A]).
	
toConj([], true).
toConj([A], A) :- !.
toConj([A|L], (A, B)) :- toConj(L, B).	
	
notToPositive((not H), NH) :- !,
	H =.. [S|A],
	concat_atom(['not_', S], NS),
	NH =.. [NS|A].
notToPositive(H, H).
	
assertRule(H) :- 
	assert(rule((H, true))).
assertRule(H, B) :- 
	assert(rule(H, B)).
	
assertDefined(H) :-
	defined(H), !.
assertDefined(H) :-
	unground(H, H2),
	assert(defined(H2)).

assertFact(H) :-
	fact(H), !.
assertFact(H) :-
	unground(H, H2),
	assert(fact(H2)).
	
assertBody((B1, B2)) :- !,
	assertIsPred(B1),
	assertBody(B2).
assertBody(B) :-
	assertIsPred(B).
	
assertIsPred(P) :- 
	isAbducible(P), !.
assertIsPred(P) :-
	functor(P, S, A), 
	functor(PP, S, A),
	tryAssert(isPred(PP)).
	
tryAssert(X) :- 
	X, !.
tryAssert(X) :- 
	assert(X).

unground(H, H2) :-
	H =.. [F|_],
	functor(H, F, Arity),
	generateVarList(Arity, Arg),
	H2 =.. [F|Arg].
	
% Helper
	
findRules(H, R) :-
	findall(rule(H, B), clause(rule(H, B), true), R).
	
findRules(H, R, N) :-
	findall(rule(H, B), clause(rule(H, B, N), true), R).
	
generateVarList(0,[]).
generateVarList(N1,[_|L]) :-
	N1 > 0, N is N1 - 1,
	generateVarList(N,L). 
	
% Read and Write on Files

readRule(abds(A)) :- !,
	removePrevAbducibles(abds(OldA), OldA),
	append(A, OldA, NewA),
	assert(abds(NewA)).

readRule(H <- B) :- !,
	assertDefined(H),
	assertBody(B),
	assertRule(H, B).
	
readRule( <- B) :- !,
	readRule(false <- B).

readRule(H) :- !,
	assertDefined(H),
	assertRule(H, true).
	
readRule(_).

writeRuleStar(Head, ListBody, LastBody) :-
	write(Head), write(' :- '), writeList(ListBody), write(LastBody), write('.'), nl.

writeRule(Head, true) :- !,
	write(Head), write('.'), nl.
writeRule(Head, Body) :-
	write(Head), write(' :- '), write(Body), write('.'), nl.

writeTable(false) :- !.
writeTable(H) :-
	functor(H, Fun, Arity),
	A2 is Arity + 1,
	concat_atom([Fun,'_ab'],Pred),
	write(':- table '), write(Pred), write('/'), write(A2), write('.'), nl.

writeSecDual1(_, [], []) :- !.
writeSecDual1(Head, Var1, Var2) :-
	write(Head), write(' :- '), write(Var1), write('\\='), write(Var2), write('.'), nl.

% ---- Writing all solutions generated ---- %
writeSolution([], _) :- !, fail.
writeSolution([S|Sol], Num) :-
	writeSolution([S|Sol], Num).
writeSolution([], _).
writeSolution([S|Sol], Num) :-
	write_ln(['(', Num, ') ', S]),
	NextNum is Num + 1,
	writeSolution(Sol, NextNum).

% System Predicates

negate((not L),L) :- !.
negate(L,(not L)).

produce_context(I, I, []) :- mode(table), !.
produce_context(E, [], E) :- mode(table), !.
produce_context(O, I, [E|EE]) :-
	mode(table), 
	member(E, I), !,
	produce_context(O, I, EE).
produce_context(O, I, [E|EE]) :-
	mode(table), !,
	negate(E, NE),
	\+ member(NE, I),
	append(I, [E], IE),
	produce_context(O, IE, EE).

produce_context(I, I, [[],[]]) :- mode(split), !.
produce_context(E, [[],[]], E) :- mode(split), !.
produce_context(O, [Pi,Ni], [[E|EE],L]) :-
	mode(split), 
	member(E, Pi), !,
	produce_context(O, [Pi,Ni], [EE,L]).
produce_context(O, [Pi,Ni], [[E|EE],L]) :-
	mode(split), !,
	negate(E, NE),
	\+ member(NE, Ni),
	insert(E, Pi, PiE),
	% append(Ni, [E], NiE),
	produce_context(O, [PiE,Ni], [EE,L]).
produce_context(O, [Pi,Ni], [L,[E|EE]]) :-
	mode(split), 
	member(E, Ni), !,
	produce_context(O, [Pi,Ni], [L,EE]).
produce_context(O, [Pi,Ni], [L,[E|EE]]) :-
	mode(split), !,
	negate(E, NE),
	\+ member(NE, Pi),
	insert(E, Ni, NiE),
	% append(Pi, [E], PiE),
	produce_context(O, [Pi,NiE], [L,EE]).

insert_abducible(A, I, I) :-
	mode(table), member(A, I), !.
insert_abducible(A, I, O) :-
	mode(table), !,
	negate(A, NA),
	\+ member(NA, I),
	append(I, [A], O).

insert_abducible(not A, [Pos, Neg], [Pos, Neg]) :-
	mode(split), member(not A, Neg), !.
insert_abducible(not A, [Pos, Neg], [Pos, O]) :-
	mode(split), !,
	negate(not A, NA),
	\+ member(NA, Pos),
	insert(not A, Neg, O).
insert_abducible(A, [Pos, Neg], [Pos, Neg]) :-
	mode(split), member(A, Pos), !.
insert_abducible(A, [Pos, Neg], [O, Neg]) :-
	mode(split), !,
	negate(A, NA),
	\+ member(NA, Neg),
	insert(A, Pos, O).

notVar([X|_],H) :-
	memberVar(X, H), !.
notVar([X|T],H) :-
	\+ memberVar(X, H), !,
	notVar(T, H).
notVar(X, H) :-
	X \= [],
	X =.. [_|L],
	notVar(L, H), !.

memberVar(X,[H,_]) :-
	X == H, !.
memberVar(X, H) :-
	\+ var(X), !, notVar(X, H).
memberVar(X, [H|_]) :- 
	var(H),
	X == H, !.
memberVar(X, [H|T]) :-
	var(H),
	\+ X == H, !,
	memberVar(X, T).
memberVar(X, [H|_]) :-
	\+ var(H), H =.. [_|L],
	memberVar(X,L), !.
memberVar(X, [H|T]) :-
	\+ var(H), H =.. [_|L],
	\+ memberVar(X,L), !,
	memberVar(X,T).
	
subtituteArg([],[],_,[]) :- !.
subtituteArg([_|T1],[H2|T2],Var,[H2|T3]) :-
	memberVar(H2,Var), !,
	subtituteArg(T1,T2,Var,T3).
subtituteArg([H1|T1],[H2|T2],Var,[H1|T3]) :-
	\+ memberVar(H2,Var),
	subtituteArg(T1,T2,Var,T3).
	
appendContext([_,N], not R, O) :- !,
	append(N, not R, O).
appendContext([P,_], R, O) :-
	append(P, R, O).

appendResult([P,N], O) :-
	append(P, N, O).

% insert into sorted list.

insert(X, [], [X]).
insert(X, [Y|Rest], [X,Y|Rest]) :-
    X @< Y, !.
insert(X, [Y|Rest0], [Y|Rest]) :-
    insert(X, Rest0, Rest).

writeList([]).
writeList([H|T]) :-
	write(H), write(','),
	writeList(T).

relevantGroundTerm([],[],[]) :- !.
relevantGroundTerm([H|T],G,NG) :-
	H =.. [_|Arg],
	inputGround(Arg,L1,L),
	relevantGroundTerm(T,L2,L3),
	append(L1,L2,L4),
	append(L,L3,L5),
	sort(L4,G), sort(L5,NG).
	
inputGround([],[],[]) :- !.
inputGround([H|T],[H|T2],L) :-
	ground(H), !,
	inputGround(T,T2,L).
inputGround([H|T],L2,[H|T3]) :-
	\+ ground(H), !,
	inputGround(T,L2,T3).
	

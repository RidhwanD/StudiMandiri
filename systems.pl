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
	
assertUntrans(H) :-
	untrans(H), !.
assertUntrans(H) :-
	unground(H, H2),
	assert(untrans(H2)).

assertFact(H) :-
	fact(H), !.
assertFact(H) :-
	unground(H, H2),
	assert(fact(H2)).

checkTransformed(H) :-
	isTransformed(H).
assertTransformed(H) :-
	assert(isTransformed(H)).
	
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
	
getTwoLastList([],[]) :- !.
getTwoLastList([L],[L]) :- !.
getTwoLastList([L1, L2],[L1, L2]) :- !.
getTwoLastList([_|[L1,L2]], [L1,L2]) :- !.
getTwoLastList([_|L1], L2) :- 
	getTwoLastList(L1, L2).
	
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

writeRule(Head, true, F) :- !,
	write(F, Head), write(F, '.'), nl(F).
writeRule(Head, Body, F) :-
	write(F, Head), write(F, ' :- '), write(F, Body), write(F, '.'), nl(F).
	
writeTable(H, F) :-
	functor(H, Fun, Arity),
	A2 is Arity + 1,
	concat_atom([Fun,'_ab'],Pred),
	write(F, ':- table '), write(F, Pred), write(F, '/'), write(F, A2), write(F, '.'), nl(F).

writeTable(H) :-
	functor(H, Fun, Arity),
	A2 is Arity + 1,
	concat_atom([Fun,'_ab'],Pred),
	write(':- table '), write(Pred), write('/'), write(A2), write('.'), nl.

writeSecDual1(_, [], []) :- !.
writeSecDual1(Head, Var1, Var2) :-
	write(Head), write(' :- '), write(Var1), write('\\='), write(Var2), write('.'), nl.
	
% System Predicates

negate((not L),L) :- !.
negate(L,(not L)).

% produce_context(I, I, []) :- !.
% produce_context(E, [], E) :- !.
% produce_context(O, I, [E|EE]) :-
%	member(E, I), !,
%	produce_context(O, I, EE).
% produce_context(O, I, [E|EE]) :-
%	negate(E, NE),
%	\+ member(NE, I),
%	append(I, [E], IE),
%	produce_context(O, IE, EE).

produce_context(I, I, [[],[]]) :- !.
produce_context(E, [[],[]], E) :- !.
produce_context(O, [Pi,Ni], [[E|EE],L]) :-
	member(E, Pi), !,
	produce_context(O, [Pi,Ni], [EE,L]).
produce_context(O, [Pi,Ni], [[E|EE],L]) :-
	negate(E, NE),
	\+ member(NE, Ni),
	append(Ni, [E], NiE),
	produce_context(O, [Pi,NiE], [EE,L]).
produce_context(O, [Pi,Ni], [L,[E|EE]]) :-
	member(E, Ni), !,
	produce_context(O, [Pi,Ni], [L,EE]).
produce_context(O, [Pi,Ni], [L,[E|EE]]) :-
	negate(E, NE),
	\+ member(NE, Pi),
	append(Pi, [E], PiE),
	produce_context(O, [PiE,Ni], [L,EE]).

% insert_abducible(A, I, I) :-
% 	member(A, I), !.
%insert_abducible(A, I, O) :-
%	negate(A, NA),
%	\+ member(NA, I),
%	append(I, [A], O).

insert_abducible(not A, [Pos, Neg], [Pos, Neg]) :-
	member(not A, Neg), !.
insert_abducible(not A, [Pos, Neg], [Pos, O]) :-
	negate(not A, NA),
	\+ member(NA, Pos), !,
	append(Neg, [not A], O).
insert_abducible(A, [Pos, Neg], [Pos, Neg]) :-
	member(A, Pos), !.
insert_abducible(A, [Pos, Neg], [O, Neg]) :-
	negate(A, NA),
	\+ member(NA, Neg),
	append(Pos, [A], O).

notVar([X|_],H) :-
	memberVar(X, H), !.
notVar([X|T],H) :-
	\+ memberVar(X, H), !,
	notVar(T, H).
notVar(X, H) :-
	X \= [],
	X =.. [_|L],
	notVar(L, H), !.
	
memberVar(X, H) :-
	\+ var(X), !, notVar(X, H).
memberVar(X, [H|_]) :- 
	var(H),
	X == H, !.
memberVar(X, [H|T]) :-
	var(H),
	\+ X == H,
	memberVar(X, T).
	
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

writeList([]).
writeList([H|T]) :-
	write(H), write(','),
	writeList(T).

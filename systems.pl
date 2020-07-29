:- set_prolog_stack(trail,  limit(3 000 000 000)).

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
	
assertICs(H) :-
	ic(H), !.
assertICs(H) :-
	assert(ic(H)).
	
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
	
find_nth_rules(H, N, RL) :-
	clause(rule(H, B, N), true), toList(B, RL).
	
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
	writeSolutions([S|Sol], Num).
writeSolutions([], _).
writeSolutions([S|Sol], Num) :-
	write_ln(['(', Num, ') ', S]),
	NextNum is Num + 1,
	writeSolutions(Sol, NextNum).

% ---- Writing list ---- %
write_list([]).
write_list([H|T]) :- 
	write(H), 
	write_list(T).

write_ln(List) :- 
	write_list(List),
	nl.

% System Predicates

negate((not L),L) :- !.
negate(L,(not L)).

produce_context(I, I, []) :- (mode(table); mode(vneg)), !.
produce_context(E, [], E) :- (mode(table); mode(vneg)), !.
produce_context(O, I, [E|EE]) :-
	(mode(table); mode(vneg)), 
	member(E, I), !,
	produce_context(O, I, EE).
produce_context(O, I, [E|EE]) :-
	(mode(table); mode(vneg)), !,
	negate(E, NE),
	\+ member(NE, I),
	append(I, [E], IE),
	produce_context(O, IE, EE).

produce_context(I, I, []<>[]) :- mode(split), !.
produce_context(E, []<>[], E) :- mode(split), !.
produce_context(O, Pi<>Ni, [E|EE]<>L) :-
	mode(split), 
	member(E, Pi), !,
	produce_context(O, Pi<>Ni, EE<>L).
produce_context(O, Pi<>Ni, [E|EE]<>L) :-
	mode(split), !,
	negate(E, NE),
	\+ member(NE, Ni),
	insert(E, Pi, PiE),
	% append(Ni, [E], NiE),
	produce_context(O, PiE<>Ni, EE<>L).
produce_context(O, Pi<>Ni, L<>[E|EE]) :-
	mode(split), 
	member(E, Ni), !,
	produce_context(O, Pi<>Ni, L<>EE).
produce_context(O, Pi<>Ni, L<>[E|EE]) :-
	mode(split), !,
	negate(E, NE),
	\+ member(NE, Pi),
	insert(E, Ni, NiE),
	% append(Pi, [E], PiE),
	produce_context(O, Pi<>NiE, L<>EE).

insert_abducible(A, I, O) :-
	(mode(table); mode(vneg)),
	negate(A, NA), \+ member(NA, I),
	\+ member(A, I), !, append(I, [A], O).
insert_abducible(A, I, I) :-
	(mode(table); mode(vneg)),
	negate(A, NA), \+ member(NA, I), member(A,I), !.
	
insert_abducible(not A, Pos<>Neg, Pos<>O) :-
	mode(split),
	negate(A, NA), \+ member(NA, Pos),
	\+ member(A, Neg), !, insert(not A, Neg, O).
insert_abducible(not A, Pos<>Neg, Pos<>Neg) :-
	mode(split),
	negate(A, NA), \+ member(NA, Pos), 
	member(A, Neg), !.
insert_abducible(A, Pos<>Neg, O<>Neg) :-
	mode(split),
	negate(A, NA), \+ member(NA, Neg),
	\+ member(A, Pos), !, insert(A, Pos, O).
insert_abducible(A, Pos<>Neg, Pos<>Neg) :-
	mode(split),
	negate(A, NA), \+ member(NA, Neg), !.

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
	
inputGround([],[],[]) :- !.
inputGround([H|T],[H|T2],L) :-
	ground(H), !,
	inputGround(T,T2,L).
inputGround([H|T],L2,[H|T3]) :-
	\+ ground(H), !,
	inputGround(T,L2,T3).
	
subsets(P1<>N1,P2<>N2) :-
	mode(split), !,
	subsetReg(P1, P2),
	subsetReg(N1, N2).
subsets(X, Y) :-
	\+ mode(split), !,
	subsetReg(X, Y).
	
subsetReg([], _).
subsetReg([L|L1], L2):-
	member(L, L2),
	subsetReg(L1, L2).
	
genSubset([], []).
genSubset([E|Tail], [E|NTail]):-
	genSubset(Tail, NTail).
genSubset([_|Tail], NTail):-
	genSubset(Tail, NTail).

genNegList([],[]).
genNegList([H1|T1],[H2|T2]) :-
	negate(H2,H1),
	genNegList(T1,T2).
genNegList([H1|T1],[H1|T2]) :-
	genNegList(T1,T2).

% validate_negation([],_,_) :- !, false.
% validate_negation([L|L1], L2, O) :-
%	((member(L, L2), !, validate_negation(L1, L2, O)); 
%	(negateRest([L|L1],L2, O))).

% validate_negation(L1,L2,_) :-
% 	subset(L1, L2), !, false.
% validate_negation(L1,L2,O) :-
% 	negateRest(L1,L2, O).

not_false(I) :-
	forall(ic(X), validate_negation(X,I)).
	
validate_negation(L1,L2) :-
	\+ subset(L1, L2).

negateRest(L, L2, O) :-
	% negateAll(L, NotL), genSubset(NotL, Sub), Sub \= [], produce_context(O, L2, Sub).
	findall(Sub, (genNegList(Sub,L), Sub \= L), Subs), produce_contexts(O, L2, Subs).

produce_contexts(O, O, []).
produce_contexts(O, L2, [Sub|Subs]) :-
	produce_context(O1, L2, Sub),
	produce_contexts(Oo, O1, Subs).
produce_contexts(O, L2, [Sub|Subs]) :-
	\+ produce_context(_, L2, Sub),
	produce_contexts(O, L2, Subs).
	
negateAll([], []).
negateAll([H1|T1], [H2|T2]) :-
	negate(H1, H2),
	negateAll(T1, T2).
  
appendSump([], X, X).
appendSump([X|Y], Z, ['_'|W]) :- appendSump(Y,Z,W).

subset([], _).
subset([L|L1], L2):-
	member(L, L2),
	subset(L1, L2).
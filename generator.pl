% ---- Generator ---- %

maketest(N) :-
	number(N), 
	N > 0, !,
	generate_test(N).
maketest(_) :-
	write_ln(['invalid argument!']).

generate_test(Size) :-
	tell_generated_file(Size),
	findall(X, between(1, Size, X), Nums),
	generate_test_abds(Nums),
	generate_test_rules(Nums), nl,
	generate_test_q(Size),
	told.

tell_generated_file(Size) :-
	concat_atom(['SMGit/StudiMandiri/in/artif_', Size , '.ab'], Fab),
	tell(Fab).

generate_test_abds(SizeList) :-
	write_test_abds(SizeList).

generate_test_rules(SizeList) :-
	powerset(SizeList, Bodies),
	write_test_rules(Bodies).

generate_test_q(Nums) :-
	write_test_q(Nums).
% ---- End of generator ---- %

% ---- Menulis generator ---- %
write_test_abds(List) :-
	write('abds(['),
	write_test_abds_list(List),
	write(']).'),
	nl.

write_test_abds_list([Last|[]]) :- !,
	write_list(['a', Last, '/0']).
write_test_abds_list([H|T]) :-
	write_list(['a', H, '/0,']),
	write_test_abds_list(T).

write_test_rules([]) :- !.
write_test_rules([B|Bodies]) :-
	write_test_rule(B),
	nl,
	write_test_rules(Bodies).

write_test_rule([]) :- !.
write_test_rule(Body) :-
	write('p <- '),
	write_test_rule_body(Body).

write_test_rule_body([B|[]]) :- !,
	write_list(['a', B, '.']).
write_test_rule_body([B|BB]) :-
	write_list(['a', B, ',']),
	write_test_rule_body(BB).

write_test_q(1) :- !,
	write('q1 <- p.'),
	nl.
write_test_q(N) :-
	N1 is N - 1,
	write_list(['q', N, ' <- q', N1, ', p.' ]),
	nl,
	write_test_q(N1).

write_test_q_body(1) :-
	write('p.'),
	nl.
write_test_q_body(N) :-
	write('p, '),
	N1 is N - 1,
	write_test_q_body(N1).
% ---- End of menulis generator ---- %

% Menulis list
write_list([]).
write_list([H|T]) :- 
	write(H), 
	write_list(T).

write_ln(List) :- 
	write_list(List),
	nl.
	
subseq([], []).
subseq([], [_|_]).
subseq([X|Xs], [X|Ys] ) :- 
	subseq(Xs, Ys).
subseq([X|Xs], [_|Ys] ) :- 
	append(_, [X|Zs], Ys), 
	subseq(Xs, Zs).

powerset(X,Y) :- 
	bagof(S, subseq(S,X), Y).
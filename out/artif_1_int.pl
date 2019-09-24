q1_ab(A) :- 
    p([],A).
:- table q1_ab/1 as intern.
q1(B,C) :- 
    (q1_ab(D),produce_context(C,B,D)).
q1_star_1(E,E) :- 
    false.
q1_star_1(F,G) :- 
    dual(1,q1,F,G).
not_q1(F,G) :- 
    (true,q1_star_1(F,G)).

p_ab([a1]).
:- table p_ab/1 as intern.
p(H,I) :- 
    (p_ab(J),produce_context(I,H,J)).
p_star_1(K,K) :- 
    false.
p_star_1(L,M) :- 
    dual(1,p,L,M).
not_p(L,M) :- 
    (true,p_star_1(L,M)).

not_false(N,N).

a1(O,P) :- 
    insert_abducible(a1,O,P).
a1_star(Q,R) :- 
    insert_abducible(not a1,Q,R).

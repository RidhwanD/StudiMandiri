:- import intern_term/2 from machine.
q1_ab(A) :- 
    p([],A).
:- table q1_ab/1.
q1(B,C) :- 
    (q1_ab(D),produce_context(C,B,D)).
q1_star_1(E,E) :- 
    false.
q1_star_1(F,G) :- 
    dual(1,q1,F,G).
not_q1(F,G) :- 
    (true,q1_star_1(F,G)).

q2_ab(H) :- 
    (q1([],I),p(I,H)).
:- table q2_ab/1.
q2(J,K) :- 
    (q2_ab(L),produce_context(K,J,L)).
q2_star_1(M,M) :- 
    false.
q2_star_1(N,O) :- 
    dual(1,q2,N,O).
not_q2(N,O) :- 
    (true,q2_star_1(N,O)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a2]).
:- table p_ab/1.
p(P,Q) :- 
    (p_ab(R),produce_context(Q,P,R)).
p_star_1(S,S) :- 
    false.
p_star_1(T,U) :- 
    dual(1,p,T,U).
p_star_2(V,V) :- 
    false.
p_star_2(U,W) :- 
    dual(2,p,U,W).
p_star_3(X,X) :- 
    false.
p_star_3(W,Y) :- 
    dual(3,p,W,Y).
not_p(T,Y) :- 
    (true,p_star_1(T,U),true,p_star_2(U,W),true,p_star_3(W,Y)).

not_false(Z,Z).

a1(A1,B1) :- 
    insert_abducible(a1,A1,B1).
a1_star(C1,D1) :- 
    insert_abducible(not a1,C1,D1).
a2(E1,F1) :- 
    insert_abducible(a2,E1,F1).
a2_star(G1,H1) :- 
    insert_abducible(not a2,G1,H1).

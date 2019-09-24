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

q3_ab(P) :- 
    (q2([],Q),p(Q,P)).
:- table q3_ab/1.
q3(R,S) :- 
    (q3_ab(T),produce_context(S,R,T)).
q3_star_1(U,U) :- 
    false.
q3_star_1(V,W) :- 
    dual(1,q3,V,W).
not_q3(V,W) :- 
    (true,q3_star_1(V,W)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a3]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a3]).
:- table p_ab/1.
p(X,Y) :- 
    (p_ab(Z),produce_context(Y,X,Z)).
p_star_1(A1,A1) :- 
    false.
p_star_1(B1,C1) :- 
    dual(1,p,B1,C1).
p_star_2(D1,D1) :- 
    false.
p_star_2(C1,E1) :- 
    dual(2,p,C1,E1).
p_star_3(F1,F1) :- 
    false.
p_star_3(E1,G1) :- 
    dual(3,p,E1,G1).
p_star_4(H1,H1) :- 
    false.
p_star_4(G1,I1) :- 
    dual(4,p,G1,I1).
p_star_5(J1,J1) :- 
    false.
p_star_5(I1,K1) :- 
    dual(5,p,I1,K1).
p_star_6(L1,L1) :- 
    false.
p_star_6(K1,M1) :- 
    dual(6,p,K1,M1).
p_star_7(N1,N1) :- 
    false.
p_star_7(M1,O1) :- 
    dual(7,p,M1,O1).
not_p(B1,O1) :- 
    (true,p_star_1(B1,C1),true,p_star_2(C1,E1),true,p_star_3(E1,G1),true,p_star_4(G1,I1),true,p_star_5(I1,K1),true,p_star_6(K1,M1),true,p_star_7(M1,O1)).

not_false(P1,P1).

a1(Q1,R1) :- 
    insert_abducible(a1,Q1,R1).
a1_star(S1,T1) :- 
    insert_abducible(not a1,S1,T1).
a2(U1,V1) :- 
    insert_abducible(a2,U1,V1).
a2_star(W1,X1) :- 
    insert_abducible(not a2,W1,X1).
a3(Y1,Z1) :- 
    insert_abducible(a3,Y1,Z1).
a3_star(A2,B2) :- 
    insert_abducible(not a3,A2,B2).

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

q4_ab(X) :- 
    (q3([],Y),p(Y,X)).
:- table q4_ab/1.
q4(Z,A1) :- 
    (q4_ab(B1),produce_context(A1,Z,B1)).
q4_star_1(C1,C1) :- 
    false.
q4_star_1(D1,E1) :- 
    dual(1,q4,D1,E1).
not_q4(D1,E1) :- 
    (true,q4_star_1(D1,E1)).

q5_ab(F1) :- 
    (q4([],G1),p(G1,F1)).
:- table q5_ab/1.
q5(H1,I1) :- 
    (q5_ab(J1),produce_context(I1,H1,J1)).
q5_star_1(K1,K1) :- 
    false.
q5_star_1(L1,M1) :- 
    dual(1,q5,L1,M1).
not_q5(L1,M1) :- 
    (true,q5_star_1(L1,M1)).

q6_ab(N1) :- 
    (q5([],O1),p(O1,N1)).
:- table q6_ab/1.
q6(P1,Q1) :- 
    (q6_ab(R1),produce_context(Q1,P1,R1)).
q6_star_1(S1,S1) :- 
    false.
q6_star_1(T1,U1) :- 
    dual(1,q6,T1,U1).
not_q6(T1,U1) :- 
    (true,q6_star_1(T1,U1)).

q7_ab(V1) :- 
    (q6([],W1),p(W1,V1)).
:- table q7_ab/1.
q7(X1,Y1) :- 
    (q7_ab(Z1),produce_context(Y1,X1,Z1)).
q7_star_1(A2,A2) :- 
    false.
q7_star_1(B2,C2) :- 
    dual(1,q7,B2,C2).
not_q7(B2,C2) :- 
    (true,q7_star_1(B2,C2)).

q8_ab(D2) :- 
    (q7([],E2),p(E2,D2)).
:- table q8_ab/1.
q8(F2,G2) :- 
    (q8_ab(H2),produce_context(G2,F2,H2)).
q8_star_1(I2,I2) :- 
    false.
q8_star_1(J2,K2) :- 
    dual(1,q8,J2,K2).
not_q8(J2,K2) :- 
    (true,q8_star_1(J2,K2)).

q9_ab(L2) :- 
    (q8([],M2),p(M2,L2)).
:- table q9_ab/1.
q9(N2,O2) :- 
    (q9_ab(P2),produce_context(O2,N2,P2)).
q9_star_1(Q2,Q2) :- 
    false.
q9_star_1(R2,S2) :- 
    dual(1,q9,R2,S2).
not_q9(R2,S2) :- 
    (true,q9_star_1(R2,S2)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a4,a5,a6]).
p_ab([a1,a2,a3,a4,a5,a6,a7]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a8]).
p_ab([a1,a2,a3,a4,a5,a6,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a9]).
p_ab([a1,a2,a3,a4,a5,a7]).
p_ab([a1,a2,a3,a4,a5,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a7,a9]).
p_ab([a1,a2,a3,a4,a5,a8]).
p_ab([a1,a2,a3,a4,a5,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a9]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a6,a7]).
p_ab([a1,a2,a3,a4,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a6,a7,a9]).
p_ab([a1,a2,a3,a4,a6,a8]).
p_ab([a1,a2,a3,a4,a6,a8,a9]).
p_ab([a1,a2,a3,a4,a6,a9]).
p_ab([a1,a2,a3,a4,a7]).
p_ab([a1,a2,a3,a4,a7,a8]).
p_ab([a1,a2,a3,a4,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a7,a9]).
p_ab([a1,a2,a3,a4,a8]).
p_ab([a1,a2,a3,a4,a8,a9]).
p_ab([a1,a2,a3,a4,a9]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5,a6,a7]).
p_ab([a1,a2,a3,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a5,a6,a7,a9]).
p_ab([a1,a2,a3,a5,a6,a8]).
p_ab([a1,a2,a3,a5,a6,a8,a9]).
p_ab([a1,a2,a3,a5,a6,a9]).
p_ab([a1,a2,a3,a5,a7]).
p_ab([a1,a2,a3,a5,a7,a8]).
p_ab([a1,a2,a3,a5,a7,a8,a9]).
p_ab([a1,a2,a3,a5,a7,a9]).
p_ab([a1,a2,a3,a5,a8]).
p_ab([a1,a2,a3,a5,a8,a9]).
p_ab([a1,a2,a3,a5,a9]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a6,a7]).
p_ab([a1,a2,a3,a6,a7,a8]).
p_ab([a1,a2,a3,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a6,a7,a9]).
p_ab([a1,a2,a3,a6,a8]).
p_ab([a1,a2,a3,a6,a8,a9]).
p_ab([a1,a2,a3,a6,a9]).
p_ab([a1,a2,a3,a7]).
p_ab([a1,a2,a3,a7,a8]).
p_ab([a1,a2,a3,a7,a8,a9]).
p_ab([a1,a2,a3,a7,a9]).
p_ab([a1,a2,a3,a8]).
p_ab([a1,a2,a3,a8,a9]).
p_ab([a1,a2,a3,a9]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5,a6,a7]).
p_ab([a1,a2,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a4,a5,a6,a7,a9]).
p_ab([a1,a2,a4,a5,a6,a8]).
p_ab([a1,a2,a4,a5,a6,a8,a9]).
p_ab([a1,a2,a4,a5,a6,a9]).
p_ab([a1,a2,a4,a5,a7]).
p_ab([a1,a2,a4,a5,a7,a8]).
p_ab([a1,a2,a4,a5,a7,a8,a9]).
p_ab([a1,a2,a4,a5,a7,a9]).
p_ab([a1,a2,a4,a5,a8]).
p_ab([a1,a2,a4,a5,a8,a9]).
p_ab([a1,a2,a4,a5,a9]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a6,a7]).
p_ab([a1,a2,a4,a6,a7,a8]).
p_ab([a1,a2,a4,a6,a7,a8,a9]).
p_ab([a1,a2,a4,a6,a7,a9]).
p_ab([a1,a2,a4,a6,a8]).
p_ab([a1,a2,a4,a6,a8,a9]).
p_ab([a1,a2,a4,a6,a9]).
p_ab([a1,a2,a4,a7]).
p_ab([a1,a2,a4,a7,a8]).
p_ab([a1,a2,a4,a7,a8,a9]).
p_ab([a1,a2,a4,a7,a9]).
p_ab([a1,a2,a4,a8]).
p_ab([a1,a2,a4,a8,a9]).
p_ab([a1,a2,a4,a9]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5,a6,a7]).
p_ab([a1,a2,a5,a6,a7,a8]).
p_ab([a1,a2,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a5,a6,a7,a9]).
p_ab([a1,a2,a5,a6,a8]).
p_ab([a1,a2,a5,a6,a8,a9]).
p_ab([a1,a2,a5,a6,a9]).
p_ab([a1,a2,a5,a7]).
p_ab([a1,a2,a5,a7,a8]).
p_ab([a1,a2,a5,a7,a8,a9]).
p_ab([a1,a2,a5,a7,a9]).
p_ab([a1,a2,a5,a8]).
p_ab([a1,a2,a5,a8,a9]).
p_ab([a1,a2,a5,a9]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a6,a7]).
p_ab([a1,a2,a6,a7,a8]).
p_ab([a1,a2,a6,a7,a8,a9]).
p_ab([a1,a2,a6,a7,a9]).
p_ab([a1,a2,a6,a8]).
p_ab([a1,a2,a6,a8,a9]).
p_ab([a1,a2,a6,a9]).
p_ab([a1,a2,a7]).
p_ab([a1,a2,a7,a8]).
p_ab([a1,a2,a7,a8,a9]).
p_ab([a1,a2,a7,a9]).
p_ab([a1,a2,a8]).
p_ab([a1,a2,a8,a9]).
p_ab([a1,a2,a9]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5,a6,a7]).
p_ab([a1,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a3,a4,a5,a6,a7,a9]).
p_ab([a1,a3,a4,a5,a6,a8]).
p_ab([a1,a3,a4,a5,a6,a8,a9]).
p_ab([a1,a3,a4,a5,a6,a9]).
p_ab([a1,a3,a4,a5,a7]).
p_ab([a1,a3,a4,a5,a7,a8]).
p_ab([a1,a3,a4,a5,a7,a8,a9]).
p_ab([a1,a3,a4,a5,a7,a9]).
p_ab([a1,a3,a4,a5,a8]).
p_ab([a1,a3,a4,a5,a8,a9]).
p_ab([a1,a3,a4,a5,a9]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a6,a7]).
p_ab([a1,a3,a4,a6,a7,a8]).
p_ab([a1,a3,a4,a6,a7,a8,a9]).
p_ab([a1,a3,a4,a6,a7,a9]).
p_ab([a1,a3,a4,a6,a8]).
p_ab([a1,a3,a4,a6,a8,a9]).
p_ab([a1,a3,a4,a6,a9]).
p_ab([a1,a3,a4,a7]).
p_ab([a1,a3,a4,a7,a8]).
p_ab([a1,a3,a4,a7,a8,a9]).
p_ab([a1,a3,a4,a7,a9]).
p_ab([a1,a3,a4,a8]).
p_ab([a1,a3,a4,a8,a9]).
p_ab([a1,a3,a4,a9]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5,a6,a7]).
p_ab([a1,a3,a5,a6,a7,a8]).
p_ab([a1,a3,a5,a6,a7,a8,a9]).
p_ab([a1,a3,a5,a6,a7,a9]).
p_ab([a1,a3,a5,a6,a8]).
p_ab([a1,a3,a5,a6,a8,a9]).
p_ab([a1,a3,a5,a6,a9]).
p_ab([a1,a3,a5,a7]).
p_ab([a1,a3,a5,a7,a8]).
p_ab([a1,a3,a5,a7,a8,a9]).
p_ab([a1,a3,a5,a7,a9]).
p_ab([a1,a3,a5,a8]).
p_ab([a1,a3,a5,a8,a9]).
p_ab([a1,a3,a5,a9]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a6,a7]).
p_ab([a1,a3,a6,a7,a8]).
p_ab([a1,a3,a6,a7,a8,a9]).
p_ab([a1,a3,a6,a7,a9]).
p_ab([a1,a3,a6,a8]).
p_ab([a1,a3,a6,a8,a9]).
p_ab([a1,a3,a6,a9]).
p_ab([a1,a3,a7]).
p_ab([a1,a3,a7,a8]).
p_ab([a1,a3,a7,a8,a9]).
p_ab([a1,a3,a7,a9]).
p_ab([a1,a3,a8]).
p_ab([a1,a3,a8,a9]).
p_ab([a1,a3,a9]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5,a6,a7]).
p_ab([a1,a4,a5,a6,a7,a8]).
p_ab([a1,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a4,a5,a6,a7,a9]).
p_ab([a1,a4,a5,a6,a8]).
p_ab([a1,a4,a5,a6,a8,a9]).
p_ab([a1,a4,a5,a6,a9]).
p_ab([a1,a4,a5,a7]).
p_ab([a1,a4,a5,a7,a8]).
p_ab([a1,a4,a5,a7,a8,a9]).
p_ab([a1,a4,a5,a7,a9]).
p_ab([a1,a4,a5,a8]).
p_ab([a1,a4,a5,a8,a9]).
p_ab([a1,a4,a5,a9]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a6,a7]).
p_ab([a1,a4,a6,a7,a8]).
p_ab([a1,a4,a6,a7,a8,a9]).
p_ab([a1,a4,a6,a7,a9]).
p_ab([a1,a4,a6,a8]).
p_ab([a1,a4,a6,a8,a9]).
p_ab([a1,a4,a6,a9]).
p_ab([a1,a4,a7]).
p_ab([a1,a4,a7,a8]).
p_ab([a1,a4,a7,a8,a9]).
p_ab([a1,a4,a7,a9]).
p_ab([a1,a4,a8]).
p_ab([a1,a4,a8,a9]).
p_ab([a1,a4,a9]).
p_ab([a1,a5]).
p_ab([a1,a5,a6]).
p_ab([a1,a5,a6,a7]).
p_ab([a1,a5,a6,a7,a8]).
p_ab([a1,a5,a6,a7,a8,a9]).
p_ab([a1,a5,a6,a7,a9]).
p_ab([a1,a5,a6,a8]).
p_ab([a1,a5,a6,a8,a9]).
p_ab([a1,a5,a6,a9]).
p_ab([a1,a5,a7]).
p_ab([a1,a5,a7,a8]).
p_ab([a1,a5,a7,a8,a9]).
p_ab([a1,a5,a7,a9]).
p_ab([a1,a5,a8]).
p_ab([a1,a5,a8,a9]).
p_ab([a1,a5,a9]).
p_ab([a1,a6]).
p_ab([a1,a6,a7]).
p_ab([a1,a6,a7,a8]).
p_ab([a1,a6,a7,a8,a9]).
p_ab([a1,a6,a7,a9]).
p_ab([a1,a6,a8]).
p_ab([a1,a6,a8,a9]).
p_ab([a1,a6,a9]).
p_ab([a1,a7]).
p_ab([a1,a7,a8]).
p_ab([a1,a7,a8,a9]).
p_ab([a1,a7,a9]).
p_ab([a1,a8]).
p_ab([a1,a8,a9]).
p_ab([a1,a9]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5,a6,a7]).
p_ab([a2,a3,a4,a5,a6,a7,a8]).
p_ab([a2,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a2,a3,a4,a5,a6,a7,a9]).
p_ab([a2,a3,a4,a5,a6,a8]).
p_ab([a2,a3,a4,a5,a6,a8,a9]).
p_ab([a2,a3,a4,a5,a6,a9]).
p_ab([a2,a3,a4,a5,a7]).
p_ab([a2,a3,a4,a5,a7,a8]).
p_ab([a2,a3,a4,a5,a7,a8,a9]).
p_ab([a2,a3,a4,a5,a7,a9]).
p_ab([a2,a3,a4,a5,a8]).
p_ab([a2,a3,a4,a5,a8,a9]).
p_ab([a2,a3,a4,a5,a9]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a6,a7]).
p_ab([a2,a3,a4,a6,a7,a8]).
p_ab([a2,a3,a4,a6,a7,a8,a9]).
p_ab([a2,a3,a4,a6,a7,a9]).
p_ab([a2,a3,a4,a6,a8]).
p_ab([a2,a3,a4,a6,a8,a9]).
p_ab([a2,a3,a4,a6,a9]).
p_ab([a2,a3,a4,a7]).
p_ab([a2,a3,a4,a7,a8]).
p_ab([a2,a3,a4,a7,a8,a9]).
p_ab([a2,a3,a4,a7,a9]).
p_ab([a2,a3,a4,a8]).
p_ab([a2,a3,a4,a8,a9]).
p_ab([a2,a3,a4,a9]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5,a6,a7]).
p_ab([a2,a3,a5,a6,a7,a8]).
p_ab([a2,a3,a5,a6,a7,a8,a9]).
p_ab([a2,a3,a5,a6,a7,a9]).
p_ab([a2,a3,a5,a6,a8]).
p_ab([a2,a3,a5,a6,a8,a9]).
p_ab([a2,a3,a5,a6,a9]).
p_ab([a2,a3,a5,a7]).
p_ab([a2,a3,a5,a7,a8]).
p_ab([a2,a3,a5,a7,a8,a9]).
p_ab([a2,a3,a5,a7,a9]).
p_ab([a2,a3,a5,a8]).
p_ab([a2,a3,a5,a8,a9]).
p_ab([a2,a3,a5,a9]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a6,a7]).
p_ab([a2,a3,a6,a7,a8]).
p_ab([a2,a3,a6,a7,a8,a9]).
p_ab([a2,a3,a6,a7,a9]).
p_ab([a2,a3,a6,a8]).
p_ab([a2,a3,a6,a8,a9]).
p_ab([a2,a3,a6,a9]).
p_ab([a2,a3,a7]).
p_ab([a2,a3,a7,a8]).
p_ab([a2,a3,a7,a8,a9]).
p_ab([a2,a3,a7,a9]).
p_ab([a2,a3,a8]).
p_ab([a2,a3,a8,a9]).
p_ab([a2,a3,a9]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5,a6,a7]).
p_ab([a2,a4,a5,a6,a7,a8]).
p_ab([a2,a4,a5,a6,a7,a8,a9]).
p_ab([a2,a4,a5,a6,a7,a9]).
p_ab([a2,a4,a5,a6,a8]).
p_ab([a2,a4,a5,a6,a8,a9]).
p_ab([a2,a4,a5,a6,a9]).
p_ab([a2,a4,a5,a7]).
p_ab([a2,a4,a5,a7,a8]).
p_ab([a2,a4,a5,a7,a8,a9]).
p_ab([a2,a4,a5,a7,a9]).
p_ab([a2,a4,a5,a8]).
p_ab([a2,a4,a5,a8,a9]).
p_ab([a2,a4,a5,a9]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a6,a7]).
p_ab([a2,a4,a6,a7,a8]).
p_ab([a2,a4,a6,a7,a8,a9]).
p_ab([a2,a4,a6,a7,a9]).
p_ab([a2,a4,a6,a8]).
p_ab([a2,a4,a6,a8,a9]).
p_ab([a2,a4,a6,a9]).
p_ab([a2,a4,a7]).
p_ab([a2,a4,a7,a8]).
p_ab([a2,a4,a7,a8,a9]).
p_ab([a2,a4,a7,a9]).
p_ab([a2,a4,a8]).
p_ab([a2,a4,a8,a9]).
p_ab([a2,a4,a9]).
p_ab([a2,a5]).
p_ab([a2,a5,a6]).
p_ab([a2,a5,a6,a7]).
p_ab([a2,a5,a6,a7,a8]).
p_ab([a2,a5,a6,a7,a8,a9]).
p_ab([a2,a5,a6,a7,a9]).
p_ab([a2,a5,a6,a8]).
p_ab([a2,a5,a6,a8,a9]).
p_ab([a2,a5,a6,a9]).
p_ab([a2,a5,a7]).
p_ab([a2,a5,a7,a8]).
p_ab([a2,a5,a7,a8,a9]).
p_ab([a2,a5,a7,a9]).
p_ab([a2,a5,a8]).
p_ab([a2,a5,a8,a9]).
p_ab([a2,a5,a9]).
p_ab([a2,a6]).
p_ab([a2,a6,a7]).
p_ab([a2,a6,a7,a8]).
p_ab([a2,a6,a7,a8,a9]).
p_ab([a2,a6,a7,a9]).
p_ab([a2,a6,a8]).
p_ab([a2,a6,a8,a9]).
p_ab([a2,a6,a9]).
p_ab([a2,a7]).
p_ab([a2,a7,a8]).
p_ab([a2,a7,a8,a9]).
p_ab([a2,a7,a9]).
p_ab([a2,a8]).
p_ab([a2,a8,a9]).
p_ab([a2,a9]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5,a6,a7]).
p_ab([a3,a4,a5,a6,a7,a8]).
p_ab([a3,a4,a5,a6,a7,a8,a9]).
p_ab([a3,a4,a5,a6,a7,a9]).
p_ab([a3,a4,a5,a6,a8]).
p_ab([a3,a4,a5,a6,a8,a9]).
p_ab([a3,a4,a5,a6,a9]).
p_ab([a3,a4,a5,a7]).
p_ab([a3,a4,a5,a7,a8]).
p_ab([a3,a4,a5,a7,a8,a9]).
p_ab([a3,a4,a5,a7,a9]).
p_ab([a3,a4,a5,a8]).
p_ab([a3,a4,a5,a8,a9]).
p_ab([a3,a4,a5,a9]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a6,a7]).
p_ab([a3,a4,a6,a7,a8]).
p_ab([a3,a4,a6,a7,a8,a9]).
p_ab([a3,a4,a6,a7,a9]).
p_ab([a3,a4,a6,a8]).
p_ab([a3,a4,a6,a8,a9]).
p_ab([a3,a4,a6,a9]).
p_ab([a3,a4,a7]).
p_ab([a3,a4,a7,a8]).
p_ab([a3,a4,a7,a8,a9]).
p_ab([a3,a4,a7,a9]).
p_ab([a3,a4,a8]).
p_ab([a3,a4,a8,a9]).
p_ab([a3,a4,a9]).
p_ab([a3,a5]).
p_ab([a3,a5,a6]).
p_ab([a3,a5,a6,a7]).
p_ab([a3,a5,a6,a7,a8]).
p_ab([a3,a5,a6,a7,a8,a9]).
p_ab([a3,a5,a6,a7,a9]).
p_ab([a3,a5,a6,a8]).
p_ab([a3,a5,a6,a8,a9]).
p_ab([a3,a5,a6,a9]).
p_ab([a3,a5,a7]).
p_ab([a3,a5,a7,a8]).
p_ab([a3,a5,a7,a8,a9]).
p_ab([a3,a5,a7,a9]).
p_ab([a3,a5,a8]).
p_ab([a3,a5,a8,a9]).
p_ab([a3,a5,a9]).
p_ab([a3,a6]).
p_ab([a3,a6,a7]).
p_ab([a3,a6,a7,a8]).
p_ab([a3,a6,a7,a8,a9]).
p_ab([a3,a6,a7,a9]).
p_ab([a3,a6,a8]).
p_ab([a3,a6,a8,a9]).
p_ab([a3,a6,a9]).
p_ab([a3,a7]).
p_ab([a3,a7,a8]).
p_ab([a3,a7,a8,a9]).
p_ab([a3,a7,a9]).
p_ab([a3,a8]).
p_ab([a3,a8,a9]).
p_ab([a3,a9]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a4,a5,a6]).
p_ab([a4,a5,a6,a7]).
p_ab([a4,a5,a6,a7,a8]).
p_ab([a4,a5,a6,a7,a8,a9]).
p_ab([a4,a5,a6,a7,a9]).
p_ab([a4,a5,a6,a8]).
p_ab([a4,a5,a6,a8,a9]).
p_ab([a4,a5,a6,a9]).
p_ab([a4,a5,a7]).
p_ab([a4,a5,a7,a8]).
p_ab([a4,a5,a7,a8,a9]).
p_ab([a4,a5,a7,a9]).
p_ab([a4,a5,a8]).
p_ab([a4,a5,a8,a9]).
p_ab([a4,a5,a9]).
p_ab([a4,a6]).
p_ab([a4,a6,a7]).
p_ab([a4,a6,a7,a8]).
p_ab([a4,a6,a7,a8,a9]).
p_ab([a4,a6,a7,a9]).
p_ab([a4,a6,a8]).
p_ab([a4,a6,a8,a9]).
p_ab([a4,a6,a9]).
p_ab([a4,a7]).
p_ab([a4,a7,a8]).
p_ab([a4,a7,a8,a9]).
p_ab([a4,a7,a9]).
p_ab([a4,a8]).
p_ab([a4,a8,a9]).
p_ab([a4,a9]).
p_ab([a5]).
p_ab([a5,a6]).
p_ab([a5,a6,a7]).
p_ab([a5,a6,a7,a8]).
p_ab([a5,a6,a7,a8,a9]).
p_ab([a5,a6,a7,a9]).
p_ab([a5,a6,a8]).
p_ab([a5,a6,a8,a9]).
p_ab([a5,a6,a9]).
p_ab([a5,a7]).
p_ab([a5,a7,a8]).
p_ab([a5,a7,a8,a9]).
p_ab([a5,a7,a9]).
p_ab([a5,a8]).
p_ab([a5,a8,a9]).
p_ab([a5,a9]).
p_ab([a6]).
p_ab([a6,a7]).
p_ab([a6,a7,a8]).
p_ab([a6,a7,a8,a9]).
p_ab([a6,a7,a9]).
p_ab([a6,a8]).
p_ab([a6,a8,a9]).
p_ab([a6,a9]).
p_ab([a7]).
p_ab([a7,a8]).
p_ab([a7,a8,a9]).
p_ab([a7,a9]).
p_ab([a8]).
p_ab([a8,a9]).
p_ab([a9]).
:- table p_ab/1.
p(T2,U2) :- 
    (p_ab(V2),produce_context(U2,T2,V2)).
p_star_1(W2,W2) :- 
    false.
p_star_1(X2,Y2) :- 
    dual(1,p,X2,Y2).
p_star_2(Z2,Z2) :- 
    false.
p_star_2(Y2,A3) :- 
    dual(2,p,Y2,A3).
p_star_3(B3,B3) :- 
    false.
p_star_3(A3,C3) :- 
    dual(3,p,A3,C3).
p_star_4(D3,D3) :- 
    false.
p_star_4(C3,E3) :- 
    dual(4,p,C3,E3).
p_star_5(F3,F3) :- 
    false.
p_star_5(E3,G3) :- 
    dual(5,p,E3,G3).
p_star_6(H3,H3) :- 
    false.
p_star_6(G3,I3) :- 
    dual(6,p,G3,I3).
p_star_7(J3,J3) :- 
    false.
p_star_7(I3,K3) :- 
    dual(7,p,I3,K3).
p_star_8(L3,L3) :- 
    false.
p_star_8(K3,M3) :- 
    dual(8,p,K3,M3).
p_star_9(N3,N3) :- 
    false.
p_star_9(M3,O3) :- 
    dual(9,p,M3,O3).
p_star_10(P3,P3) :- 
    false.
p_star_10(O3,Q3) :- 
    dual(10,p,O3,Q3).
p_star_11(R3,R3) :- 
    false.
p_star_11(Q3,S3) :- 
    dual(11,p,Q3,S3).
p_star_12(T3,T3) :- 
    false.
p_star_12(S3,U3) :- 
    dual(12,p,S3,U3).
p_star_13(V3,V3) :- 
    false.
p_star_13(U3,W3) :- 
    dual(13,p,U3,W3).
p_star_14(X3,X3) :- 
    false.
p_star_14(W3,Y3) :- 
    dual(14,p,W3,Y3).
p_star_15(Z3,Z3) :- 
    false.
p_star_15(Y3,A4) :- 
    dual(15,p,Y3,A4).
p_star_16(B4,B4) :- 
    false.
p_star_16(A4,C4) :- 
    dual(16,p,A4,C4).
p_star_17(D4,D4) :- 
    false.
p_star_17(C4,E4) :- 
    dual(17,p,C4,E4).
p_star_18(F4,F4) :- 
    false.
p_star_18(E4,G4) :- 
    dual(18,p,E4,G4).
p_star_19(H4,H4) :- 
    false.
p_star_19(G4,I4) :- 
    dual(19,p,G4,I4).
p_star_20(J4,J4) :- 
    false.
p_star_20(I4,K4) :- 
    dual(20,p,I4,K4).
p_star_21(L4,L4) :- 
    false.
p_star_21(K4,M4) :- 
    dual(21,p,K4,M4).
p_star_22(N4,N4) :- 
    false.
p_star_22(M4,O4) :- 
    dual(22,p,M4,O4).
p_star_23(P4,P4) :- 
    false.
p_star_23(O4,Q4) :- 
    dual(23,p,O4,Q4).
p_star_24(R4,R4) :- 
    false.
p_star_24(Q4,S4) :- 
    dual(24,p,Q4,S4).
p_star_25(T4,T4) :- 
    false.
p_star_25(S4,U4) :- 
    dual(25,p,S4,U4).
p_star_26(V4,V4) :- 
    false.
p_star_26(U4,W4) :- 
    dual(26,p,U4,W4).
p_star_27(X4,X4) :- 
    false.
p_star_27(W4,Y4) :- 
    dual(27,p,W4,Y4).
p_star_28(Z4,Z4) :- 
    false.
p_star_28(Y4,A5) :- 
    dual(28,p,Y4,A5).
p_star_29(B5,B5) :- 
    false.
p_star_29(A5,C5) :- 
    dual(29,p,A5,C5).
p_star_30(D5,D5) :- 
    false.
p_star_30(C5,E5) :- 
    dual(30,p,C5,E5).
p_star_31(F5,F5) :- 
    false.
p_star_31(E5,G5) :- 
    dual(31,p,E5,G5).
p_star_32(H5,H5) :- 
    false.
p_star_32(G5,I5) :- 
    dual(32,p,G5,I5).
p_star_33(J5,J5) :- 
    false.
p_star_33(I5,K5) :- 
    dual(33,p,I5,K5).
p_star_34(L5,L5) :- 
    false.
p_star_34(K5,M5) :- 
    dual(34,p,K5,M5).
p_star_35(N5,N5) :- 
    false.
p_star_35(M5,O5) :- 
    dual(35,p,M5,O5).
p_star_36(P5,P5) :- 
    false.
p_star_36(O5,Q5) :- 
    dual(36,p,O5,Q5).
p_star_37(R5,R5) :- 
    false.
p_star_37(Q5,S5) :- 
    dual(37,p,Q5,S5).
p_star_38(T5,T5) :- 
    false.
p_star_38(S5,U5) :- 
    dual(38,p,S5,U5).
p_star_39(V5,V5) :- 
    false.
p_star_39(U5,W5) :- 
    dual(39,p,U5,W5).
p_star_40(X5,X5) :- 
    false.
p_star_40(W5,Y5) :- 
    dual(40,p,W5,Y5).
p_star_41(Z5,Z5) :- 
    false.
p_star_41(Y5,A6) :- 
    dual(41,p,Y5,A6).
p_star_42(B6,B6) :- 
    false.
p_star_42(A6,C6) :- 
    dual(42,p,A6,C6).
p_star_43(D6,D6) :- 
    false.
p_star_43(C6,E6) :- 
    dual(43,p,C6,E6).
p_star_44(F6,F6) :- 
    false.
p_star_44(E6,G6) :- 
    dual(44,p,E6,G6).
p_star_45(H6,H6) :- 
    false.
p_star_45(G6,I6) :- 
    dual(45,p,G6,I6).
p_star_46(J6,J6) :- 
    false.
p_star_46(I6,K6) :- 
    dual(46,p,I6,K6).
p_star_47(L6,L6) :- 
    false.
p_star_47(K6,M6) :- 
    dual(47,p,K6,M6).
p_star_48(N6,N6) :- 
    false.
p_star_48(M6,O6) :- 
    dual(48,p,M6,O6).
p_star_49(P6,P6) :- 
    false.
p_star_49(O6,Q6) :- 
    dual(49,p,O6,Q6).
p_star_50(R6,R6) :- 
    false.
p_star_50(Q6,S6) :- 
    dual(50,p,Q6,S6).
p_star_51(T6,T6) :- 
    false.
p_star_51(S6,U6) :- 
    dual(51,p,S6,U6).
p_star_52(V6,V6) :- 
    false.
p_star_52(U6,W6) :- 
    dual(52,p,U6,W6).
p_star_53(X6,X6) :- 
    false.
p_star_53(W6,Y6) :- 
    dual(53,p,W6,Y6).
p_star_54(Z6,Z6) :- 
    false.
p_star_54(Y6,A7) :- 
    dual(54,p,Y6,A7).
p_star_55(B7,B7) :- 
    false.
p_star_55(A7,C7) :- 
    dual(55,p,A7,C7).
p_star_56(D7,D7) :- 
    false.
p_star_56(C7,E7) :- 
    dual(56,p,C7,E7).
p_star_57(F7,F7) :- 
    false.
p_star_57(E7,G7) :- 
    dual(57,p,E7,G7).
p_star_58(H7,H7) :- 
    false.
p_star_58(G7,I7) :- 
    dual(58,p,G7,I7).
p_star_59(J7,J7) :- 
    false.
p_star_59(I7,K7) :- 
    dual(59,p,I7,K7).
p_star_60(L7,L7) :- 
    false.
p_star_60(K7,M7) :- 
    dual(60,p,K7,M7).
p_star_61(N7,N7) :- 
    false.
p_star_61(M7,O7) :- 
    dual(61,p,M7,O7).
p_star_62(P7,P7) :- 
    false.
p_star_62(O7,Q7) :- 
    dual(62,p,O7,Q7).
p_star_63(R7,R7) :- 
    false.
p_star_63(Q7,S7) :- 
    dual(63,p,Q7,S7).
p_star_64(T7,T7) :- 
    false.
p_star_64(S7,U7) :- 
    dual(64,p,S7,U7).
p_star_65(V7,V7) :- 
    false.
p_star_65(U7,W7) :- 
    dual(65,p,U7,W7).
p_star_66(X7,X7) :- 
    false.
p_star_66(W7,Y7) :- 
    dual(66,p,W7,Y7).
p_star_67(Z7,Z7) :- 
    false.
p_star_67(Y7,A8) :- 
    dual(67,p,Y7,A8).
p_star_68(B8,B8) :- 
    false.
p_star_68(A8,C8) :- 
    dual(68,p,A8,C8).
p_star_69(D8,D8) :- 
    false.
p_star_69(C8,E8) :- 
    dual(69,p,C8,E8).
p_star_70(F8,F8) :- 
    false.
p_star_70(E8,G8) :- 
    dual(70,p,E8,G8).
p_star_71(H8,H8) :- 
    false.
p_star_71(G8,I8) :- 
    dual(71,p,G8,I8).
p_star_72(J8,J8) :- 
    false.
p_star_72(I8,K8) :- 
    dual(72,p,I8,K8).
p_star_73(L8,L8) :- 
    false.
p_star_73(K8,M8) :- 
    dual(73,p,K8,M8).
p_star_74(N8,N8) :- 
    false.
p_star_74(M8,O8) :- 
    dual(74,p,M8,O8).
p_star_75(P8,P8) :- 
    false.
p_star_75(O8,Q8) :- 
    dual(75,p,O8,Q8).
p_star_76(R8,R8) :- 
    false.
p_star_76(Q8,S8) :- 
    dual(76,p,Q8,S8).
p_star_77(T8,T8) :- 
    false.
p_star_77(S8,U8) :- 
    dual(77,p,S8,U8).
p_star_78(V8,V8) :- 
    false.
p_star_78(U8,W8) :- 
    dual(78,p,U8,W8).
p_star_79(X8,X8) :- 
    false.
p_star_79(W8,Y8) :- 
    dual(79,p,W8,Y8).
p_star_80(Z8,Z8) :- 
    false.
p_star_80(Y8,A9) :- 
    dual(80,p,Y8,A9).
p_star_81(B9,B9) :- 
    false.
p_star_81(A9,C9) :- 
    dual(81,p,A9,C9).
p_star_82(D9,D9) :- 
    false.
p_star_82(C9,E9) :- 
    dual(82,p,C9,E9).
p_star_83(F9,F9) :- 
    false.
p_star_83(E9,G9) :- 
    dual(83,p,E9,G9).
p_star_84(H9,H9) :- 
    false.
p_star_84(G9,I9) :- 
    dual(84,p,G9,I9).
p_star_85(J9,J9) :- 
    false.
p_star_85(I9,K9) :- 
    dual(85,p,I9,K9).
p_star_86(L9,L9) :- 
    false.
p_star_86(K9,M9) :- 
    dual(86,p,K9,M9).
p_star_87(N9,N9) :- 
    false.
p_star_87(M9,O9) :- 
    dual(87,p,M9,O9).
p_star_88(P9,P9) :- 
    false.
p_star_88(O9,Q9) :- 
    dual(88,p,O9,Q9).
p_star_89(R9,R9) :- 
    false.
p_star_89(Q9,S9) :- 
    dual(89,p,Q9,S9).
p_star_90(T9,T9) :- 
    false.
p_star_90(S9,U9) :- 
    dual(90,p,S9,U9).
p_star_91(V9,V9) :- 
    false.
p_star_91(U9,W9) :- 
    dual(91,p,U9,W9).
p_star_92(X9,X9) :- 
    false.
p_star_92(W9,Y9) :- 
    dual(92,p,W9,Y9).
p_star_93(Z9,Z9) :- 
    false.
p_star_93(Y9,A10) :- 
    dual(93,p,Y9,A10).
p_star_94(B10,B10) :- 
    false.
p_star_94(A10,C10) :- 
    dual(94,p,A10,C10).
p_star_95(D10,D10) :- 
    false.
p_star_95(C10,E10) :- 
    dual(95,p,C10,E10).
p_star_96(F10,F10) :- 
    false.
p_star_96(E10,G10) :- 
    dual(96,p,E10,G10).
p_star_97(H10,H10) :- 
    false.
p_star_97(G10,I10) :- 
    dual(97,p,G10,I10).
p_star_98(J10,J10) :- 
    false.
p_star_98(I10,K10) :- 
    dual(98,p,I10,K10).
p_star_99(L10,L10) :- 
    false.
p_star_99(K10,M10) :- 
    dual(99,p,K10,M10).
p_star_100(N10,N10) :- 
    false.
p_star_100(M10,O10) :- 
    dual(100,p,M10,O10).
p_star_101(P10,P10) :- 
    false.
p_star_101(O10,Q10) :- 
    dual(101,p,O10,Q10).
p_star_102(R10,R10) :- 
    false.
p_star_102(Q10,S10) :- 
    dual(102,p,Q10,S10).
p_star_103(T10,T10) :- 
    false.
p_star_103(S10,U10) :- 
    dual(103,p,S10,U10).
p_star_104(V10,V10) :- 
    false.
p_star_104(U10,W10) :- 
    dual(104,p,U10,W10).
p_star_105(X10,X10) :- 
    false.
p_star_105(W10,Y10) :- 
    dual(105,p,W10,Y10).
p_star_106(Z10,Z10) :- 
    false.
p_star_106(Y10,A11) :- 
    dual(106,p,Y10,A11).
p_star_107(B11,B11) :- 
    false.
p_star_107(A11,C11) :- 
    dual(107,p,A11,C11).
p_star_108(D11,D11) :- 
    false.
p_star_108(C11,E11) :- 
    dual(108,p,C11,E11).
p_star_109(F11,F11) :- 
    false.
p_star_109(E11,G11) :- 
    dual(109,p,E11,G11).
p_star_110(H11,H11) :- 
    false.
p_star_110(G11,I11) :- 
    dual(110,p,G11,I11).
p_star_111(J11,J11) :- 
    false.
p_star_111(I11,K11) :- 
    dual(111,p,I11,K11).
p_star_112(L11,L11) :- 
    false.
p_star_112(K11,M11) :- 
    dual(112,p,K11,M11).
p_star_113(N11,N11) :- 
    false.
p_star_113(M11,O11) :- 
    dual(113,p,M11,O11).
p_star_114(P11,P11) :- 
    false.
p_star_114(O11,Q11) :- 
    dual(114,p,O11,Q11).
p_star_115(R11,R11) :- 
    false.
p_star_115(Q11,S11) :- 
    dual(115,p,Q11,S11).
p_star_116(T11,T11) :- 
    false.
p_star_116(S11,U11) :- 
    dual(116,p,S11,U11).
p_star_117(V11,V11) :- 
    false.
p_star_117(U11,W11) :- 
    dual(117,p,U11,W11).
p_star_118(X11,X11) :- 
    false.
p_star_118(W11,Y11) :- 
    dual(118,p,W11,Y11).
p_star_119(Z11,Z11) :- 
    false.
p_star_119(Y11,A12) :- 
    dual(119,p,Y11,A12).
p_star_120(B12,B12) :- 
    false.
p_star_120(A12,C12) :- 
    dual(120,p,A12,C12).
p_star_121(D12,D12) :- 
    false.
p_star_121(C12,E12) :- 
    dual(121,p,C12,E12).
p_star_122(F12,F12) :- 
    false.
p_star_122(E12,G12) :- 
    dual(122,p,E12,G12).
p_star_123(H12,H12) :- 
    false.
p_star_123(G12,I12) :- 
    dual(123,p,G12,I12).
p_star_124(J12,J12) :- 
    false.
p_star_124(I12,K12) :- 
    dual(124,p,I12,K12).
p_star_125(L12,L12) :- 
    false.
p_star_125(K12,M12) :- 
    dual(125,p,K12,M12).
p_star_126(N12,N12) :- 
    false.
p_star_126(M12,O12) :- 
    dual(126,p,M12,O12).
p_star_127(P12,P12) :- 
    false.
p_star_127(O12,Q12) :- 
    dual(127,p,O12,Q12).
p_star_128(R12,R12) :- 
    false.
p_star_128(Q12,S12) :- 
    dual(128,p,Q12,S12).
p_star_129(T12,T12) :- 
    false.
p_star_129(S12,U12) :- 
    dual(129,p,S12,U12).
p_star_130(V12,V12) :- 
    false.
p_star_130(U12,W12) :- 
    dual(130,p,U12,W12).
p_star_131(X12,X12) :- 
    false.
p_star_131(W12,Y12) :- 
    dual(131,p,W12,Y12).
p_star_132(Z12,Z12) :- 
    false.
p_star_132(Y12,A13) :- 
    dual(132,p,Y12,A13).
p_star_133(B13,B13) :- 
    false.
p_star_133(A13,C13) :- 
    dual(133,p,A13,C13).
p_star_134(D13,D13) :- 
    false.
p_star_134(C13,E13) :- 
    dual(134,p,C13,E13).
p_star_135(F13,F13) :- 
    false.
p_star_135(E13,G13) :- 
    dual(135,p,E13,G13).
p_star_136(H13,H13) :- 
    false.
p_star_136(G13,I13) :- 
    dual(136,p,G13,I13).
p_star_137(J13,J13) :- 
    false.
p_star_137(I13,K13) :- 
    dual(137,p,I13,K13).
p_star_138(L13,L13) :- 
    false.
p_star_138(K13,M13) :- 
    dual(138,p,K13,M13).
p_star_139(N13,N13) :- 
    false.
p_star_139(M13,O13) :- 
    dual(139,p,M13,O13).
p_star_140(P13,P13) :- 
    false.
p_star_140(O13,Q13) :- 
    dual(140,p,O13,Q13).
p_star_141(R13,R13) :- 
    false.
p_star_141(Q13,S13) :- 
    dual(141,p,Q13,S13).
p_star_142(T13,T13) :- 
    false.
p_star_142(S13,U13) :- 
    dual(142,p,S13,U13).
p_star_143(V13,V13) :- 
    false.
p_star_143(U13,W13) :- 
    dual(143,p,U13,W13).
p_star_144(X13,X13) :- 
    false.
p_star_144(W13,Y13) :- 
    dual(144,p,W13,Y13).
p_star_145(Z13,Z13) :- 
    false.
p_star_145(Y13,A14) :- 
    dual(145,p,Y13,A14).
p_star_146(B14,B14) :- 
    false.
p_star_146(A14,C14) :- 
    dual(146,p,A14,C14).
p_star_147(D14,D14) :- 
    false.
p_star_147(C14,E14) :- 
    dual(147,p,C14,E14).
p_star_148(F14,F14) :- 
    false.
p_star_148(E14,G14) :- 
    dual(148,p,E14,G14).
p_star_149(H14,H14) :- 
    false.
p_star_149(G14,I14) :- 
    dual(149,p,G14,I14).
p_star_150(J14,J14) :- 
    false.
p_star_150(I14,K14) :- 
    dual(150,p,I14,K14).
p_star_151(L14,L14) :- 
    false.
p_star_151(K14,M14) :- 
    dual(151,p,K14,M14).
p_star_152(N14,N14) :- 
    false.
p_star_152(M14,O14) :- 
    dual(152,p,M14,O14).
p_star_153(P14,P14) :- 
    false.
p_star_153(O14,Q14) :- 
    dual(153,p,O14,Q14).
p_star_154(R14,R14) :- 
    false.
p_star_154(Q14,S14) :- 
    dual(154,p,Q14,S14).
p_star_155(T14,T14) :- 
    false.
p_star_155(S14,U14) :- 
    dual(155,p,S14,U14).
p_star_156(V14,V14) :- 
    false.
p_star_156(U14,W14) :- 
    dual(156,p,U14,W14).
p_star_157(X14,X14) :- 
    false.
p_star_157(W14,Y14) :- 
    dual(157,p,W14,Y14).
p_star_158(Z14,Z14) :- 
    false.
p_star_158(Y14,A15) :- 
    dual(158,p,Y14,A15).
p_star_159(B15,B15) :- 
    false.
p_star_159(A15,C15) :- 
    dual(159,p,A15,C15).
p_star_160(D15,D15) :- 
    false.
p_star_160(C15,E15) :- 
    dual(160,p,C15,E15).
p_star_161(F15,F15) :- 
    false.
p_star_161(E15,G15) :- 
    dual(161,p,E15,G15).
p_star_162(H15,H15) :- 
    false.
p_star_162(G15,I15) :- 
    dual(162,p,G15,I15).
p_star_163(J15,J15) :- 
    false.
p_star_163(I15,K15) :- 
    dual(163,p,I15,K15).
p_star_164(L15,L15) :- 
    false.
p_star_164(K15,M15) :- 
    dual(164,p,K15,M15).
p_star_165(N15,N15) :- 
    false.
p_star_165(M15,O15) :- 
    dual(165,p,M15,O15).
p_star_166(P15,P15) :- 
    false.
p_star_166(O15,Q15) :- 
    dual(166,p,O15,Q15).
p_star_167(R15,R15) :- 
    false.
p_star_167(Q15,S15) :- 
    dual(167,p,Q15,S15).
p_star_168(T15,T15) :- 
    false.
p_star_168(S15,U15) :- 
    dual(168,p,S15,U15).
p_star_169(V15,V15) :- 
    false.
p_star_169(U15,W15) :- 
    dual(169,p,U15,W15).
p_star_170(X15,X15) :- 
    false.
p_star_170(W15,Y15) :- 
    dual(170,p,W15,Y15).
p_star_171(Z15,Z15) :- 
    false.
p_star_171(Y15,A16) :- 
    dual(171,p,Y15,A16).
p_star_172(B16,B16) :- 
    false.
p_star_172(A16,C16) :- 
    dual(172,p,A16,C16).
p_star_173(D16,D16) :- 
    false.
p_star_173(C16,E16) :- 
    dual(173,p,C16,E16).
p_star_174(F16,F16) :- 
    false.
p_star_174(E16,G16) :- 
    dual(174,p,E16,G16).
p_star_175(H16,H16) :- 
    false.
p_star_175(G16,I16) :- 
    dual(175,p,G16,I16).
p_star_176(J16,J16) :- 
    false.
p_star_176(I16,K16) :- 
    dual(176,p,I16,K16).
p_star_177(L16,L16) :- 
    false.
p_star_177(K16,M16) :- 
    dual(177,p,K16,M16).
p_star_178(N16,N16) :- 
    false.
p_star_178(M16,O16) :- 
    dual(178,p,M16,O16).
p_star_179(P16,P16) :- 
    false.
p_star_179(O16,Q16) :- 
    dual(179,p,O16,Q16).
p_star_180(R16,R16) :- 
    false.
p_star_180(Q16,S16) :- 
    dual(180,p,Q16,S16).
p_star_181(T16,T16) :- 
    false.
p_star_181(S16,U16) :- 
    dual(181,p,S16,U16).
p_star_182(V16,V16) :- 
    false.
p_star_182(U16,W16) :- 
    dual(182,p,U16,W16).
p_star_183(X16,X16) :- 
    false.
p_star_183(W16,Y16) :- 
    dual(183,p,W16,Y16).
p_star_184(Z16,Z16) :- 
    false.
p_star_184(Y16,A17) :- 
    dual(184,p,Y16,A17).
p_star_185(B17,B17) :- 
    false.
p_star_185(A17,C17) :- 
    dual(185,p,A17,C17).
p_star_186(D17,D17) :- 
    false.
p_star_186(C17,E17) :- 
    dual(186,p,C17,E17).
p_star_187(F17,F17) :- 
    false.
p_star_187(E17,G17) :- 
    dual(187,p,E17,G17).
p_star_188(H17,H17) :- 
    false.
p_star_188(G17,I17) :- 
    dual(188,p,G17,I17).
p_star_189(J17,J17) :- 
    false.
p_star_189(I17,K17) :- 
    dual(189,p,I17,K17).
p_star_190(L17,L17) :- 
    false.
p_star_190(K17,M17) :- 
    dual(190,p,K17,M17).
p_star_191(N17,N17) :- 
    false.
p_star_191(M17,O17) :- 
    dual(191,p,M17,O17).
p_star_192(P17,P17) :- 
    false.
p_star_192(O17,Q17) :- 
    dual(192,p,O17,Q17).
p_star_193(R17,R17) :- 
    false.
p_star_193(Q17,S17) :- 
    dual(193,p,Q17,S17).
p_star_194(T17,T17) :- 
    false.
p_star_194(S17,U17) :- 
    dual(194,p,S17,U17).
p_star_195(V17,V17) :- 
    false.
p_star_195(U17,W17) :- 
    dual(195,p,U17,W17).
p_star_196(X17,X17) :- 
    false.
p_star_196(W17,Y17) :- 
    dual(196,p,W17,Y17).
p_star_197(Z17,Z17) :- 
    false.
p_star_197(Y17,A18) :- 
    dual(197,p,Y17,A18).
p_star_198(B18,B18) :- 
    false.
p_star_198(A18,C18) :- 
    dual(198,p,A18,C18).
p_star_199(D18,D18) :- 
    false.
p_star_199(C18,E18) :- 
    dual(199,p,C18,E18).
p_star_200(F18,F18) :- 
    false.
p_star_200(E18,G18) :- 
    dual(200,p,E18,G18).
p_star_201(H18,H18) :- 
    false.
p_star_201(G18,I18) :- 
    dual(201,p,G18,I18).
p_star_202(J18,J18) :- 
    false.
p_star_202(I18,K18) :- 
    dual(202,p,I18,K18).
p_star_203(L18,L18) :- 
    false.
p_star_203(K18,M18) :- 
    dual(203,p,K18,M18).
p_star_204(N18,N18) :- 
    false.
p_star_204(M18,O18) :- 
    dual(204,p,M18,O18).
p_star_205(P18,P18) :- 
    false.
p_star_205(O18,Q18) :- 
    dual(205,p,O18,Q18).
p_star_206(R18,R18) :- 
    false.
p_star_206(Q18,S18) :- 
    dual(206,p,Q18,S18).
p_star_207(T18,T18) :- 
    false.
p_star_207(S18,U18) :- 
    dual(207,p,S18,U18).
p_star_208(V18,V18) :- 
    false.
p_star_208(U18,W18) :- 
    dual(208,p,U18,W18).
p_star_209(X18,X18) :- 
    false.
p_star_209(W18,Y18) :- 
    dual(209,p,W18,Y18).
p_star_210(Z18,Z18) :- 
    false.
p_star_210(Y18,A19) :- 
    dual(210,p,Y18,A19).
p_star_211(B19,B19) :- 
    false.
p_star_211(A19,C19) :- 
    dual(211,p,A19,C19).
p_star_212(D19,D19) :- 
    false.
p_star_212(C19,E19) :- 
    dual(212,p,C19,E19).
p_star_213(F19,F19) :- 
    false.
p_star_213(E19,G19) :- 
    dual(213,p,E19,G19).
p_star_214(H19,H19) :- 
    false.
p_star_214(G19,I19) :- 
    dual(214,p,G19,I19).
p_star_215(J19,J19) :- 
    false.
p_star_215(I19,K19) :- 
    dual(215,p,I19,K19).
p_star_216(L19,L19) :- 
    false.
p_star_216(K19,M19) :- 
    dual(216,p,K19,M19).
p_star_217(N19,N19) :- 
    false.
p_star_217(M19,O19) :- 
    dual(217,p,M19,O19).
p_star_218(P19,P19) :- 
    false.
p_star_218(O19,Q19) :- 
    dual(218,p,O19,Q19).
p_star_219(R19,R19) :- 
    false.
p_star_219(Q19,S19) :- 
    dual(219,p,Q19,S19).
p_star_220(T19,T19) :- 
    false.
p_star_220(S19,U19) :- 
    dual(220,p,S19,U19).
p_star_221(V19,V19) :- 
    false.
p_star_221(U19,W19) :- 
    dual(221,p,U19,W19).
p_star_222(X19,X19) :- 
    false.
p_star_222(W19,Y19) :- 
    dual(222,p,W19,Y19).
p_star_223(Z19,Z19) :- 
    false.
p_star_223(Y19,A20) :- 
    dual(223,p,Y19,A20).
p_star_224(B20,B20) :- 
    false.
p_star_224(A20,C20) :- 
    dual(224,p,A20,C20).
p_star_225(D20,D20) :- 
    false.
p_star_225(C20,E20) :- 
    dual(225,p,C20,E20).
p_star_226(F20,F20) :- 
    false.
p_star_226(E20,G20) :- 
    dual(226,p,E20,G20).
p_star_227(H20,H20) :- 
    false.
p_star_227(G20,I20) :- 
    dual(227,p,G20,I20).
p_star_228(J20,J20) :- 
    false.
p_star_228(I20,K20) :- 
    dual(228,p,I20,K20).
p_star_229(L20,L20) :- 
    false.
p_star_229(K20,M20) :- 
    dual(229,p,K20,M20).
p_star_230(N20,N20) :- 
    false.
p_star_230(M20,O20) :- 
    dual(230,p,M20,O20).
p_star_231(P20,P20) :- 
    false.
p_star_231(O20,Q20) :- 
    dual(231,p,O20,Q20).
p_star_232(R20,R20) :- 
    false.
p_star_232(Q20,S20) :- 
    dual(232,p,Q20,S20).
p_star_233(T20,T20) :- 
    false.
p_star_233(S20,U20) :- 
    dual(233,p,S20,U20).
p_star_234(V20,V20) :- 
    false.
p_star_234(U20,W20) :- 
    dual(234,p,U20,W20).
p_star_235(X20,X20) :- 
    false.
p_star_235(W20,Y20) :- 
    dual(235,p,W20,Y20).
p_star_236(Z20,Z20) :- 
    false.
p_star_236(Y20,A21) :- 
    dual(236,p,Y20,A21).
p_star_237(B21,B21) :- 
    false.
p_star_237(A21,C21) :- 
    dual(237,p,A21,C21).
p_star_238(D21,D21) :- 
    false.
p_star_238(C21,E21) :- 
    dual(238,p,C21,E21).
p_star_239(F21,F21) :- 
    false.
p_star_239(E21,G21) :- 
    dual(239,p,E21,G21).
p_star_240(H21,H21) :- 
    false.
p_star_240(G21,I21) :- 
    dual(240,p,G21,I21).
p_star_241(J21,J21) :- 
    false.
p_star_241(I21,K21) :- 
    dual(241,p,I21,K21).
p_star_242(L21,L21) :- 
    false.
p_star_242(K21,M21) :- 
    dual(242,p,K21,M21).
p_star_243(N21,N21) :- 
    false.
p_star_243(M21,O21) :- 
    dual(243,p,M21,O21).
p_star_244(P21,P21) :- 
    false.
p_star_244(O21,Q21) :- 
    dual(244,p,O21,Q21).
p_star_245(R21,R21) :- 
    false.
p_star_245(Q21,S21) :- 
    dual(245,p,Q21,S21).
p_star_246(T21,T21) :- 
    false.
p_star_246(S21,U21) :- 
    dual(246,p,S21,U21).
p_star_247(V21,V21) :- 
    false.
p_star_247(U21,W21) :- 
    dual(247,p,U21,W21).
p_star_248(X21,X21) :- 
    false.
p_star_248(W21,Y21) :- 
    dual(248,p,W21,Y21).
p_star_249(Z21,Z21) :- 
    false.
p_star_249(Y21,A22) :- 
    dual(249,p,Y21,A22).
p_star_250(B22,B22) :- 
    false.
p_star_250(A22,C22) :- 
    dual(250,p,A22,C22).
p_star_251(D22,D22) :- 
    false.
p_star_251(C22,E22) :- 
    dual(251,p,C22,E22).
p_star_252(F22,F22) :- 
    false.
p_star_252(E22,G22) :- 
    dual(252,p,E22,G22).
p_star_253(H22,H22) :- 
    false.
p_star_253(G22,I22) :- 
    dual(253,p,G22,I22).
p_star_254(J22,J22) :- 
    false.
p_star_254(I22,K22) :- 
    dual(254,p,I22,K22).
p_star_255(L22,L22) :- 
    false.
p_star_255(K22,M22) :- 
    dual(255,p,K22,M22).
p_star_256(N22,N22) :- 
    false.
p_star_256(M22,O22) :- 
    dual(256,p,M22,O22).
p_star_257(P22,P22) :- 
    false.
p_star_257(O22,Q22) :- 
    dual(257,p,O22,Q22).
p_star_258(R22,R22) :- 
    false.
p_star_258(Q22,S22) :- 
    dual(258,p,Q22,S22).
p_star_259(T22,T22) :- 
    false.
p_star_259(S22,U22) :- 
    dual(259,p,S22,U22).
p_star_260(V22,V22) :- 
    false.
p_star_260(U22,W22) :- 
    dual(260,p,U22,W22).
p_star_261(X22,X22) :- 
    false.
p_star_261(W22,Y22) :- 
    dual(261,p,W22,Y22).
p_star_262(Z22,Z22) :- 
    false.
p_star_262(Y22,A23) :- 
    dual(262,p,Y22,A23).
p_star_263(B23,B23) :- 
    false.
p_star_263(A23,C23) :- 
    dual(263,p,A23,C23).
p_star_264(D23,D23) :- 
    false.
p_star_264(C23,E23) :- 
    dual(264,p,C23,E23).
p_star_265(F23,F23) :- 
    false.
p_star_265(E23,G23) :- 
    dual(265,p,E23,G23).
p_star_266(H23,H23) :- 
    false.
p_star_266(G23,I23) :- 
    dual(266,p,G23,I23).
p_star_267(J23,J23) :- 
    false.
p_star_267(I23,K23) :- 
    dual(267,p,I23,K23).
p_star_268(L23,L23) :- 
    false.
p_star_268(K23,M23) :- 
    dual(268,p,K23,M23).
p_star_269(N23,N23) :- 
    false.
p_star_269(M23,O23) :- 
    dual(269,p,M23,O23).
p_star_270(P23,P23) :- 
    false.
p_star_270(O23,Q23) :- 
    dual(270,p,O23,Q23).
p_star_271(R23,R23) :- 
    false.
p_star_271(Q23,S23) :- 
    dual(271,p,Q23,S23).
p_star_272(T23,T23) :- 
    false.
p_star_272(S23,U23) :- 
    dual(272,p,S23,U23).
p_star_273(V23,V23) :- 
    false.
p_star_273(U23,W23) :- 
    dual(273,p,U23,W23).
p_star_274(X23,X23) :- 
    false.
p_star_274(W23,Y23) :- 
    dual(274,p,W23,Y23).
p_star_275(Z23,Z23) :- 
    false.
p_star_275(Y23,A24) :- 
    dual(275,p,Y23,A24).
p_star_276(B24,B24) :- 
    false.
p_star_276(A24,C24) :- 
    dual(276,p,A24,C24).
p_star_277(D24,D24) :- 
    false.
p_star_277(C24,E24) :- 
    dual(277,p,C24,E24).
p_star_278(F24,F24) :- 
    false.
p_star_278(E24,G24) :- 
    dual(278,p,E24,G24).
p_star_279(H24,H24) :- 
    false.
p_star_279(G24,I24) :- 
    dual(279,p,G24,I24).
p_star_280(J24,J24) :- 
    false.
p_star_280(I24,K24) :- 
    dual(280,p,I24,K24).
p_star_281(L24,L24) :- 
    false.
p_star_281(K24,M24) :- 
    dual(281,p,K24,M24).
p_star_282(N24,N24) :- 
    false.
p_star_282(M24,O24) :- 
    dual(282,p,M24,O24).
p_star_283(P24,P24) :- 
    false.
p_star_283(O24,Q24) :- 
    dual(283,p,O24,Q24).
p_star_284(R24,R24) :- 
    false.
p_star_284(Q24,S24) :- 
    dual(284,p,Q24,S24).
p_star_285(T24,T24) :- 
    false.
p_star_285(S24,U24) :- 
    dual(285,p,S24,U24).
p_star_286(V24,V24) :- 
    false.
p_star_286(U24,W24) :- 
    dual(286,p,U24,W24).
p_star_287(X24,X24) :- 
    false.
p_star_287(W24,Y24) :- 
    dual(287,p,W24,Y24).
p_star_288(Z24,Z24) :- 
    false.
p_star_288(Y24,A25) :- 
    dual(288,p,Y24,A25).
p_star_289(B25,B25) :- 
    false.
p_star_289(A25,C25) :- 
    dual(289,p,A25,C25).
p_star_290(D25,D25) :- 
    false.
p_star_290(C25,E25) :- 
    dual(290,p,C25,E25).
p_star_291(F25,F25) :- 
    false.
p_star_291(E25,G25) :- 
    dual(291,p,E25,G25).
p_star_292(H25,H25) :- 
    false.
p_star_292(G25,I25) :- 
    dual(292,p,G25,I25).
p_star_293(J25,J25) :- 
    false.
p_star_293(I25,K25) :- 
    dual(293,p,I25,K25).
p_star_294(L25,L25) :- 
    false.
p_star_294(K25,M25) :- 
    dual(294,p,K25,M25).
p_star_295(N25,N25) :- 
    false.
p_star_295(M25,O25) :- 
    dual(295,p,M25,O25).
p_star_296(P25,P25) :- 
    false.
p_star_296(O25,Q25) :- 
    dual(296,p,O25,Q25).
p_star_297(R25,R25) :- 
    false.
p_star_297(Q25,S25) :- 
    dual(297,p,Q25,S25).
p_star_298(T25,T25) :- 
    false.
p_star_298(S25,U25) :- 
    dual(298,p,S25,U25).
p_star_299(V25,V25) :- 
    false.
p_star_299(U25,W25) :- 
    dual(299,p,U25,W25).
p_star_300(X25,X25) :- 
    false.
p_star_300(W25,Y25) :- 
    dual(300,p,W25,Y25).
p_star_301(Z25,Z25) :- 
    false.
p_star_301(Y25,A26) :- 
    dual(301,p,Y25,A26).
p_star_302(B26,B26) :- 
    false.
p_star_302(A26,C26) :- 
    dual(302,p,A26,C26).
p_star_303(D26,D26) :- 
    false.
p_star_303(C26,E26) :- 
    dual(303,p,C26,E26).
p_star_304(F26,F26) :- 
    false.
p_star_304(E26,G26) :- 
    dual(304,p,E26,G26).
p_star_305(H26,H26) :- 
    false.
p_star_305(G26,I26) :- 
    dual(305,p,G26,I26).
p_star_306(J26,J26) :- 
    false.
p_star_306(I26,K26) :- 
    dual(306,p,I26,K26).
p_star_307(L26,L26) :- 
    false.
p_star_307(K26,M26) :- 
    dual(307,p,K26,M26).
p_star_308(N26,N26) :- 
    false.
p_star_308(M26,O26) :- 
    dual(308,p,M26,O26).
p_star_309(P26,P26) :- 
    false.
p_star_309(O26,Q26) :- 
    dual(309,p,O26,Q26).
p_star_310(R26,R26) :- 
    false.
p_star_310(Q26,S26) :- 
    dual(310,p,Q26,S26).
p_star_311(T26,T26) :- 
    false.
p_star_311(S26,U26) :- 
    dual(311,p,S26,U26).
p_star_312(V26,V26) :- 
    false.
p_star_312(U26,W26) :- 
    dual(312,p,U26,W26).
p_star_313(X26,X26) :- 
    false.
p_star_313(W26,Y26) :- 
    dual(313,p,W26,Y26).
p_star_314(Z26,Z26) :- 
    false.
p_star_314(Y26,A27) :- 
    dual(314,p,Y26,A27).
p_star_315(B27,B27) :- 
    false.
p_star_315(A27,C27) :- 
    dual(315,p,A27,C27).
p_star_316(D27,D27) :- 
    false.
p_star_316(C27,E27) :- 
    dual(316,p,C27,E27).
p_star_317(F27,F27) :- 
    false.
p_star_317(E27,G27) :- 
    dual(317,p,E27,G27).
p_star_318(H27,H27) :- 
    false.
p_star_318(G27,I27) :- 
    dual(318,p,G27,I27).
p_star_319(J27,J27) :- 
    false.
p_star_319(I27,K27) :- 
    dual(319,p,I27,K27).
p_star_320(L27,L27) :- 
    false.
p_star_320(K27,M27) :- 
    dual(320,p,K27,M27).
p_star_321(N27,N27) :- 
    false.
p_star_321(M27,O27) :- 
    dual(321,p,M27,O27).
p_star_322(P27,P27) :- 
    false.
p_star_322(O27,Q27) :- 
    dual(322,p,O27,Q27).
p_star_323(R27,R27) :- 
    false.
p_star_323(Q27,S27) :- 
    dual(323,p,Q27,S27).
p_star_324(T27,T27) :- 
    false.
p_star_324(S27,U27) :- 
    dual(324,p,S27,U27).
p_star_325(V27,V27) :- 
    false.
p_star_325(U27,W27) :- 
    dual(325,p,U27,W27).
p_star_326(X27,X27) :- 
    false.
p_star_326(W27,Y27) :- 
    dual(326,p,W27,Y27).
p_star_327(Z27,Z27) :- 
    false.
p_star_327(Y27,A28) :- 
    dual(327,p,Y27,A28).
p_star_328(B28,B28) :- 
    false.
p_star_328(A28,C28) :- 
    dual(328,p,A28,C28).
p_star_329(D28,D28) :- 
    false.
p_star_329(C28,E28) :- 
    dual(329,p,C28,E28).
p_star_330(F28,F28) :- 
    false.
p_star_330(E28,G28) :- 
    dual(330,p,E28,G28).
p_star_331(H28,H28) :- 
    false.
p_star_331(G28,I28) :- 
    dual(331,p,G28,I28).
p_star_332(J28,J28) :- 
    false.
p_star_332(I28,K28) :- 
    dual(332,p,I28,K28).
p_star_333(L28,L28) :- 
    false.
p_star_333(K28,M28) :- 
    dual(333,p,K28,M28).
p_star_334(N28,N28) :- 
    false.
p_star_334(M28,O28) :- 
    dual(334,p,M28,O28).
p_star_335(P28,P28) :- 
    false.
p_star_335(O28,Q28) :- 
    dual(335,p,O28,Q28).
p_star_336(R28,R28) :- 
    false.
p_star_336(Q28,S28) :- 
    dual(336,p,Q28,S28).
p_star_337(T28,T28) :- 
    false.
p_star_337(S28,U28) :- 
    dual(337,p,S28,U28).
p_star_338(V28,V28) :- 
    false.
p_star_338(U28,W28) :- 
    dual(338,p,U28,W28).
p_star_339(X28,X28) :- 
    false.
p_star_339(W28,Y28) :- 
    dual(339,p,W28,Y28).
p_star_340(Z28,Z28) :- 
    false.
p_star_340(Y28,A29) :- 
    dual(340,p,Y28,A29).
p_star_341(B29,B29) :- 
    false.
p_star_341(A29,C29) :- 
    dual(341,p,A29,C29).
p_star_342(D29,D29) :- 
    false.
p_star_342(C29,E29) :- 
    dual(342,p,C29,E29).
p_star_343(F29,F29) :- 
    false.
p_star_343(E29,G29) :- 
    dual(343,p,E29,G29).
p_star_344(H29,H29) :- 
    false.
p_star_344(G29,I29) :- 
    dual(344,p,G29,I29).
p_star_345(J29,J29) :- 
    false.
p_star_345(I29,K29) :- 
    dual(345,p,I29,K29).
p_star_346(L29,L29) :- 
    false.
p_star_346(K29,M29) :- 
    dual(346,p,K29,M29).
p_star_347(N29,N29) :- 
    false.
p_star_347(M29,O29) :- 
    dual(347,p,M29,O29).
p_star_348(P29,P29) :- 
    false.
p_star_348(O29,Q29) :- 
    dual(348,p,O29,Q29).
p_star_349(R29,R29) :- 
    false.
p_star_349(Q29,S29) :- 
    dual(349,p,Q29,S29).
p_star_350(T29,T29) :- 
    false.
p_star_350(S29,U29) :- 
    dual(350,p,S29,U29).
p_star_351(V29,V29) :- 
    false.
p_star_351(U29,W29) :- 
    dual(351,p,U29,W29).
p_star_352(X29,X29) :- 
    false.
p_star_352(W29,Y29) :- 
    dual(352,p,W29,Y29).
p_star_353(Z29,Z29) :- 
    false.
p_star_353(Y29,A30) :- 
    dual(353,p,Y29,A30).
p_star_354(B30,B30) :- 
    false.
p_star_354(A30,C30) :- 
    dual(354,p,A30,C30).
p_star_355(D30,D30) :- 
    false.
p_star_355(C30,E30) :- 
    dual(355,p,C30,E30).
p_star_356(F30,F30) :- 
    false.
p_star_356(E30,G30) :- 
    dual(356,p,E30,G30).
p_star_357(H30,H30) :- 
    false.
p_star_357(G30,I30) :- 
    dual(357,p,G30,I30).
p_star_358(J30,J30) :- 
    false.
p_star_358(I30,K30) :- 
    dual(358,p,I30,K30).
p_star_359(L30,L30) :- 
    false.
p_star_359(K30,M30) :- 
    dual(359,p,K30,M30).
p_star_360(N30,N30) :- 
    false.
p_star_360(M30,O30) :- 
    dual(360,p,M30,O30).
p_star_361(P30,P30) :- 
    false.
p_star_361(O30,Q30) :- 
    dual(361,p,O30,Q30).
p_star_362(R30,R30) :- 
    false.
p_star_362(Q30,S30) :- 
    dual(362,p,Q30,S30).
p_star_363(T30,T30) :- 
    false.
p_star_363(S30,U30) :- 
    dual(363,p,S30,U30).
p_star_364(V30,V30) :- 
    false.
p_star_364(U30,W30) :- 
    dual(364,p,U30,W30).
p_star_365(X30,X30) :- 
    false.
p_star_365(W30,Y30) :- 
    dual(365,p,W30,Y30).
p_star_366(Z30,Z30) :- 
    false.
p_star_366(Y30,A31) :- 
    dual(366,p,Y30,A31).
p_star_367(B31,B31) :- 
    false.
p_star_367(A31,C31) :- 
    dual(367,p,A31,C31).
p_star_368(D31,D31) :- 
    false.
p_star_368(C31,E31) :- 
    dual(368,p,C31,E31).
p_star_369(F31,F31) :- 
    false.
p_star_369(E31,G31) :- 
    dual(369,p,E31,G31).
p_star_370(H31,H31) :- 
    false.
p_star_370(G31,I31) :- 
    dual(370,p,G31,I31).
p_star_371(J31,J31) :- 
    false.
p_star_371(I31,K31) :- 
    dual(371,p,I31,K31).
p_star_372(L31,L31) :- 
    false.
p_star_372(K31,M31) :- 
    dual(372,p,K31,M31).
p_star_373(N31,N31) :- 
    false.
p_star_373(M31,O31) :- 
    dual(373,p,M31,O31).
p_star_374(P31,P31) :- 
    false.
p_star_374(O31,Q31) :- 
    dual(374,p,O31,Q31).
p_star_375(R31,R31) :- 
    false.
p_star_375(Q31,S31) :- 
    dual(375,p,Q31,S31).
p_star_376(T31,T31) :- 
    false.
p_star_376(S31,U31) :- 
    dual(376,p,S31,U31).
p_star_377(V31,V31) :- 
    false.
p_star_377(U31,W31) :- 
    dual(377,p,U31,W31).
p_star_378(X31,X31) :- 
    false.
p_star_378(W31,Y31) :- 
    dual(378,p,W31,Y31).
p_star_379(Z31,Z31) :- 
    false.
p_star_379(Y31,A32) :- 
    dual(379,p,Y31,A32).
p_star_380(B32,B32) :- 
    false.
p_star_380(A32,C32) :- 
    dual(380,p,A32,C32).
p_star_381(D32,D32) :- 
    false.
p_star_381(C32,E32) :- 
    dual(381,p,C32,E32).
p_star_382(F32,F32) :- 
    false.
p_star_382(E32,G32) :- 
    dual(382,p,E32,G32).
p_star_383(H32,H32) :- 
    false.
p_star_383(G32,I32) :- 
    dual(383,p,G32,I32).
p_star_384(J32,J32) :- 
    false.
p_star_384(I32,K32) :- 
    dual(384,p,I32,K32).
p_star_385(L32,L32) :- 
    false.
p_star_385(K32,M32) :- 
    dual(385,p,K32,M32).
p_star_386(N32,N32) :- 
    false.
p_star_386(M32,O32) :- 
    dual(386,p,M32,O32).
p_star_387(P32,P32) :- 
    false.
p_star_387(O32,Q32) :- 
    dual(387,p,O32,Q32).
p_star_388(R32,R32) :- 
    false.
p_star_388(Q32,S32) :- 
    dual(388,p,Q32,S32).
p_star_389(T32,T32) :- 
    false.
p_star_389(S32,U32) :- 
    dual(389,p,S32,U32).
p_star_390(V32,V32) :- 
    false.
p_star_390(U32,W32) :- 
    dual(390,p,U32,W32).
p_star_391(X32,X32) :- 
    false.
p_star_391(W32,Y32) :- 
    dual(391,p,W32,Y32).
p_star_392(Z32,Z32) :- 
    false.
p_star_392(Y32,A33) :- 
    dual(392,p,Y32,A33).
p_star_393(B33,B33) :- 
    false.
p_star_393(A33,C33) :- 
    dual(393,p,A33,C33).
p_star_394(D33,D33) :- 
    false.
p_star_394(C33,E33) :- 
    dual(394,p,C33,E33).
p_star_395(F33,F33) :- 
    false.
p_star_395(E33,G33) :- 
    dual(395,p,E33,G33).
p_star_396(H33,H33) :- 
    false.
p_star_396(G33,I33) :- 
    dual(396,p,G33,I33).
p_star_397(J33,J33) :- 
    false.
p_star_397(I33,K33) :- 
    dual(397,p,I33,K33).
p_star_398(L33,L33) :- 
    false.
p_star_398(K33,M33) :- 
    dual(398,p,K33,M33).
p_star_399(N33,N33) :- 
    false.
p_star_399(M33,O33) :- 
    dual(399,p,M33,O33).
p_star_400(P33,P33) :- 
    false.
p_star_400(O33,Q33) :- 
    dual(400,p,O33,Q33).
p_star_401(R33,R33) :- 
    false.
p_star_401(Q33,S33) :- 
    dual(401,p,Q33,S33).
p_star_402(T33,T33) :- 
    false.
p_star_402(S33,U33) :- 
    dual(402,p,S33,U33).
p_star_403(V33,V33) :- 
    false.
p_star_403(U33,W33) :- 
    dual(403,p,U33,W33).
p_star_404(X33,X33) :- 
    false.
p_star_404(W33,Y33) :- 
    dual(404,p,W33,Y33).
p_star_405(Z33,Z33) :- 
    false.
p_star_405(Y33,A34) :- 
    dual(405,p,Y33,A34).
p_star_406(B34,B34) :- 
    false.
p_star_406(A34,C34) :- 
    dual(406,p,A34,C34).
p_star_407(D34,D34) :- 
    false.
p_star_407(C34,E34) :- 
    dual(407,p,C34,E34).
p_star_408(F34,F34) :- 
    false.
p_star_408(E34,G34) :- 
    dual(408,p,E34,G34).
p_star_409(H34,H34) :- 
    false.
p_star_409(G34,I34) :- 
    dual(409,p,G34,I34).
p_star_410(J34,J34) :- 
    false.
p_star_410(I34,K34) :- 
    dual(410,p,I34,K34).
p_star_411(L34,L34) :- 
    false.
p_star_411(K34,M34) :- 
    dual(411,p,K34,M34).
p_star_412(N34,N34) :- 
    false.
p_star_412(M34,O34) :- 
    dual(412,p,M34,O34).
p_star_413(P34,P34) :- 
    false.
p_star_413(O34,Q34) :- 
    dual(413,p,O34,Q34).
p_star_414(R34,R34) :- 
    false.
p_star_414(Q34,S34) :- 
    dual(414,p,Q34,S34).
p_star_415(T34,T34) :- 
    false.
p_star_415(S34,U34) :- 
    dual(415,p,S34,U34).
p_star_416(V34,V34) :- 
    false.
p_star_416(U34,W34) :- 
    dual(416,p,U34,W34).
p_star_417(X34,X34) :- 
    false.
p_star_417(W34,Y34) :- 
    dual(417,p,W34,Y34).
p_star_418(Z34,Z34) :- 
    false.
p_star_418(Y34,A35) :- 
    dual(418,p,Y34,A35).
p_star_419(B35,B35) :- 
    false.
p_star_419(A35,C35) :- 
    dual(419,p,A35,C35).
p_star_420(D35,D35) :- 
    false.
p_star_420(C35,E35) :- 
    dual(420,p,C35,E35).
p_star_421(F35,F35) :- 
    false.
p_star_421(E35,G35) :- 
    dual(421,p,E35,G35).
p_star_422(H35,H35) :- 
    false.
p_star_422(G35,I35) :- 
    dual(422,p,G35,I35).
p_star_423(J35,J35) :- 
    false.
p_star_423(I35,K35) :- 
    dual(423,p,I35,K35).
p_star_424(L35,L35) :- 
    false.
p_star_424(K35,M35) :- 
    dual(424,p,K35,M35).
p_star_425(N35,N35) :- 
    false.
p_star_425(M35,O35) :- 
    dual(425,p,M35,O35).
p_star_426(P35,P35) :- 
    false.
p_star_426(O35,Q35) :- 
    dual(426,p,O35,Q35).
p_star_427(R35,R35) :- 
    false.
p_star_427(Q35,S35) :- 
    dual(427,p,Q35,S35).
p_star_428(T35,T35) :- 
    false.
p_star_428(S35,U35) :- 
    dual(428,p,S35,U35).
p_star_429(V35,V35) :- 
    false.
p_star_429(U35,W35) :- 
    dual(429,p,U35,W35).
p_star_430(X35,X35) :- 
    false.
p_star_430(W35,Y35) :- 
    dual(430,p,W35,Y35).
p_star_431(Z35,Z35) :- 
    false.
p_star_431(Y35,A36) :- 
    dual(431,p,Y35,A36).
p_star_432(B36,B36) :- 
    false.
p_star_432(A36,C36) :- 
    dual(432,p,A36,C36).
p_star_433(D36,D36) :- 
    false.
p_star_433(C36,E36) :- 
    dual(433,p,C36,E36).
p_star_434(F36,F36) :- 
    false.
p_star_434(E36,G36) :- 
    dual(434,p,E36,G36).
p_star_435(H36,H36) :- 
    false.
p_star_435(G36,I36) :- 
    dual(435,p,G36,I36).
p_star_436(J36,J36) :- 
    false.
p_star_436(I36,K36) :- 
    dual(436,p,I36,K36).
p_star_437(L36,L36) :- 
    false.
p_star_437(K36,M36) :- 
    dual(437,p,K36,M36).
p_star_438(N36,N36) :- 
    false.
p_star_438(M36,O36) :- 
    dual(438,p,M36,O36).
p_star_439(P36,P36) :- 
    false.
p_star_439(O36,Q36) :- 
    dual(439,p,O36,Q36).
p_star_440(R36,R36) :- 
    false.
p_star_440(Q36,S36) :- 
    dual(440,p,Q36,S36).
p_star_441(T36,T36) :- 
    false.
p_star_441(S36,U36) :- 
    dual(441,p,S36,U36).
p_star_442(V36,V36) :- 
    false.
p_star_442(U36,W36) :- 
    dual(442,p,U36,W36).
p_star_443(X36,X36) :- 
    false.
p_star_443(W36,Y36) :- 
    dual(443,p,W36,Y36).
p_star_444(Z36,Z36) :- 
    false.
p_star_444(Y36,A37) :- 
    dual(444,p,Y36,A37).
p_star_445(B37,B37) :- 
    false.
p_star_445(A37,C37) :- 
    dual(445,p,A37,C37).
p_star_446(D37,D37) :- 
    false.
p_star_446(C37,E37) :- 
    dual(446,p,C37,E37).
p_star_447(F37,F37) :- 
    false.
p_star_447(E37,G37) :- 
    dual(447,p,E37,G37).
p_star_448(H37,H37) :- 
    false.
p_star_448(G37,I37) :- 
    dual(448,p,G37,I37).
p_star_449(J37,J37) :- 
    false.
p_star_449(I37,K37) :- 
    dual(449,p,I37,K37).
p_star_450(L37,L37) :- 
    false.
p_star_450(K37,M37) :- 
    dual(450,p,K37,M37).
p_star_451(N37,N37) :- 
    false.
p_star_451(M37,O37) :- 
    dual(451,p,M37,O37).
p_star_452(P37,P37) :- 
    false.
p_star_452(O37,Q37) :- 
    dual(452,p,O37,Q37).
p_star_453(R37,R37) :- 
    false.
p_star_453(Q37,S37) :- 
    dual(453,p,Q37,S37).
p_star_454(T37,T37) :- 
    false.
p_star_454(S37,U37) :- 
    dual(454,p,S37,U37).
p_star_455(V37,V37) :- 
    false.
p_star_455(U37,W37) :- 
    dual(455,p,U37,W37).
p_star_456(X37,X37) :- 
    false.
p_star_456(W37,Y37) :- 
    dual(456,p,W37,Y37).
p_star_457(Z37,Z37) :- 
    false.
p_star_457(Y37,A38) :- 
    dual(457,p,Y37,A38).
p_star_458(B38,B38) :- 
    false.
p_star_458(A38,C38) :- 
    dual(458,p,A38,C38).
p_star_459(D38,D38) :- 
    false.
p_star_459(C38,E38) :- 
    dual(459,p,C38,E38).
p_star_460(F38,F38) :- 
    false.
p_star_460(E38,G38) :- 
    dual(460,p,E38,G38).
p_star_461(H38,H38) :- 
    false.
p_star_461(G38,I38) :- 
    dual(461,p,G38,I38).
p_star_462(J38,J38) :- 
    false.
p_star_462(I38,K38) :- 
    dual(462,p,I38,K38).
p_star_463(L38,L38) :- 
    false.
p_star_463(K38,M38) :- 
    dual(463,p,K38,M38).
p_star_464(N38,N38) :- 
    false.
p_star_464(M38,O38) :- 
    dual(464,p,M38,O38).
p_star_465(P38,P38) :- 
    false.
p_star_465(O38,Q38) :- 
    dual(465,p,O38,Q38).
p_star_466(R38,R38) :- 
    false.
p_star_466(Q38,S38) :- 
    dual(466,p,Q38,S38).
p_star_467(T38,T38) :- 
    false.
p_star_467(S38,U38) :- 
    dual(467,p,S38,U38).
p_star_468(V38,V38) :- 
    false.
p_star_468(U38,W38) :- 
    dual(468,p,U38,W38).
p_star_469(X38,X38) :- 
    false.
p_star_469(W38,Y38) :- 
    dual(469,p,W38,Y38).
p_star_470(Z38,Z38) :- 
    false.
p_star_470(Y38,A39) :- 
    dual(470,p,Y38,A39).
p_star_471(B39,B39) :- 
    false.
p_star_471(A39,C39) :- 
    dual(471,p,A39,C39).
p_star_472(D39,D39) :- 
    false.
p_star_472(C39,E39) :- 
    dual(472,p,C39,E39).
p_star_473(F39,F39) :- 
    false.
p_star_473(E39,G39) :- 
    dual(473,p,E39,G39).
p_star_474(H39,H39) :- 
    false.
p_star_474(G39,I39) :- 
    dual(474,p,G39,I39).
p_star_475(J39,J39) :- 
    false.
p_star_475(I39,K39) :- 
    dual(475,p,I39,K39).
p_star_476(L39,L39) :- 
    false.
p_star_476(K39,M39) :- 
    dual(476,p,K39,M39).
p_star_477(N39,N39) :- 
    false.
p_star_477(M39,O39) :- 
    dual(477,p,M39,O39).
p_star_478(P39,P39) :- 
    false.
p_star_478(O39,Q39) :- 
    dual(478,p,O39,Q39).
p_star_479(R39,R39) :- 
    false.
p_star_479(Q39,S39) :- 
    dual(479,p,Q39,S39).
p_star_480(T39,T39) :- 
    false.
p_star_480(S39,U39) :- 
    dual(480,p,S39,U39).
p_star_481(V39,V39) :- 
    false.
p_star_481(U39,W39) :- 
    dual(481,p,U39,W39).
p_star_482(X39,X39) :- 
    false.
p_star_482(W39,Y39) :- 
    dual(482,p,W39,Y39).
p_star_483(Z39,Z39) :- 
    false.
p_star_483(Y39,A40) :- 
    dual(483,p,Y39,A40).
p_star_484(B40,B40) :- 
    false.
p_star_484(A40,C40) :- 
    dual(484,p,A40,C40).
p_star_485(D40,D40) :- 
    false.
p_star_485(C40,E40) :- 
    dual(485,p,C40,E40).
p_star_486(F40,F40) :- 
    false.
p_star_486(E40,G40) :- 
    dual(486,p,E40,G40).
p_star_487(H40,H40) :- 
    false.
p_star_487(G40,I40) :- 
    dual(487,p,G40,I40).
p_star_488(J40,J40) :- 
    false.
p_star_488(I40,K40) :- 
    dual(488,p,I40,K40).
p_star_489(L40,L40) :- 
    false.
p_star_489(K40,M40) :- 
    dual(489,p,K40,M40).
p_star_490(N40,N40) :- 
    false.
p_star_490(M40,O40) :- 
    dual(490,p,M40,O40).
p_star_491(P40,P40) :- 
    false.
p_star_491(O40,Q40) :- 
    dual(491,p,O40,Q40).
p_star_492(R40,R40) :- 
    false.
p_star_492(Q40,S40) :- 
    dual(492,p,Q40,S40).
p_star_493(T40,T40) :- 
    false.
p_star_493(S40,U40) :- 
    dual(493,p,S40,U40).
p_star_494(V40,V40) :- 
    false.
p_star_494(U40,W40) :- 
    dual(494,p,U40,W40).
p_star_495(X40,X40) :- 
    false.
p_star_495(W40,Y40) :- 
    dual(495,p,W40,Y40).
p_star_496(Z40,Z40) :- 
    false.
p_star_496(Y40,A41) :- 
    dual(496,p,Y40,A41).
p_star_497(B41,B41) :- 
    false.
p_star_497(A41,C41) :- 
    dual(497,p,A41,C41).
p_star_498(D41,D41) :- 
    false.
p_star_498(C41,E41) :- 
    dual(498,p,C41,E41).
p_star_499(F41,F41) :- 
    false.
p_star_499(E41,G41) :- 
    dual(499,p,E41,G41).
p_star_500(H41,H41) :- 
    false.
p_star_500(G41,I41) :- 
    dual(500,p,G41,I41).
p_star_501(J41,J41) :- 
    false.
p_star_501(I41,K41) :- 
    dual(501,p,I41,K41).
p_star_502(L41,L41) :- 
    false.
p_star_502(K41,M41) :- 
    dual(502,p,K41,M41).
p_star_503(N41,N41) :- 
    false.
p_star_503(M41,O41) :- 
    dual(503,p,M41,O41).
p_star_504(P41,P41) :- 
    false.
p_star_504(O41,Q41) :- 
    dual(504,p,O41,Q41).
p_star_505(R41,R41) :- 
    false.
p_star_505(Q41,S41) :- 
    dual(505,p,Q41,S41).
p_star_506(T41,T41) :- 
    false.
p_star_506(S41,U41) :- 
    dual(506,p,S41,U41).
p_star_507(V41,V41) :- 
    false.
p_star_507(U41,W41) :- 
    dual(507,p,U41,W41).
p_star_508(X41,X41) :- 
    false.
p_star_508(W41,Y41) :- 
    dual(508,p,W41,Y41).
p_star_509(Z41,Z41) :- 
    false.
p_star_509(Y41,A42) :- 
    dual(509,p,Y41,A42).
p_star_510(B42,B42) :- 
    false.
p_star_510(A42,C42) :- 
    dual(510,p,A42,C42).
p_star_511(D42,D42) :- 
    false.
p_star_511(C42,E42) :- 
    dual(511,p,C42,E42).
not_p(X2,E42) :- 
    (true,p_star_1(X2,Y2),true,p_star_2(Y2,A3),true,p_star_3(A3,C3),true,p_star_4(C3,E3),true,p_star_5(E3,G3),true,p_star_6(G3,I3),true,p_star_7(I3,K3),true,p_star_8(K3,M3),true,p_star_9(M3,O3),true,p_star_10(O3,Q3),true,p_star_11(Q3,S3),true,p_star_12(S3,U3),true,p_star_13(U3,W3),true,p_star_14(W3,Y3),true,p_star_15(Y3,A4),true,p_star_16(A4,C4),true,p_star_17(C4,E4),true,p_star_18(E4,G4),true,p_star_19(G4,I4),true,p_star_20(I4,K4),true,p_star_21(K4,M4),true,p_star_22(M4,O4),true,p_star_23(O4,Q4),true,p_star_24(Q4,S4),true,p_star_25(S4,U4),true,p_star_26(U4,W4),true,p_star_27(W4,Y4),true,p_star_28(Y4,A5),true,p_star_29(A5,C5),true,p_star_30(C5,E5),true,p_star_31(E5,G5),true,...,...).

not_false(F42,F42).

a1(G42,H42) :- 
    insert_abducible(a1,G42,H42).
a1_star(I42,J42) :- 
    insert_abducible(not a1,I42,J42).
a2(K42,L42) :- 
    insert_abducible(a2,K42,L42).
a2_star(M42,N42) :- 
    insert_abducible(not a2,M42,N42).
a3(O42,P42) :- 
    insert_abducible(a3,O42,P42).
a3_star(Q42,R42) :- 
    insert_abducible(not a3,Q42,R42).
a4(S42,T42) :- 
    insert_abducible(a4,S42,T42).
a4_star(U42,V42) :- 
    insert_abducible(not a4,U42,V42).
a5(W42,X42) :- 
    insert_abducible(a5,W42,X42).
a5_star(Y42,Z42) :- 
    insert_abducible(not a5,Y42,Z42).
a6(A43,B43) :- 
    insert_abducible(a6,A43,B43).
a6_star(C43,D43) :- 
    insert_abducible(not a6,C43,D43).
a7(E43,F43) :- 
    insert_abducible(a7,E43,F43).
a7_star(G43,H43) :- 
    insert_abducible(not a7,G43,H43).
a8(I43,J43) :- 
    insert_abducible(a8,I43,J43).
a8_star(K43,L43) :- 
    insert_abducible(not a8,K43,L43).
a9(M43,N43) :- 
    insert_abducible(a9,M43,N43).
a9_star(O43,P43) :- 
    insert_abducible(not a9,O43,P43).

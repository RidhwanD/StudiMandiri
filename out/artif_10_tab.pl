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

q10_ab(T2) :- 
    (q9([],U2),p(U2,T2)).
:- table q10_ab/1.
q10(V2,W2) :- 
    (q10_ab(X2),produce_context(W2,V2,X2)).
q10_star_1(Y2,Y2) :- 
    false.
q10_star_1(Z2,A3) :- 
    dual(1,q10,Z2,A3).
not_q10(Z2,A3) :- 
    (true,q10_star_1(Z2,A3)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a4,a5,a6]).
p_ab([a1,a2,a3,a4,a5,a6,a7]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a8]).
p_ab([a1,a2,a3,a4,a5,a6,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a8,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a9]).
p_ab([a1,a2,a3,a4,a5,a6,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a6,a10]).
p_ab([a1,a2,a3,a4,a5,a7]).
p_ab([a1,a2,a3,a4,a5,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a7,a8,a10]).
p_ab([a1,a2,a3,a4,a5,a7,a9]).
p_ab([a1,a2,a3,a4,a5,a7,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a7,a10]).
p_ab([a1,a2,a3,a4,a5,a8]).
p_ab([a1,a2,a3,a4,a5,a8,a9]).
p_ab([a1,a2,a3,a4,a5,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a8,a10]).
p_ab([a1,a2,a3,a4,a5,a9]).
p_ab([a1,a2,a3,a4,a5,a9,a10]).
p_ab([a1,a2,a3,a4,a5,a10]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a6,a7]).
p_ab([a1,a2,a3,a4,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a6,a7,a8,a10]).
p_ab([a1,a2,a3,a4,a6,a7,a9]).
p_ab([a1,a2,a3,a4,a6,a7,a9,a10]).
p_ab([a1,a2,a3,a4,a6,a7,a10]).
p_ab([a1,a2,a3,a4,a6,a8]).
p_ab([a1,a2,a3,a4,a6,a8,a9]).
p_ab([a1,a2,a3,a4,a6,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a6,a8,a10]).
p_ab([a1,a2,a3,a4,a6,a9]).
p_ab([a1,a2,a3,a4,a6,a9,a10]).
p_ab([a1,a2,a3,a4,a6,a10]).
p_ab([a1,a2,a3,a4,a7]).
p_ab([a1,a2,a3,a4,a7,a8]).
p_ab([a1,a2,a3,a4,a7,a8,a9]).
p_ab([a1,a2,a3,a4,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a7,a8,a10]).
p_ab([a1,a2,a3,a4,a7,a9]).
p_ab([a1,a2,a3,a4,a7,a9,a10]).
p_ab([a1,a2,a3,a4,a7,a10]).
p_ab([a1,a2,a3,a4,a8]).
p_ab([a1,a2,a3,a4,a8,a9]).
p_ab([a1,a2,a3,a4,a8,a9,a10]).
p_ab([a1,a2,a3,a4,a8,a10]).
p_ab([a1,a2,a3,a4,a9]).
p_ab([a1,a2,a3,a4,a9,a10]).
p_ab([a1,a2,a3,a4,a10]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5,a6,a7]).
p_ab([a1,a2,a3,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a5,a6,a7,a8,a10]).
p_ab([a1,a2,a3,a5,a6,a7,a9]).
p_ab([a1,a2,a3,a5,a6,a7,a9,a10]).
p_ab([a1,a2,a3,a5,a6,a7,a10]).
p_ab([a1,a2,a3,a5,a6,a8]).
p_ab([a1,a2,a3,a5,a6,a8,a9]).
p_ab([a1,a2,a3,a5,a6,a8,a9,a10]).
p_ab([a1,a2,a3,a5,a6,a8,a10]).
p_ab([a1,a2,a3,a5,a6,a9]).
p_ab([a1,a2,a3,a5,a6,a9,a10]).
p_ab([a1,a2,a3,a5,a6,a10]).
p_ab([a1,a2,a3,a5,a7]).
p_ab([a1,a2,a3,a5,a7,a8]).
p_ab([a1,a2,a3,a5,a7,a8,a9]).
p_ab([a1,a2,a3,a5,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a5,a7,a8,a10]).
p_ab([a1,a2,a3,a5,a7,a9]).
p_ab([a1,a2,a3,a5,a7,a9,a10]).
p_ab([a1,a2,a3,a5,a7,a10]).
p_ab([a1,a2,a3,a5,a8]).
p_ab([a1,a2,a3,a5,a8,a9]).
p_ab([a1,a2,a3,a5,a8,a9,a10]).
p_ab([a1,a2,a3,a5,a8,a10]).
p_ab([a1,a2,a3,a5,a9]).
p_ab([a1,a2,a3,a5,a9,a10]).
p_ab([a1,a2,a3,a5,a10]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a6,a7]).
p_ab([a1,a2,a3,a6,a7,a8]).
p_ab([a1,a2,a3,a6,a7,a8,a9]).
p_ab([a1,a2,a3,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a6,a7,a8,a10]).
p_ab([a1,a2,a3,a6,a7,a9]).
p_ab([a1,a2,a3,a6,a7,a9,a10]).
p_ab([a1,a2,a3,a6,a7,a10]).
p_ab([a1,a2,a3,a6,a8]).
p_ab([a1,a2,a3,a6,a8,a9]).
p_ab([a1,a2,a3,a6,a8,a9,a10]).
p_ab([a1,a2,a3,a6,a8,a10]).
p_ab([a1,a2,a3,a6,a9]).
p_ab([a1,a2,a3,a6,a9,a10]).
p_ab([a1,a2,a3,a6,a10]).
p_ab([a1,a2,a3,a7]).
p_ab([a1,a2,a3,a7,a8]).
p_ab([a1,a2,a3,a7,a8,a9]).
p_ab([a1,a2,a3,a7,a8,a9,a10]).
p_ab([a1,a2,a3,a7,a8,a10]).
p_ab([a1,a2,a3,a7,a9]).
p_ab([a1,a2,a3,a7,a9,a10]).
p_ab([a1,a2,a3,a7,a10]).
p_ab([a1,a2,a3,a8]).
p_ab([a1,a2,a3,a8,a9]).
p_ab([a1,a2,a3,a8,a9,a10]).
p_ab([a1,a2,a3,a8,a10]).
p_ab([a1,a2,a3,a9]).
p_ab([a1,a2,a3,a9,a10]).
p_ab([a1,a2,a3,a10]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5,a6,a7]).
p_ab([a1,a2,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a4,a5,a6,a7,a8,a10]).
p_ab([a1,a2,a4,a5,a6,a7,a9]).
p_ab([a1,a2,a4,a5,a6,a7,a9,a10]).
p_ab([a1,a2,a4,a5,a6,a7,a10]).
p_ab([a1,a2,a4,a5,a6,a8]).
p_ab([a1,a2,a4,a5,a6,a8,a9]).
p_ab([a1,a2,a4,a5,a6,a8,a9,a10]).
p_ab([a1,a2,a4,a5,a6,a8,a10]).
p_ab([a1,a2,a4,a5,a6,a9]).
p_ab([a1,a2,a4,a5,a6,a9,a10]).
p_ab([a1,a2,a4,a5,a6,a10]).
p_ab([a1,a2,a4,a5,a7]).
p_ab([a1,a2,a4,a5,a7,a8]).
p_ab([a1,a2,a4,a5,a7,a8,a9]).
p_ab([a1,a2,a4,a5,a7,a8,a9,a10]).
p_ab([a1,a2,a4,a5,a7,a8,a10]).
p_ab([a1,a2,a4,a5,a7,a9]).
p_ab([a1,a2,a4,a5,a7,a9,a10]).
p_ab([a1,a2,a4,a5,a7,a10]).
p_ab([a1,a2,a4,a5,a8]).
p_ab([a1,a2,a4,a5,a8,a9]).
p_ab([a1,a2,a4,a5,a8,a9,a10]).
p_ab([a1,a2,a4,a5,a8,a10]).
p_ab([a1,a2,a4,a5,a9]).
p_ab([a1,a2,a4,a5,a9,a10]).
p_ab([a1,a2,a4,a5,a10]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a6,a7]).
p_ab([a1,a2,a4,a6,a7,a8]).
p_ab([a1,a2,a4,a6,a7,a8,a9]).
p_ab([a1,a2,a4,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a4,a6,a7,a8,a10]).
p_ab([a1,a2,a4,a6,a7,a9]).
p_ab([a1,a2,a4,a6,a7,a9,a10]).
p_ab([a1,a2,a4,a6,a7,a10]).
p_ab([a1,a2,a4,a6,a8]).
p_ab([a1,a2,a4,a6,a8,a9]).
p_ab([a1,a2,a4,a6,a8,a9,a10]).
p_ab([a1,a2,a4,a6,a8,a10]).
p_ab([a1,a2,a4,a6,a9]).
p_ab([a1,a2,a4,a6,a9,a10]).
p_ab([a1,a2,a4,a6,a10]).
p_ab([a1,a2,a4,a7]).
p_ab([a1,a2,a4,a7,a8]).
p_ab([a1,a2,a4,a7,a8,a9]).
p_ab([a1,a2,a4,a7,a8,a9,a10]).
p_ab([a1,a2,a4,a7,a8,a10]).
p_ab([a1,a2,a4,a7,a9]).
p_ab([a1,a2,a4,a7,a9,a10]).
p_ab([a1,a2,a4,a7,a10]).
p_ab([a1,a2,a4,a8]).
p_ab([a1,a2,a4,a8,a9]).
p_ab([a1,a2,a4,a8,a9,a10]).
p_ab([a1,a2,a4,a8,a10]).
p_ab([a1,a2,a4,a9]).
p_ab([a1,a2,a4,a9,a10]).
p_ab([a1,a2,a4,a10]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5,a6,a7]).
p_ab([a1,a2,a5,a6,a7,a8]).
p_ab([a1,a2,a5,a6,a7,a8,a9]).
p_ab([a1,a2,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a5,a6,a7,a8,a10]).
p_ab([a1,a2,a5,a6,a7,a9]).
p_ab([a1,a2,a5,a6,a7,a9,a10]).
p_ab([a1,a2,a5,a6,a7,a10]).
p_ab([a1,a2,a5,a6,a8]).
p_ab([a1,a2,a5,a6,a8,a9]).
p_ab([a1,a2,a5,a6,a8,a9,a10]).
p_ab([a1,a2,a5,a6,a8,a10]).
p_ab([a1,a2,a5,a6,a9]).
p_ab([a1,a2,a5,a6,a9,a10]).
p_ab([a1,a2,a5,a6,a10]).
p_ab([a1,a2,a5,a7]).
p_ab([a1,a2,a5,a7,a8]).
p_ab([a1,a2,a5,a7,a8,a9]).
p_ab([a1,a2,a5,a7,a8,a9,a10]).
p_ab([a1,a2,a5,a7,a8,a10]).
p_ab([a1,a2,a5,a7,a9]).
p_ab([a1,a2,a5,a7,a9,a10]).
p_ab([a1,a2,a5,a7,a10]).
p_ab([a1,a2,a5,a8]).
p_ab([a1,a2,a5,a8,a9]).
p_ab([a1,a2,a5,a8,a9,a10]).
p_ab([a1,a2,a5,a8,a10]).
p_ab([a1,a2,a5,a9]).
p_ab([a1,a2,a5,a9,a10]).
p_ab([a1,a2,a5,a10]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a6,a7]).
p_ab([a1,a2,a6,a7,a8]).
p_ab([a1,a2,a6,a7,a8,a9]).
p_ab([a1,a2,a6,a7,a8,a9,a10]).
p_ab([a1,a2,a6,a7,a8,a10]).
p_ab([a1,a2,a6,a7,a9]).
p_ab([a1,a2,a6,a7,a9,a10]).
p_ab([a1,a2,a6,a7,a10]).
p_ab([a1,a2,a6,a8]).
p_ab([a1,a2,a6,a8,a9]).
p_ab([a1,a2,a6,a8,a9,a10]).
p_ab([a1,a2,a6,a8,a10]).
p_ab([a1,a2,a6,a9]).
p_ab([a1,a2,a6,a9,a10]).
p_ab([a1,a2,a6,a10]).
p_ab([a1,a2,a7]).
p_ab([a1,a2,a7,a8]).
p_ab([a1,a2,a7,a8,a9]).
p_ab([a1,a2,a7,a8,a9,a10]).
p_ab([a1,a2,a7,a8,a10]).
p_ab([a1,a2,a7,a9]).
p_ab([a1,a2,a7,a9,a10]).
p_ab([a1,a2,a7,a10]).
p_ab([a1,a2,a8]).
p_ab([a1,a2,a8,a9]).
p_ab([a1,a2,a8,a9,a10]).
p_ab([a1,a2,a8,a10]).
p_ab([a1,a2,a9]).
p_ab([a1,a2,a9,a10]).
p_ab([a1,a2,a10]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5,a6,a7]).
p_ab([a1,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a3,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a3,a4,a5,a6,a7,a8,a10]).
p_ab([a1,a3,a4,a5,a6,a7,a9]).
p_ab([a1,a3,a4,a5,a6,a7,a9,a10]).
p_ab([a1,a3,a4,a5,a6,a7,a10]).
p_ab([a1,a3,a4,a5,a6,a8]).
p_ab([a1,a3,a4,a5,a6,a8,a9]).
p_ab([a1,a3,a4,a5,a6,a8,a9,a10]).
p_ab([a1,a3,a4,a5,a6,a8,a10]).
p_ab([a1,a3,a4,a5,a6,a9]).
p_ab([a1,a3,a4,a5,a6,a9,a10]).
p_ab([a1,a3,a4,a5,a6,a10]).
p_ab([a1,a3,a4,a5,a7]).
p_ab([a1,a3,a4,a5,a7,a8]).
p_ab([a1,a3,a4,a5,a7,a8,a9]).
p_ab([a1,a3,a4,a5,a7,a8,a9,a10]).
p_ab([a1,a3,a4,a5,a7,a8,a10]).
p_ab([a1,a3,a4,a5,a7,a9]).
p_ab([a1,a3,a4,a5,a7,a9,a10]).
p_ab([a1,a3,a4,a5,a7,a10]).
p_ab([a1,a3,a4,a5,a8]).
p_ab([a1,a3,a4,a5,a8,a9]).
p_ab([a1,a3,a4,a5,a8,a9,a10]).
p_ab([a1,a3,a4,a5,a8,a10]).
p_ab([a1,a3,a4,a5,a9]).
p_ab([a1,a3,a4,a5,a9,a10]).
p_ab([a1,a3,a4,a5,a10]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a6,a7]).
p_ab([a1,a3,a4,a6,a7,a8]).
p_ab([a1,a3,a4,a6,a7,a8,a9]).
p_ab([a1,a3,a4,a6,a7,a8,a9,a10]).
p_ab([a1,a3,a4,a6,a7,a8,a10]).
p_ab([a1,a3,a4,a6,a7,a9]).
p_ab([a1,a3,a4,a6,a7,a9,a10]).
p_ab([a1,a3,a4,a6,a7,a10]).
p_ab([a1,a3,a4,a6,a8]).
p_ab([a1,a3,a4,a6,a8,a9]).
p_ab([a1,a3,a4,a6,a8,a9,a10]).
p_ab([a1,a3,a4,a6,a8,a10]).
p_ab([a1,a3,a4,a6,a9]).
p_ab([a1,a3,a4,a6,a9,a10]).
p_ab([a1,a3,a4,a6,a10]).
p_ab([a1,a3,a4,a7]).
p_ab([a1,a3,a4,a7,a8]).
p_ab([a1,a3,a4,a7,a8,a9]).
p_ab([a1,a3,a4,a7,a8,a9,a10]).
p_ab([a1,a3,a4,a7,a8,a10]).
p_ab([a1,a3,a4,a7,a9]).
p_ab([a1,a3,a4,a7,a9,a10]).
p_ab([a1,a3,a4,a7,a10]).
p_ab([a1,a3,a4,a8]).
p_ab([a1,a3,a4,a8,a9]).
p_ab([a1,a3,a4,a8,a9,a10]).
p_ab([a1,a3,a4,a8,a10]).
p_ab([a1,a3,a4,a9]).
p_ab([a1,a3,a4,a9,a10]).
p_ab([a1,a3,a4,a10]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5,a6,a7]).
p_ab([a1,a3,a5,a6,a7,a8]).
p_ab([a1,a3,a5,a6,a7,a8,a9]).
p_ab([a1,a3,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a3,a5,a6,a7,a8,a10]).
p_ab([a1,a3,a5,a6,a7,a9]).
p_ab([a1,a3,a5,a6,a7,a9,a10]).
p_ab([a1,a3,a5,a6,a7,a10]).
p_ab([a1,a3,a5,a6,a8]).
p_ab([a1,a3,a5,a6,a8,a9]).
p_ab([a1,a3,a5,a6,a8,a9,a10]).
p_ab([a1,a3,a5,a6,a8,a10]).
p_ab([a1,a3,a5,a6,a9]).
p_ab([a1,a3,a5,a6,a9,a10]).
p_ab([a1,a3,a5,a6,a10]).
p_ab([a1,a3,a5,a7]).
p_ab([a1,a3,a5,a7,a8]).
p_ab([a1,a3,a5,a7,a8,a9]).
p_ab([a1,a3,a5,a7,a8,a9,a10]).
p_ab([a1,a3,a5,a7,a8,a10]).
p_ab([a1,a3,a5,a7,a9]).
p_ab([a1,a3,a5,a7,a9,a10]).
p_ab([a1,a3,a5,a7,a10]).
p_ab([a1,a3,a5,a8]).
p_ab([a1,a3,a5,a8,a9]).
p_ab([a1,a3,a5,a8,a9,a10]).
p_ab([a1,a3,a5,a8,a10]).
p_ab([a1,a3,a5,a9]).
p_ab([a1,a3,a5,a9,a10]).
p_ab([a1,a3,a5,a10]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a6,a7]).
p_ab([a1,a3,a6,a7,a8]).
p_ab([a1,a3,a6,a7,a8,a9]).
p_ab([a1,a3,a6,a7,a8,a9,a10]).
p_ab([a1,a3,a6,a7,a8,a10]).
p_ab([a1,a3,a6,a7,a9]).
p_ab([a1,a3,a6,a7,a9,a10]).
p_ab([a1,a3,a6,a7,a10]).
p_ab([a1,a3,a6,a8]).
p_ab([a1,a3,a6,a8,a9]).
p_ab([a1,a3,a6,a8,a9,a10]).
p_ab([a1,a3,a6,a8,a10]).
p_ab([a1,a3,a6,a9]).
p_ab([a1,a3,a6,a9,a10]).
p_ab([a1,a3,a6,a10]).
p_ab([a1,a3,a7]).
p_ab([a1,a3,a7,a8]).
p_ab([a1,a3,a7,a8,a9]).
p_ab([a1,a3,a7,a8,a9,a10]).
p_ab([a1,a3,a7,a8,a10]).
p_ab([a1,a3,a7,a9]).
p_ab([a1,a3,a7,a9,a10]).
p_ab([a1,a3,a7,a10]).
p_ab([a1,a3,a8]).
p_ab([a1,a3,a8,a9]).
p_ab([a1,a3,a8,a9,a10]).
p_ab([a1,a3,a8,a10]).
p_ab([a1,a3,a9]).
p_ab([a1,a3,a9,a10]).
p_ab([a1,a3,a10]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5,a6,a7]).
p_ab([a1,a4,a5,a6,a7,a8]).
p_ab([a1,a4,a5,a6,a7,a8,a9]).
p_ab([a1,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a4,a5,a6,a7,a8,a10]).
p_ab([a1,a4,a5,a6,a7,a9]).
p_ab([a1,a4,a5,a6,a7,a9,a10]).
p_ab([a1,a4,a5,a6,a7,a10]).
p_ab([a1,a4,a5,a6,a8]).
p_ab([a1,a4,a5,a6,a8,a9]).
p_ab([a1,a4,a5,a6,a8,a9,a10]).
p_ab([a1,a4,a5,a6,a8,a10]).
p_ab([a1,a4,a5,a6,a9]).
p_ab([a1,a4,a5,a6,a9,a10]).
p_ab([a1,a4,a5,a6,a10]).
p_ab([a1,a4,a5,a7]).
p_ab([a1,a4,a5,a7,a8]).
p_ab([a1,a4,a5,a7,a8,a9]).
p_ab([a1,a4,a5,a7,a8,a9,a10]).
p_ab([a1,a4,a5,a7,a8,a10]).
p_ab([a1,a4,a5,a7,a9]).
p_ab([a1,a4,a5,a7,a9,a10]).
p_ab([a1,a4,a5,a7,a10]).
p_ab([a1,a4,a5,a8]).
p_ab([a1,a4,a5,a8,a9]).
p_ab([a1,a4,a5,a8,a9,a10]).
p_ab([a1,a4,a5,a8,a10]).
p_ab([a1,a4,a5,a9]).
p_ab([a1,a4,a5,a9,a10]).
p_ab([a1,a4,a5,a10]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a6,a7]).
p_ab([a1,a4,a6,a7,a8]).
p_ab([a1,a4,a6,a7,a8,a9]).
p_ab([a1,a4,a6,a7,a8,a9,a10]).
p_ab([a1,a4,a6,a7,a8,a10]).
p_ab([a1,a4,a6,a7,a9]).
p_ab([a1,a4,a6,a7,a9,a10]).
p_ab([a1,a4,a6,a7,a10]).
p_ab([a1,a4,a6,a8]).
p_ab([a1,a4,a6,a8,a9]).
p_ab([a1,a4,a6,a8,a9,a10]).
p_ab([a1,a4,a6,a8,a10]).
p_ab([a1,a4,a6,a9]).
p_ab([a1,a4,a6,a9,a10]).
p_ab([a1,a4,a6,a10]).
p_ab([a1,a4,a7]).
p_ab([a1,a4,a7,a8]).
p_ab([a1,a4,a7,a8,a9]).
p_ab([a1,a4,a7,a8,a9,a10]).
p_ab([a1,a4,a7,a8,a10]).
p_ab([a1,a4,a7,a9]).
p_ab([a1,a4,a7,a9,a10]).
p_ab([a1,a4,a7,a10]).
p_ab([a1,a4,a8]).
p_ab([a1,a4,a8,a9]).
p_ab([a1,a4,a8,a9,a10]).
p_ab([a1,a4,a8,a10]).
p_ab([a1,a4,a9]).
p_ab([a1,a4,a9,a10]).
p_ab([a1,a4,a10]).
p_ab([a1,a5]).
p_ab([a1,a5,a6]).
p_ab([a1,a5,a6,a7]).
p_ab([a1,a5,a6,a7,a8]).
p_ab([a1,a5,a6,a7,a8,a9]).
p_ab([a1,a5,a6,a7,a8,a9,a10]).
p_ab([a1,a5,a6,a7,a8,a10]).
p_ab([a1,a5,a6,a7,a9]).
p_ab([a1,a5,a6,a7,a9,a10]).
p_ab([a1,a5,a6,a7,a10]).
p_ab([a1,a5,a6,a8]).
p_ab([a1,a5,a6,a8,a9]).
p_ab([a1,a5,a6,a8,a9,a10]).
p_ab([a1,a5,a6,a8,a10]).
p_ab([a1,a5,a6,a9]).
p_ab([a1,a5,a6,a9,a10]).
p_ab([a1,a5,a6,a10]).
p_ab([a1,a5,a7]).
p_ab([a1,a5,a7,a8]).
p_ab([a1,a5,a7,a8,a9]).
p_ab([a1,a5,a7,a8,a9,a10]).
p_ab([a1,a5,a7,a8,a10]).
p_ab([a1,a5,a7,a9]).
p_ab([a1,a5,a7,a9,a10]).
p_ab([a1,a5,a7,a10]).
p_ab([a1,a5,a8]).
p_ab([a1,a5,a8,a9]).
p_ab([a1,a5,a8,a9,a10]).
p_ab([a1,a5,a8,a10]).
p_ab([a1,a5,a9]).
p_ab([a1,a5,a9,a10]).
p_ab([a1,a5,a10]).
p_ab([a1,a6]).
p_ab([a1,a6,a7]).
p_ab([a1,a6,a7,a8]).
p_ab([a1,a6,a7,a8,a9]).
p_ab([a1,a6,a7,a8,a9,a10]).
p_ab([a1,a6,a7,a8,a10]).
p_ab([a1,a6,a7,a9]).
p_ab([a1,a6,a7,a9,a10]).
p_ab([a1,a6,a7,a10]).
p_ab([a1,a6,a8]).
p_ab([a1,a6,a8,a9]).
p_ab([a1,a6,a8,a9,a10]).
p_ab([a1,a6,a8,a10]).
p_ab([a1,a6,a9]).
p_ab([a1,a6,a9,a10]).
p_ab([a1,a6,a10]).
p_ab([a1,a7]).
p_ab([a1,a7,a8]).
p_ab([a1,a7,a8,a9]).
p_ab([a1,a7,a8,a9,a10]).
p_ab([a1,a7,a8,a10]).
p_ab([a1,a7,a9]).
p_ab([a1,a7,a9,a10]).
p_ab([a1,a7,a10]).
p_ab([a1,a8]).
p_ab([a1,a8,a9]).
p_ab([a1,a8,a9,a10]).
p_ab([a1,a8,a10]).
p_ab([a1,a9]).
p_ab([a1,a9,a10]).
p_ab([a1,a10]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5,a6,a7]).
p_ab([a2,a3,a4,a5,a6,a7,a8]).
p_ab([a2,a3,a4,a5,a6,a7,a8,a9]).
p_ab([a2,a3,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a2,a3,a4,a5,a6,a7,a8,a10]).
p_ab([a2,a3,a4,a5,a6,a7,a9]).
p_ab([a2,a3,a4,a5,a6,a7,a9,a10]).
p_ab([a2,a3,a4,a5,a6,a7,a10]).
p_ab([a2,a3,a4,a5,a6,a8]).
p_ab([a2,a3,a4,a5,a6,a8,a9]).
p_ab([a2,a3,a4,a5,a6,a8,a9,a10]).
p_ab([a2,a3,a4,a5,a6,a8,a10]).
p_ab([a2,a3,a4,a5,a6,a9]).
p_ab([a2,a3,a4,a5,a6,a9,a10]).
p_ab([a2,a3,a4,a5,a6,a10]).
p_ab([a2,a3,a4,a5,a7]).
p_ab([a2,a3,a4,a5,a7,a8]).
p_ab([a2,a3,a4,a5,a7,a8,a9]).
p_ab([a2,a3,a4,a5,a7,a8,a9,a10]).
p_ab([a2,a3,a4,a5,a7,a8,a10]).
p_ab([a2,a3,a4,a5,a7,a9]).
p_ab([a2,a3,a4,a5,a7,a9,a10]).
p_ab([a2,a3,a4,a5,a7,a10]).
p_ab([a2,a3,a4,a5,a8]).
p_ab([a2,a3,a4,a5,a8,a9]).
p_ab([a2,a3,a4,a5,a8,a9,a10]).
p_ab([a2,a3,a4,a5,a8,a10]).
p_ab([a2,a3,a4,a5,a9]).
p_ab([a2,a3,a4,a5,a9,a10]).
p_ab([a2,a3,a4,a5,a10]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a6,a7]).
p_ab([a2,a3,a4,a6,a7,a8]).
p_ab([a2,a3,a4,a6,a7,a8,a9]).
p_ab([a2,a3,a4,a6,a7,a8,a9,a10]).
p_ab([a2,a3,a4,a6,a7,a8,a10]).
p_ab([a2,a3,a4,a6,a7,a9]).
p_ab([a2,a3,a4,a6,a7,a9,a10]).
p_ab([a2,a3,a4,a6,a7,a10]).
p_ab([a2,a3,a4,a6,a8]).
p_ab([a2,a3,a4,a6,a8,a9]).
p_ab([a2,a3,a4,a6,a8,a9,a10]).
p_ab([a2,a3,a4,a6,a8,a10]).
p_ab([a2,a3,a4,a6,a9]).
p_ab([a2,a3,a4,a6,a9,a10]).
p_ab([a2,a3,a4,a6,a10]).
p_ab([a2,a3,a4,a7]).
p_ab([a2,a3,a4,a7,a8]).
p_ab([a2,a3,a4,a7,a8,a9]).
p_ab([a2,a3,a4,a7,a8,a9,a10]).
p_ab([a2,a3,a4,a7,a8,a10]).
p_ab([a2,a3,a4,a7,a9]).
p_ab([a2,a3,a4,a7,a9,a10]).
p_ab([a2,a3,a4,a7,a10]).
p_ab([a2,a3,a4,a8]).
p_ab([a2,a3,a4,a8,a9]).
p_ab([a2,a3,a4,a8,a9,a10]).
p_ab([a2,a3,a4,a8,a10]).
p_ab([a2,a3,a4,a9]).
p_ab([a2,a3,a4,a9,a10]).
p_ab([a2,a3,a4,a10]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5,a6,a7]).
p_ab([a2,a3,a5,a6,a7,a8]).
p_ab([a2,a3,a5,a6,a7,a8,a9]).
p_ab([a2,a3,a5,a6,a7,a8,a9,a10]).
p_ab([a2,a3,a5,a6,a7,a8,a10]).
p_ab([a2,a3,a5,a6,a7,a9]).
p_ab([a2,a3,a5,a6,a7,a9,a10]).
p_ab([a2,a3,a5,a6,a7,a10]).
p_ab([a2,a3,a5,a6,a8]).
p_ab([a2,a3,a5,a6,a8,a9]).
p_ab([a2,a3,a5,a6,a8,a9,a10]).
p_ab([a2,a3,a5,a6,a8,a10]).
p_ab([a2,a3,a5,a6,a9]).
p_ab([a2,a3,a5,a6,a9,a10]).
p_ab([a2,a3,a5,a6,a10]).
p_ab([a2,a3,a5,a7]).
p_ab([a2,a3,a5,a7,a8]).
p_ab([a2,a3,a5,a7,a8,a9]).
p_ab([a2,a3,a5,a7,a8,a9,a10]).
p_ab([a2,a3,a5,a7,a8,a10]).
p_ab([a2,a3,a5,a7,a9]).
p_ab([a2,a3,a5,a7,a9,a10]).
p_ab([a2,a3,a5,a7,a10]).
p_ab([a2,a3,a5,a8]).
p_ab([a2,a3,a5,a8,a9]).
p_ab([a2,a3,a5,a8,a9,a10]).
p_ab([a2,a3,a5,a8,a10]).
p_ab([a2,a3,a5,a9]).
p_ab([a2,a3,a5,a9,a10]).
p_ab([a2,a3,a5,a10]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a6,a7]).
p_ab([a2,a3,a6,a7,a8]).
p_ab([a2,a3,a6,a7,a8,a9]).
p_ab([a2,a3,a6,a7,a8,a9,a10]).
p_ab([a2,a3,a6,a7,a8,a10]).
p_ab([a2,a3,a6,a7,a9]).
p_ab([a2,a3,a6,a7,a9,a10]).
p_ab([a2,a3,a6,a7,a10]).
p_ab([a2,a3,a6,a8]).
p_ab([a2,a3,a6,a8,a9]).
p_ab([a2,a3,a6,a8,a9,a10]).
p_ab([a2,a3,a6,a8,a10]).
p_ab([a2,a3,a6,a9]).
p_ab([a2,a3,a6,a9,a10]).
p_ab([a2,a3,a6,a10]).
p_ab([a2,a3,a7]).
p_ab([a2,a3,a7,a8]).
p_ab([a2,a3,a7,a8,a9]).
p_ab([a2,a3,a7,a8,a9,a10]).
p_ab([a2,a3,a7,a8,a10]).
p_ab([a2,a3,a7,a9]).
p_ab([a2,a3,a7,a9,a10]).
p_ab([a2,a3,a7,a10]).
p_ab([a2,a3,a8]).
p_ab([a2,a3,a8,a9]).
p_ab([a2,a3,a8,a9,a10]).
p_ab([a2,a3,a8,a10]).
p_ab([a2,a3,a9]).
p_ab([a2,a3,a9,a10]).
p_ab([a2,a3,a10]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5,a6,a7]).
p_ab([a2,a4,a5,a6,a7,a8]).
p_ab([a2,a4,a5,a6,a7,a8,a9]).
p_ab([a2,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a2,a4,a5,a6,a7,a8,a10]).
p_ab([a2,a4,a5,a6,a7,a9]).
p_ab([a2,a4,a5,a6,a7,a9,a10]).
p_ab([a2,a4,a5,a6,a7,a10]).
p_ab([a2,a4,a5,a6,a8]).
p_ab([a2,a4,a5,a6,a8,a9]).
p_ab([a2,a4,a5,a6,a8,a9,a10]).
p_ab([a2,a4,a5,a6,a8,a10]).
p_ab([a2,a4,a5,a6,a9]).
p_ab([a2,a4,a5,a6,a9,a10]).
p_ab([a2,a4,a5,a6,a10]).
p_ab([a2,a4,a5,a7]).
p_ab([a2,a4,a5,a7,a8]).
p_ab([a2,a4,a5,a7,a8,a9]).
p_ab([a2,a4,a5,a7,a8,a9,a10]).
p_ab([a2,a4,a5,a7,a8,a10]).
p_ab([a2,a4,a5,a7,a9]).
p_ab([a2,a4,a5,a7,a9,a10]).
p_ab([a2,a4,a5,a7,a10]).
p_ab([a2,a4,a5,a8]).
p_ab([a2,a4,a5,a8,a9]).
p_ab([a2,a4,a5,a8,a9,a10]).
p_ab([a2,a4,a5,a8,a10]).
p_ab([a2,a4,a5,a9]).
p_ab([a2,a4,a5,a9,a10]).
p_ab([a2,a4,a5,a10]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a6,a7]).
p_ab([a2,a4,a6,a7,a8]).
p_ab([a2,a4,a6,a7,a8,a9]).
p_ab([a2,a4,a6,a7,a8,a9,a10]).
p_ab([a2,a4,a6,a7,a8,a10]).
p_ab([a2,a4,a6,a7,a9]).
p_ab([a2,a4,a6,a7,a9,a10]).
p_ab([a2,a4,a6,a7,a10]).
p_ab([a2,a4,a6,a8]).
p_ab([a2,a4,a6,a8,a9]).
p_ab([a2,a4,a6,a8,a9,a10]).
p_ab([a2,a4,a6,a8,a10]).
p_ab([a2,a4,a6,a9]).
p_ab([a2,a4,a6,a9,a10]).
p_ab([a2,a4,a6,a10]).
p_ab([a2,a4,a7]).
p_ab([a2,a4,a7,a8]).
p_ab([a2,a4,a7,a8,a9]).
p_ab([a2,a4,a7,a8,a9,a10]).
p_ab([a2,a4,a7,a8,a10]).
p_ab([a2,a4,a7,a9]).
p_ab([a2,a4,a7,a9,a10]).
p_ab([a2,a4,a7,a10]).
p_ab([a2,a4,a8]).
p_ab([a2,a4,a8,a9]).
p_ab([a2,a4,a8,a9,a10]).
p_ab([a2,a4,a8,a10]).
p_ab([a2,a4,a9]).
p_ab([a2,a4,a9,a10]).
p_ab([a2,a4,a10]).
p_ab([a2,a5]).
p_ab([a2,a5,a6]).
p_ab([a2,a5,a6,a7]).
p_ab([a2,a5,a6,a7,a8]).
p_ab([a2,a5,a6,a7,a8,a9]).
p_ab([a2,a5,a6,a7,a8,a9,a10]).
p_ab([a2,a5,a6,a7,a8,a10]).
p_ab([a2,a5,a6,a7,a9]).
p_ab([a2,a5,a6,a7,a9,a10]).
p_ab([a2,a5,a6,a7,a10]).
p_ab([a2,a5,a6,a8]).
p_ab([a2,a5,a6,a8,a9]).
p_ab([a2,a5,a6,a8,a9,a10]).
p_ab([a2,a5,a6,a8,a10]).
p_ab([a2,a5,a6,a9]).
p_ab([a2,a5,a6,a9,a10]).
p_ab([a2,a5,a6,a10]).
p_ab([a2,a5,a7]).
p_ab([a2,a5,a7,a8]).
p_ab([a2,a5,a7,a8,a9]).
p_ab([a2,a5,a7,a8,a9,a10]).
p_ab([a2,a5,a7,a8,a10]).
p_ab([a2,a5,a7,a9]).
p_ab([a2,a5,a7,a9,a10]).
p_ab([a2,a5,a7,a10]).
p_ab([a2,a5,a8]).
p_ab([a2,a5,a8,a9]).
p_ab([a2,a5,a8,a9,a10]).
p_ab([a2,a5,a8,a10]).
p_ab([a2,a5,a9]).
p_ab([a2,a5,a9,a10]).
p_ab([a2,a5,a10]).
p_ab([a2,a6]).
p_ab([a2,a6,a7]).
p_ab([a2,a6,a7,a8]).
p_ab([a2,a6,a7,a8,a9]).
p_ab([a2,a6,a7,a8,a9,a10]).
p_ab([a2,a6,a7,a8,a10]).
p_ab([a2,a6,a7,a9]).
p_ab([a2,a6,a7,a9,a10]).
p_ab([a2,a6,a7,a10]).
p_ab([a2,a6,a8]).
p_ab([a2,a6,a8,a9]).
p_ab([a2,a6,a8,a9,a10]).
p_ab([a2,a6,a8,a10]).
p_ab([a2,a6,a9]).
p_ab([a2,a6,a9,a10]).
p_ab([a2,a6,a10]).
p_ab([a2,a7]).
p_ab([a2,a7,a8]).
p_ab([a2,a7,a8,a9]).
p_ab([a2,a7,a8,a9,a10]).
p_ab([a2,a7,a8,a10]).
p_ab([a2,a7,a9]).
p_ab([a2,a7,a9,a10]).
p_ab([a2,a7,a10]).
p_ab([a2,a8]).
p_ab([a2,a8,a9]).
p_ab([a2,a8,a9,a10]).
p_ab([a2,a8,a10]).
p_ab([a2,a9]).
p_ab([a2,a9,a10]).
p_ab([a2,a10]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5,a6,a7]).
p_ab([a3,a4,a5,a6,a7,a8]).
p_ab([a3,a4,a5,a6,a7,a8,a9]).
p_ab([a3,a4,a5,a6,a7,a8,a9,a10]).
p_ab([a3,a4,a5,a6,a7,a8,a10]).
p_ab([a3,a4,a5,a6,a7,a9]).
p_ab([a3,a4,a5,a6,a7,a9,a10]).
p_ab([a3,a4,a5,a6,a7,a10]).
p_ab([a3,a4,a5,a6,a8]).
p_ab([a3,a4,a5,a6,a8,a9]).
p_ab([a3,a4,a5,a6,a8,a9,a10]).
p_ab([a3,a4,a5,a6,a8,a10]).
p_ab([a3,a4,a5,a6,a9]).
p_ab([a3,a4,a5,a6,a9,a10]).
p_ab([a3,a4,a5,a6,a10]).
p_ab([a3,a4,a5,a7]).
p_ab([a3,a4,a5,a7,a8]).
p_ab([a3,a4,a5,a7,a8,a9]).
p_ab([a3,a4,a5,a7,a8,a9,a10]).
p_ab([a3,a4,a5,a7,a8,a10]).
p_ab([a3,a4,a5,a7,a9]).
p_ab([a3,a4,a5,a7,a9,a10]).
p_ab([a3,a4,a5,a7,a10]).
p_ab([a3,a4,a5,a8]).
p_ab([a3,a4,a5,a8,a9]).
p_ab([a3,a4,a5,a8,a9,a10]).
p_ab([a3,a4,a5,a8,a10]).
p_ab([a3,a4,a5,a9]).
p_ab([a3,a4,a5,a9,a10]).
p_ab([a3,a4,a5,a10]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a6,a7]).
p_ab([a3,a4,a6,a7,a8]).
p_ab([a3,a4,a6,a7,a8,a9]).
p_ab([a3,a4,a6,a7,a8,a9,a10]).
p_ab([a3,a4,a6,a7,a8,a10]).
p_ab([a3,a4,a6,a7,a9]).
p_ab([a3,a4,a6,a7,a9,a10]).
p_ab([a3,a4,a6,a7,a10]).
p_ab([a3,a4,a6,a8]).
p_ab([a3,a4,a6,a8,a9]).
p_ab([a3,a4,a6,a8,a9,a10]).
p_ab([a3,a4,a6,a8,a10]).
p_ab([a3,a4,a6,a9]).
p_ab([a3,a4,a6,a9,a10]).
p_ab([a3,a4,a6,a10]).
p_ab([a3,a4,a7]).
p_ab([a3,a4,a7,a8]).
p_ab([a3,a4,a7,a8,a9]).
p_ab([a3,a4,a7,a8,a9,a10]).
p_ab([a3,a4,a7,a8,a10]).
p_ab([a3,a4,a7,a9]).
p_ab([a3,a4,a7,a9,a10]).
p_ab([a3,a4,a7,a10]).
p_ab([a3,a4,a8]).
p_ab([a3,a4,a8,a9]).
p_ab([a3,a4,a8,a9,a10]).
p_ab([a3,a4,a8,a10]).
p_ab([a3,a4,a9]).
p_ab([a3,a4,a9,a10]).
p_ab([a3,a4,a10]).
p_ab([a3,a5]).
p_ab([a3,a5,a6]).
p_ab([a3,a5,a6,a7]).
p_ab([a3,a5,a6,a7,a8]).
p_ab([a3,a5,a6,a7,a8,a9]).
p_ab([a3,a5,a6,a7,a8,a9,a10]).
p_ab([a3,a5,a6,a7,a8,a10]).
p_ab([a3,a5,a6,a7,a9]).
p_ab([a3,a5,a6,a7,a9,a10]).
p_ab([a3,a5,a6,a7,a10]).
p_ab([a3,a5,a6,a8]).
p_ab([a3,a5,a6,a8,a9]).
p_ab([a3,a5,a6,a8,a9,a10]).
p_ab([a3,a5,a6,a8,a10]).
p_ab([a3,a5,a6,a9]).
p_ab([a3,a5,a6,a9,a10]).
p_ab([a3,a5,a6,a10]).
p_ab([a3,a5,a7]).
p_ab([a3,a5,a7,a8]).
p_ab([a3,a5,a7,a8,a9]).
p_ab([a3,a5,a7,a8,a9,a10]).
p_ab([a3,a5,a7,a8,a10]).
p_ab([a3,a5,a7,a9]).
p_ab([a3,a5,a7,a9,a10]).
p_ab([a3,a5,a7,a10]).
p_ab([a3,a5,a8]).
p_ab([a3,a5,a8,a9]).
p_ab([a3,a5,a8,a9,a10]).
p_ab([a3,a5,a8,a10]).
p_ab([a3,a5,a9]).
p_ab([a3,a5,a9,a10]).
p_ab([a3,a5,a10]).
p_ab([a3,a6]).
p_ab([a3,a6,a7]).
p_ab([a3,a6,a7,a8]).
p_ab([a3,a6,a7,a8,a9]).
p_ab([a3,a6,a7,a8,a9,a10]).
p_ab([a3,a6,a7,a8,a10]).
p_ab([a3,a6,a7,a9]).
p_ab([a3,a6,a7,a9,a10]).
p_ab([a3,a6,a7,a10]).
p_ab([a3,a6,a8]).
p_ab([a3,a6,a8,a9]).
p_ab([a3,a6,a8,a9,a10]).
p_ab([a3,a6,a8,a10]).
p_ab([a3,a6,a9]).
p_ab([a3,a6,a9,a10]).
p_ab([a3,a6,a10]).
p_ab([a3,a7]).
p_ab([a3,a7,a8]).
p_ab([a3,a7,a8,a9]).
p_ab([a3,a7,a8,a9,a10]).
p_ab([a3,a7,a8,a10]).
p_ab([a3,a7,a9]).
p_ab([a3,a7,a9,a10]).
p_ab([a3,a7,a10]).
p_ab([a3,a8]).
p_ab([a3,a8,a9]).
p_ab([a3,a8,a9,a10]).
p_ab([a3,a8,a10]).
p_ab([a3,a9]).
p_ab([a3,a9,a10]).
p_ab([a3,a10]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a4,a5,a6]).
p_ab([a4,a5,a6,a7]).
p_ab([a4,a5,a6,a7,a8]).
p_ab([a4,a5,a6,a7,a8,a9]).
p_ab([a4,a5,a6,a7,a8,a9,a10]).
p_ab([a4,a5,a6,a7,a8,a10]).
p_ab([a4,a5,a6,a7,a9]).
p_ab([a4,a5,a6,a7,a9,a10]).
p_ab([a4,a5,a6,a7,a10]).
p_ab([a4,a5,a6,a8]).
p_ab([a4,a5,a6,a8,a9]).
p_ab([a4,a5,a6,a8,a9,a10]).
p_ab([a4,a5,a6,a8,a10]).
p_ab([a4,a5,a6,a9]).
p_ab([a4,a5,a6,a9,a10]).
p_ab([a4,a5,a6,a10]).
p_ab([a4,a5,a7]).
p_ab([a4,a5,a7,a8]).
p_ab([a4,a5,a7,a8,a9]).
p_ab([a4,a5,a7,a8,a9,a10]).
p_ab([a4,a5,a7,a8,a10]).
p_ab([a4,a5,a7,a9]).
p_ab([a4,a5,a7,a9,a10]).
p_ab([a4,a5,a7,a10]).
p_ab([a4,a5,a8]).
p_ab([a4,a5,a8,a9]).
p_ab([a4,a5,a8,a9,a10]).
p_ab([a4,a5,a8,a10]).
p_ab([a4,a5,a9]).
p_ab([a4,a5,a9,a10]).
p_ab([a4,a5,a10]).
p_ab([a4,a6]).
p_ab([a4,a6,a7]).
p_ab([a4,a6,a7,a8]).
p_ab([a4,a6,a7,a8,a9]).
p_ab([a4,a6,a7,a8,a9,a10]).
p_ab([a4,a6,a7,a8,a10]).
p_ab([a4,a6,a7,a9]).
p_ab([a4,a6,a7,a9,a10]).
p_ab([a4,a6,a7,a10]).
p_ab([a4,a6,a8]).
p_ab([a4,a6,a8,a9]).
p_ab([a4,a6,a8,a9,a10]).
p_ab([a4,a6,a8,a10]).
p_ab([a4,a6,a9]).
p_ab([a4,a6,a9,a10]).
p_ab([a4,a6,a10]).
p_ab([a4,a7]).
p_ab([a4,a7,a8]).
p_ab([a4,a7,a8,a9]).
p_ab([a4,a7,a8,a9,a10]).
p_ab([a4,a7,a8,a10]).
p_ab([a4,a7,a9]).
p_ab([a4,a7,a9,a10]).
p_ab([a4,a7,a10]).
p_ab([a4,a8]).
p_ab([a4,a8,a9]).
p_ab([a4,a8,a9,a10]).
p_ab([a4,a8,a10]).
p_ab([a4,a9]).
p_ab([a4,a9,a10]).
p_ab([a4,a10]).
p_ab([a5]).
p_ab([a5,a6]).
p_ab([a5,a6,a7]).
p_ab([a5,a6,a7,a8]).
p_ab([a5,a6,a7,a8,a9]).
p_ab([a5,a6,a7,a8,a9,a10]).
p_ab([a5,a6,a7,a8,a10]).
p_ab([a5,a6,a7,a9]).
p_ab([a5,a6,a7,a9,a10]).
p_ab([a5,a6,a7,a10]).
p_ab([a5,a6,a8]).
p_ab([a5,a6,a8,a9]).
p_ab([a5,a6,a8,a9,a10]).
p_ab([a5,a6,a8,a10]).
p_ab([a5,a6,a9]).
p_ab([a5,a6,a9,a10]).
p_ab([a5,a6,a10]).
p_ab([a5,a7]).
p_ab([a5,a7,a8]).
p_ab([a5,a7,a8,a9]).
p_ab([a5,a7,a8,a9,a10]).
p_ab([a5,a7,a8,a10]).
p_ab([a5,a7,a9]).
p_ab([a5,a7,a9,a10]).
p_ab([a5,a7,a10]).
p_ab([a5,a8]).
p_ab([a5,a8,a9]).
p_ab([a5,a8,a9,a10]).
p_ab([a5,a8,a10]).
p_ab([a5,a9]).
p_ab([a5,a9,a10]).
p_ab([a5,a10]).
p_ab([a6]).
p_ab([a6,a7]).
p_ab([a6,a7,a8]).
p_ab([a6,a7,a8,a9]).
p_ab([a6,a7,a8,a9,a10]).
p_ab([a6,a7,a8,a10]).
p_ab([a6,a7,a9]).
p_ab([a6,a7,a9,a10]).
p_ab([a6,a7,a10]).
p_ab([a6,a8]).
p_ab([a6,a8,a9]).
p_ab([a6,a8,a9,a10]).
p_ab([a6,a8,a10]).
p_ab([a6,a9]).
p_ab([a6,a9,a10]).
p_ab([a6,a10]).
p_ab([a7]).
p_ab([a7,a8]).
p_ab([a7,a8,a9]).
p_ab([a7,a8,a9,a10]).
p_ab([a7,a8,a10]).
p_ab([a7,a9]).
p_ab([a7,a9,a10]).
p_ab([a7,a10]).
p_ab([a8]).
p_ab([a8,a9]).
p_ab([a8,a9,a10]).
p_ab([a8,a10]).
p_ab([a9]).
p_ab([a9,a10]).
p_ab([a10]).
:- table p_ab/1.
p(B3,C3) :- 
    (p_ab(D3),produce_context(C3,B3,D3)).
p_star_1(E3,E3) :- 
    false.
p_star_1(F3,G3) :- 
    dual(1,p,F3,G3).
p_star_2(H3,H3) :- 
    false.
p_star_2(G3,I3) :- 
    dual(2,p,G3,I3).
p_star_3(J3,J3) :- 
    false.
p_star_3(I3,K3) :- 
    dual(3,p,I3,K3).
p_star_4(L3,L3) :- 
    false.
p_star_4(K3,M3) :- 
    dual(4,p,K3,M3).
p_star_5(N3,N3) :- 
    false.
p_star_5(M3,O3) :- 
    dual(5,p,M3,O3).
p_star_6(P3,P3) :- 
    false.
p_star_6(O3,Q3) :- 
    dual(6,p,O3,Q3).
p_star_7(R3,R3) :- 
    false.
p_star_7(Q3,S3) :- 
    dual(7,p,Q3,S3).
p_star_8(T3,T3) :- 
    false.
p_star_8(S3,U3) :- 
    dual(8,p,S3,U3).
p_star_9(V3,V3) :- 
    false.
p_star_9(U3,W3) :- 
    dual(9,p,U3,W3).
p_star_10(X3,X3) :- 
    false.
p_star_10(W3,Y3) :- 
    dual(10,p,W3,Y3).
p_star_11(Z3,Z3) :- 
    false.
p_star_11(Y3,A4) :- 
    dual(11,p,Y3,A4).
p_star_12(B4,B4) :- 
    false.
p_star_12(A4,C4) :- 
    dual(12,p,A4,C4).
p_star_13(D4,D4) :- 
    false.
p_star_13(C4,E4) :- 
    dual(13,p,C4,E4).
p_star_14(F4,F4) :- 
    false.
p_star_14(E4,G4) :- 
    dual(14,p,E4,G4).
p_star_15(H4,H4) :- 
    false.
p_star_15(G4,I4) :- 
    dual(15,p,G4,I4).
p_star_16(J4,J4) :- 
    false.
p_star_16(I4,K4) :- 
    dual(16,p,I4,K4).
p_star_17(L4,L4) :- 
    false.
p_star_17(K4,M4) :- 
    dual(17,p,K4,M4).
p_star_18(N4,N4) :- 
    false.
p_star_18(M4,O4) :- 
    dual(18,p,M4,O4).
p_star_19(P4,P4) :- 
    false.
p_star_19(O4,Q4) :- 
    dual(19,p,O4,Q4).
p_star_20(R4,R4) :- 
    false.
p_star_20(Q4,S4) :- 
    dual(20,p,Q4,S4).
p_star_21(T4,T4) :- 
    false.
p_star_21(S4,U4) :- 
    dual(21,p,S4,U4).
p_star_22(V4,V4) :- 
    false.
p_star_22(U4,W4) :- 
    dual(22,p,U4,W4).
p_star_23(X4,X4) :- 
    false.
p_star_23(W4,Y4) :- 
    dual(23,p,W4,Y4).
p_star_24(Z4,Z4) :- 
    false.
p_star_24(Y4,A5) :- 
    dual(24,p,Y4,A5).
p_star_25(B5,B5) :- 
    false.
p_star_25(A5,C5) :- 
    dual(25,p,A5,C5).
p_star_26(D5,D5) :- 
    false.
p_star_26(C5,E5) :- 
    dual(26,p,C5,E5).
p_star_27(F5,F5) :- 
    false.
p_star_27(E5,G5) :- 
    dual(27,p,E5,G5).
p_star_28(H5,H5) :- 
    false.
p_star_28(G5,I5) :- 
    dual(28,p,G5,I5).
p_star_29(J5,J5) :- 
    false.
p_star_29(I5,K5) :- 
    dual(29,p,I5,K5).
p_star_30(L5,L5) :- 
    false.
p_star_30(K5,M5) :- 
    dual(30,p,K5,M5).
p_star_31(N5,N5) :- 
    false.
p_star_31(M5,O5) :- 
    dual(31,p,M5,O5).
p_star_32(P5,P5) :- 
    false.
p_star_32(O5,Q5) :- 
    dual(32,p,O5,Q5).
p_star_33(R5,R5) :- 
    false.
p_star_33(Q5,S5) :- 
    dual(33,p,Q5,S5).
p_star_34(T5,T5) :- 
    false.
p_star_34(S5,U5) :- 
    dual(34,p,S5,U5).
p_star_35(V5,V5) :- 
    false.
p_star_35(U5,W5) :- 
    dual(35,p,U5,W5).
p_star_36(X5,X5) :- 
    false.
p_star_36(W5,Y5) :- 
    dual(36,p,W5,Y5).
p_star_37(Z5,Z5) :- 
    false.
p_star_37(Y5,A6) :- 
    dual(37,p,Y5,A6).
p_star_38(B6,B6) :- 
    false.
p_star_38(A6,C6) :- 
    dual(38,p,A6,C6).
p_star_39(D6,D6) :- 
    false.
p_star_39(C6,E6) :- 
    dual(39,p,C6,E6).
p_star_40(F6,F6) :- 
    false.
p_star_40(E6,G6) :- 
    dual(40,p,E6,G6).
p_star_41(H6,H6) :- 
    false.
p_star_41(G6,I6) :- 
    dual(41,p,G6,I6).
p_star_42(J6,J6) :- 
    false.
p_star_42(I6,K6) :- 
    dual(42,p,I6,K6).
p_star_43(L6,L6) :- 
    false.
p_star_43(K6,M6) :- 
    dual(43,p,K6,M6).
p_star_44(N6,N6) :- 
    false.
p_star_44(M6,O6) :- 
    dual(44,p,M6,O6).
p_star_45(P6,P6) :- 
    false.
p_star_45(O6,Q6) :- 
    dual(45,p,O6,Q6).
p_star_46(R6,R6) :- 
    false.
p_star_46(Q6,S6) :- 
    dual(46,p,Q6,S6).
p_star_47(T6,T6) :- 
    false.
p_star_47(S6,U6) :- 
    dual(47,p,S6,U6).
p_star_48(V6,V6) :- 
    false.
p_star_48(U6,W6) :- 
    dual(48,p,U6,W6).
p_star_49(X6,X6) :- 
    false.
p_star_49(W6,Y6) :- 
    dual(49,p,W6,Y6).
p_star_50(Z6,Z6) :- 
    false.
p_star_50(Y6,A7) :- 
    dual(50,p,Y6,A7).
p_star_51(B7,B7) :- 
    false.
p_star_51(A7,C7) :- 
    dual(51,p,A7,C7).
p_star_52(D7,D7) :- 
    false.
p_star_52(C7,E7) :- 
    dual(52,p,C7,E7).
p_star_53(F7,F7) :- 
    false.
p_star_53(E7,G7) :- 
    dual(53,p,E7,G7).
p_star_54(H7,H7) :- 
    false.
p_star_54(G7,I7) :- 
    dual(54,p,G7,I7).
p_star_55(J7,J7) :- 
    false.
p_star_55(I7,K7) :- 
    dual(55,p,I7,K7).
p_star_56(L7,L7) :- 
    false.
p_star_56(K7,M7) :- 
    dual(56,p,K7,M7).
p_star_57(N7,N7) :- 
    false.
p_star_57(M7,O7) :- 
    dual(57,p,M7,O7).
p_star_58(P7,P7) :- 
    false.
p_star_58(O7,Q7) :- 
    dual(58,p,O7,Q7).
p_star_59(R7,R7) :- 
    false.
p_star_59(Q7,S7) :- 
    dual(59,p,Q7,S7).
p_star_60(T7,T7) :- 
    false.
p_star_60(S7,U7) :- 
    dual(60,p,S7,U7).
p_star_61(V7,V7) :- 
    false.
p_star_61(U7,W7) :- 
    dual(61,p,U7,W7).
p_star_62(X7,X7) :- 
    false.
p_star_62(W7,Y7) :- 
    dual(62,p,W7,Y7).
p_star_63(Z7,Z7) :- 
    false.
p_star_63(Y7,A8) :- 
    dual(63,p,Y7,A8).
p_star_64(B8,B8) :- 
    false.
p_star_64(A8,C8) :- 
    dual(64,p,A8,C8).
p_star_65(D8,D8) :- 
    false.
p_star_65(C8,E8) :- 
    dual(65,p,C8,E8).
p_star_66(F8,F8) :- 
    false.
p_star_66(E8,G8) :- 
    dual(66,p,E8,G8).
p_star_67(H8,H8) :- 
    false.
p_star_67(G8,I8) :- 
    dual(67,p,G8,I8).
p_star_68(J8,J8) :- 
    false.
p_star_68(I8,K8) :- 
    dual(68,p,I8,K8).
p_star_69(L8,L8) :- 
    false.
p_star_69(K8,M8) :- 
    dual(69,p,K8,M8).
p_star_70(N8,N8) :- 
    false.
p_star_70(M8,O8) :- 
    dual(70,p,M8,O8).
p_star_71(P8,P8) :- 
    false.
p_star_71(O8,Q8) :- 
    dual(71,p,O8,Q8).
p_star_72(R8,R8) :- 
    false.
p_star_72(Q8,S8) :- 
    dual(72,p,Q8,S8).
p_star_73(T8,T8) :- 
    false.
p_star_73(S8,U8) :- 
    dual(73,p,S8,U8).
p_star_74(V8,V8) :- 
    false.
p_star_74(U8,W8) :- 
    dual(74,p,U8,W8).
p_star_75(X8,X8) :- 
    false.
p_star_75(W8,Y8) :- 
    dual(75,p,W8,Y8).
p_star_76(Z8,Z8) :- 
    false.
p_star_76(Y8,A9) :- 
    dual(76,p,Y8,A9).
p_star_77(B9,B9) :- 
    false.
p_star_77(A9,C9) :- 
    dual(77,p,A9,C9).
p_star_78(D9,D9) :- 
    false.
p_star_78(C9,E9) :- 
    dual(78,p,C9,E9).
p_star_79(F9,F9) :- 
    false.
p_star_79(E9,G9) :- 
    dual(79,p,E9,G9).
p_star_80(H9,H9) :- 
    false.
p_star_80(G9,I9) :- 
    dual(80,p,G9,I9).
p_star_81(J9,J9) :- 
    false.
p_star_81(I9,K9) :- 
    dual(81,p,I9,K9).
p_star_82(L9,L9) :- 
    false.
p_star_82(K9,M9) :- 
    dual(82,p,K9,M9).
p_star_83(N9,N9) :- 
    false.
p_star_83(M9,O9) :- 
    dual(83,p,M9,O9).
p_star_84(P9,P9) :- 
    false.
p_star_84(O9,Q9) :- 
    dual(84,p,O9,Q9).
p_star_85(R9,R9) :- 
    false.
p_star_85(Q9,S9) :- 
    dual(85,p,Q9,S9).
p_star_86(T9,T9) :- 
    false.
p_star_86(S9,U9) :- 
    dual(86,p,S9,U9).
p_star_87(V9,V9) :- 
    false.
p_star_87(U9,W9) :- 
    dual(87,p,U9,W9).
p_star_88(X9,X9) :- 
    false.
p_star_88(W9,Y9) :- 
    dual(88,p,W9,Y9).
p_star_89(Z9,Z9) :- 
    false.
p_star_89(Y9,A10) :- 
    dual(89,p,Y9,A10).
p_star_90(B10,B10) :- 
    false.
p_star_90(A10,C10) :- 
    dual(90,p,A10,C10).
p_star_91(D10,D10) :- 
    false.
p_star_91(C10,E10) :- 
    dual(91,p,C10,E10).
p_star_92(F10,F10) :- 
    false.
p_star_92(E10,G10) :- 
    dual(92,p,E10,G10).
p_star_93(H10,H10) :- 
    false.
p_star_93(G10,I10) :- 
    dual(93,p,G10,I10).
p_star_94(J10,J10) :- 
    false.
p_star_94(I10,K10) :- 
    dual(94,p,I10,K10).
p_star_95(L10,L10) :- 
    false.
p_star_95(K10,M10) :- 
    dual(95,p,K10,M10).
p_star_96(N10,N10) :- 
    false.
p_star_96(M10,O10) :- 
    dual(96,p,M10,O10).
p_star_97(P10,P10) :- 
    false.
p_star_97(O10,Q10) :- 
    dual(97,p,O10,Q10).
p_star_98(R10,R10) :- 
    false.
p_star_98(Q10,S10) :- 
    dual(98,p,Q10,S10).
p_star_99(T10,T10) :- 
    false.
p_star_99(S10,U10) :- 
    dual(99,p,S10,U10).
p_star_100(V10,V10) :- 
    false.
p_star_100(U10,W10) :- 
    dual(100,p,U10,W10).
p_star_101(X10,X10) :- 
    false.
p_star_101(W10,Y10) :- 
    dual(101,p,W10,Y10).
p_star_102(Z10,Z10) :- 
    false.
p_star_102(Y10,A11) :- 
    dual(102,p,Y10,A11).
p_star_103(B11,B11) :- 
    false.
p_star_103(A11,C11) :- 
    dual(103,p,A11,C11).
p_star_104(D11,D11) :- 
    false.
p_star_104(C11,E11) :- 
    dual(104,p,C11,E11).
p_star_105(F11,F11) :- 
    false.
p_star_105(E11,G11) :- 
    dual(105,p,E11,G11).
p_star_106(H11,H11) :- 
    false.
p_star_106(G11,I11) :- 
    dual(106,p,G11,I11).
p_star_107(J11,J11) :- 
    false.
p_star_107(I11,K11) :- 
    dual(107,p,I11,K11).
p_star_108(L11,L11) :- 
    false.
p_star_108(K11,M11) :- 
    dual(108,p,K11,M11).
p_star_109(N11,N11) :- 
    false.
p_star_109(M11,O11) :- 
    dual(109,p,M11,O11).
p_star_110(P11,P11) :- 
    false.
p_star_110(O11,Q11) :- 
    dual(110,p,O11,Q11).
p_star_111(R11,R11) :- 
    false.
p_star_111(Q11,S11) :- 
    dual(111,p,Q11,S11).
p_star_112(T11,T11) :- 
    false.
p_star_112(S11,U11) :- 
    dual(112,p,S11,U11).
p_star_113(V11,V11) :- 
    false.
p_star_113(U11,W11) :- 
    dual(113,p,U11,W11).
p_star_114(X11,X11) :- 
    false.
p_star_114(W11,Y11) :- 
    dual(114,p,W11,Y11).
p_star_115(Z11,Z11) :- 
    false.
p_star_115(Y11,A12) :- 
    dual(115,p,Y11,A12).
p_star_116(B12,B12) :- 
    false.
p_star_116(A12,C12) :- 
    dual(116,p,A12,C12).
p_star_117(D12,D12) :- 
    false.
p_star_117(C12,E12) :- 
    dual(117,p,C12,E12).
p_star_118(F12,F12) :- 
    false.
p_star_118(E12,G12) :- 
    dual(118,p,E12,G12).
p_star_119(H12,H12) :- 
    false.
p_star_119(G12,I12) :- 
    dual(119,p,G12,I12).
p_star_120(J12,J12) :- 
    false.
p_star_120(I12,K12) :- 
    dual(120,p,I12,K12).
p_star_121(L12,L12) :- 
    false.
p_star_121(K12,M12) :- 
    dual(121,p,K12,M12).
p_star_122(N12,N12) :- 
    false.
p_star_122(M12,O12) :- 
    dual(122,p,M12,O12).
p_star_123(P12,P12) :- 
    false.
p_star_123(O12,Q12) :- 
    dual(123,p,O12,Q12).
p_star_124(R12,R12) :- 
    false.
p_star_124(Q12,S12) :- 
    dual(124,p,Q12,S12).
p_star_125(T12,T12) :- 
    false.
p_star_125(S12,U12) :- 
    dual(125,p,S12,U12).
p_star_126(V12,V12) :- 
    false.
p_star_126(U12,W12) :- 
    dual(126,p,U12,W12).
p_star_127(X12,X12) :- 
    false.
p_star_127(W12,Y12) :- 
    dual(127,p,W12,Y12).
p_star_128(Z12,Z12) :- 
    false.
p_star_128(Y12,A13) :- 
    dual(128,p,Y12,A13).
p_star_129(B13,B13) :- 
    false.
p_star_129(A13,C13) :- 
    dual(129,p,A13,C13).
p_star_130(D13,D13) :- 
    false.
p_star_130(C13,E13) :- 
    dual(130,p,C13,E13).
p_star_131(F13,F13) :- 
    false.
p_star_131(E13,G13) :- 
    dual(131,p,E13,G13).
p_star_132(H13,H13) :- 
    false.
p_star_132(G13,I13) :- 
    dual(132,p,G13,I13).
p_star_133(J13,J13) :- 
    false.
p_star_133(I13,K13) :- 
    dual(133,p,I13,K13).
p_star_134(L13,L13) :- 
    false.
p_star_134(K13,M13) :- 
    dual(134,p,K13,M13).
p_star_135(N13,N13) :- 
    false.
p_star_135(M13,O13) :- 
    dual(135,p,M13,O13).
p_star_136(P13,P13) :- 
    false.
p_star_136(O13,Q13) :- 
    dual(136,p,O13,Q13).
p_star_137(R13,R13) :- 
    false.
p_star_137(Q13,S13) :- 
    dual(137,p,Q13,S13).
p_star_138(T13,T13) :- 
    false.
p_star_138(S13,U13) :- 
    dual(138,p,S13,U13).
p_star_139(V13,V13) :- 
    false.
p_star_139(U13,W13) :- 
    dual(139,p,U13,W13).
p_star_140(X13,X13) :- 
    false.
p_star_140(W13,Y13) :- 
    dual(140,p,W13,Y13).
p_star_141(Z13,Z13) :- 
    false.
p_star_141(Y13,A14) :- 
    dual(141,p,Y13,A14).
p_star_142(B14,B14) :- 
    false.
p_star_142(A14,C14) :- 
    dual(142,p,A14,C14).
p_star_143(D14,D14) :- 
    false.
p_star_143(C14,E14) :- 
    dual(143,p,C14,E14).
p_star_144(F14,F14) :- 
    false.
p_star_144(E14,G14) :- 
    dual(144,p,E14,G14).
p_star_145(H14,H14) :- 
    false.
p_star_145(G14,I14) :- 
    dual(145,p,G14,I14).
p_star_146(J14,J14) :- 
    false.
p_star_146(I14,K14) :- 
    dual(146,p,I14,K14).
p_star_147(L14,L14) :- 
    false.
p_star_147(K14,M14) :- 
    dual(147,p,K14,M14).
p_star_148(N14,N14) :- 
    false.
p_star_148(M14,O14) :- 
    dual(148,p,M14,O14).
p_star_149(P14,P14) :- 
    false.
p_star_149(O14,Q14) :- 
    dual(149,p,O14,Q14).
p_star_150(R14,R14) :- 
    false.
p_star_150(Q14,S14) :- 
    dual(150,p,Q14,S14).
p_star_151(T14,T14) :- 
    false.
p_star_151(S14,U14) :- 
    dual(151,p,S14,U14).
p_star_152(V14,V14) :- 
    false.
p_star_152(U14,W14) :- 
    dual(152,p,U14,W14).
p_star_153(X14,X14) :- 
    false.
p_star_153(W14,Y14) :- 
    dual(153,p,W14,Y14).
p_star_154(Z14,Z14) :- 
    false.
p_star_154(Y14,A15) :- 
    dual(154,p,Y14,A15).
p_star_155(B15,B15) :- 
    false.
p_star_155(A15,C15) :- 
    dual(155,p,A15,C15).
p_star_156(D15,D15) :- 
    false.
p_star_156(C15,E15) :- 
    dual(156,p,C15,E15).
p_star_157(F15,F15) :- 
    false.
p_star_157(E15,G15) :- 
    dual(157,p,E15,G15).
p_star_158(H15,H15) :- 
    false.
p_star_158(G15,I15) :- 
    dual(158,p,G15,I15).
p_star_159(J15,J15) :- 
    false.
p_star_159(I15,K15) :- 
    dual(159,p,I15,K15).
p_star_160(L15,L15) :- 
    false.
p_star_160(K15,M15) :- 
    dual(160,p,K15,M15).
p_star_161(N15,N15) :- 
    false.
p_star_161(M15,O15) :- 
    dual(161,p,M15,O15).
p_star_162(P15,P15) :- 
    false.
p_star_162(O15,Q15) :- 
    dual(162,p,O15,Q15).
p_star_163(R15,R15) :- 
    false.
p_star_163(Q15,S15) :- 
    dual(163,p,Q15,S15).
p_star_164(T15,T15) :- 
    false.
p_star_164(S15,U15) :- 
    dual(164,p,S15,U15).
p_star_165(V15,V15) :- 
    false.
p_star_165(U15,W15) :- 
    dual(165,p,U15,W15).
p_star_166(X15,X15) :- 
    false.
p_star_166(W15,Y15) :- 
    dual(166,p,W15,Y15).
p_star_167(Z15,Z15) :- 
    false.
p_star_167(Y15,A16) :- 
    dual(167,p,Y15,A16).
p_star_168(B16,B16) :- 
    false.
p_star_168(A16,C16) :- 
    dual(168,p,A16,C16).
p_star_169(D16,D16) :- 
    false.
p_star_169(C16,E16) :- 
    dual(169,p,C16,E16).
p_star_170(F16,F16) :- 
    false.
p_star_170(E16,G16) :- 
    dual(170,p,E16,G16).
p_star_171(H16,H16) :- 
    false.
p_star_171(G16,I16) :- 
    dual(171,p,G16,I16).
p_star_172(J16,J16) :- 
    false.
p_star_172(I16,K16) :- 
    dual(172,p,I16,K16).
p_star_173(L16,L16) :- 
    false.
p_star_173(K16,M16) :- 
    dual(173,p,K16,M16).
p_star_174(N16,N16) :- 
    false.
p_star_174(M16,O16) :- 
    dual(174,p,M16,O16).
p_star_175(P16,P16) :- 
    false.
p_star_175(O16,Q16) :- 
    dual(175,p,O16,Q16).
p_star_176(R16,R16) :- 
    false.
p_star_176(Q16,S16) :- 
    dual(176,p,Q16,S16).
p_star_177(T16,T16) :- 
    false.
p_star_177(S16,U16) :- 
    dual(177,p,S16,U16).
p_star_178(V16,V16) :- 
    false.
p_star_178(U16,W16) :- 
    dual(178,p,U16,W16).
p_star_179(X16,X16) :- 
    false.
p_star_179(W16,Y16) :- 
    dual(179,p,W16,Y16).
p_star_180(Z16,Z16) :- 
    false.
p_star_180(Y16,A17) :- 
    dual(180,p,Y16,A17).
p_star_181(B17,B17) :- 
    false.
p_star_181(A17,C17) :- 
    dual(181,p,A17,C17).
p_star_182(D17,D17) :- 
    false.
p_star_182(C17,E17) :- 
    dual(182,p,C17,E17).
p_star_183(F17,F17) :- 
    false.
p_star_183(E17,G17) :- 
    dual(183,p,E17,G17).
p_star_184(H17,H17) :- 
    false.
p_star_184(G17,I17) :- 
    dual(184,p,G17,I17).
p_star_185(J17,J17) :- 
    false.
p_star_185(I17,K17) :- 
    dual(185,p,I17,K17).
p_star_186(L17,L17) :- 
    false.
p_star_186(K17,M17) :- 
    dual(186,p,K17,M17).
p_star_187(N17,N17) :- 
    false.
p_star_187(M17,O17) :- 
    dual(187,p,M17,O17).
p_star_188(P17,P17) :- 
    false.
p_star_188(O17,Q17) :- 
    dual(188,p,O17,Q17).
p_star_189(R17,R17) :- 
    false.
p_star_189(Q17,S17) :- 
    dual(189,p,Q17,S17).
p_star_190(T17,T17) :- 
    false.
p_star_190(S17,U17) :- 
    dual(190,p,S17,U17).
p_star_191(V17,V17) :- 
    false.
p_star_191(U17,W17) :- 
    dual(191,p,U17,W17).
p_star_192(X17,X17) :- 
    false.
p_star_192(W17,Y17) :- 
    dual(192,p,W17,Y17).
p_star_193(Z17,Z17) :- 
    false.
p_star_193(Y17,A18) :- 
    dual(193,p,Y17,A18).
p_star_194(B18,B18) :- 
    false.
p_star_194(A18,C18) :- 
    dual(194,p,A18,C18).
p_star_195(D18,D18) :- 
    false.
p_star_195(C18,E18) :- 
    dual(195,p,C18,E18).
p_star_196(F18,F18) :- 
    false.
p_star_196(E18,G18) :- 
    dual(196,p,E18,G18).
p_star_197(H18,H18) :- 
    false.
p_star_197(G18,I18) :- 
    dual(197,p,G18,I18).
p_star_198(J18,J18) :- 
    false.
p_star_198(I18,K18) :- 
    dual(198,p,I18,K18).
p_star_199(L18,L18) :- 
    false.
p_star_199(K18,M18) :- 
    dual(199,p,K18,M18).
p_star_200(N18,N18) :- 
    false.
p_star_200(M18,O18) :- 
    dual(200,p,M18,O18).
p_star_201(P18,P18) :- 
    false.
p_star_201(O18,Q18) :- 
    dual(201,p,O18,Q18).
p_star_202(R18,R18) :- 
    false.
p_star_202(Q18,S18) :- 
    dual(202,p,Q18,S18).
p_star_203(T18,T18) :- 
    false.
p_star_203(S18,U18) :- 
    dual(203,p,S18,U18).
p_star_204(V18,V18) :- 
    false.
p_star_204(U18,W18) :- 
    dual(204,p,U18,W18).
p_star_205(X18,X18) :- 
    false.
p_star_205(W18,Y18) :- 
    dual(205,p,W18,Y18).
p_star_206(Z18,Z18) :- 
    false.
p_star_206(Y18,A19) :- 
    dual(206,p,Y18,A19).
p_star_207(B19,B19) :- 
    false.
p_star_207(A19,C19) :- 
    dual(207,p,A19,C19).
p_star_208(D19,D19) :- 
    false.
p_star_208(C19,E19) :- 
    dual(208,p,C19,E19).
p_star_209(F19,F19) :- 
    false.
p_star_209(E19,G19) :- 
    dual(209,p,E19,G19).
p_star_210(H19,H19) :- 
    false.
p_star_210(G19,I19) :- 
    dual(210,p,G19,I19).
p_star_211(J19,J19) :- 
    false.
p_star_211(I19,K19) :- 
    dual(211,p,I19,K19).
p_star_212(L19,L19) :- 
    false.
p_star_212(K19,M19) :- 
    dual(212,p,K19,M19).
p_star_213(N19,N19) :- 
    false.
p_star_213(M19,O19) :- 
    dual(213,p,M19,O19).
p_star_214(P19,P19) :- 
    false.
p_star_214(O19,Q19) :- 
    dual(214,p,O19,Q19).
p_star_215(R19,R19) :- 
    false.
p_star_215(Q19,S19) :- 
    dual(215,p,Q19,S19).
p_star_216(T19,T19) :- 
    false.
p_star_216(S19,U19) :- 
    dual(216,p,S19,U19).
p_star_217(V19,V19) :- 
    false.
p_star_217(U19,W19) :- 
    dual(217,p,U19,W19).
p_star_218(X19,X19) :- 
    false.
p_star_218(W19,Y19) :- 
    dual(218,p,W19,Y19).
p_star_219(Z19,Z19) :- 
    false.
p_star_219(Y19,A20) :- 
    dual(219,p,Y19,A20).
p_star_220(B20,B20) :- 
    false.
p_star_220(A20,C20) :- 
    dual(220,p,A20,C20).
p_star_221(D20,D20) :- 
    false.
p_star_221(C20,E20) :- 
    dual(221,p,C20,E20).
p_star_222(F20,F20) :- 
    false.
p_star_222(E20,G20) :- 
    dual(222,p,E20,G20).
p_star_223(H20,H20) :- 
    false.
p_star_223(G20,I20) :- 
    dual(223,p,G20,I20).
p_star_224(J20,J20) :- 
    false.
p_star_224(I20,K20) :- 
    dual(224,p,I20,K20).
p_star_225(L20,L20) :- 
    false.
p_star_225(K20,M20) :- 
    dual(225,p,K20,M20).
p_star_226(N20,N20) :- 
    false.
p_star_226(M20,O20) :- 
    dual(226,p,M20,O20).
p_star_227(P20,P20) :- 
    false.
p_star_227(O20,Q20) :- 
    dual(227,p,O20,Q20).
p_star_228(R20,R20) :- 
    false.
p_star_228(Q20,S20) :- 
    dual(228,p,Q20,S20).
p_star_229(T20,T20) :- 
    false.
p_star_229(S20,U20) :- 
    dual(229,p,S20,U20).
p_star_230(V20,V20) :- 
    false.
p_star_230(U20,W20) :- 
    dual(230,p,U20,W20).
p_star_231(X20,X20) :- 
    false.
p_star_231(W20,Y20) :- 
    dual(231,p,W20,Y20).
p_star_232(Z20,Z20) :- 
    false.
p_star_232(Y20,A21) :- 
    dual(232,p,Y20,A21).
p_star_233(B21,B21) :- 
    false.
p_star_233(A21,C21) :- 
    dual(233,p,A21,C21).
p_star_234(D21,D21) :- 
    false.
p_star_234(C21,E21) :- 
    dual(234,p,C21,E21).
p_star_235(F21,F21) :- 
    false.
p_star_235(E21,G21) :- 
    dual(235,p,E21,G21).
p_star_236(H21,H21) :- 
    false.
p_star_236(G21,I21) :- 
    dual(236,p,G21,I21).
p_star_237(J21,J21) :- 
    false.
p_star_237(I21,K21) :- 
    dual(237,p,I21,K21).
p_star_238(L21,L21) :- 
    false.
p_star_238(K21,M21) :- 
    dual(238,p,K21,M21).
p_star_239(N21,N21) :- 
    false.
p_star_239(M21,O21) :- 
    dual(239,p,M21,O21).
p_star_240(P21,P21) :- 
    false.
p_star_240(O21,Q21) :- 
    dual(240,p,O21,Q21).
p_star_241(R21,R21) :- 
    false.
p_star_241(Q21,S21) :- 
    dual(241,p,Q21,S21).
p_star_242(T21,T21) :- 
    false.
p_star_242(S21,U21) :- 
    dual(242,p,S21,U21).
p_star_243(V21,V21) :- 
    false.
p_star_243(U21,W21) :- 
    dual(243,p,U21,W21).
p_star_244(X21,X21) :- 
    false.
p_star_244(W21,Y21) :- 
    dual(244,p,W21,Y21).
p_star_245(Z21,Z21) :- 
    false.
p_star_245(Y21,A22) :- 
    dual(245,p,Y21,A22).
p_star_246(B22,B22) :- 
    false.
p_star_246(A22,C22) :- 
    dual(246,p,A22,C22).
p_star_247(D22,D22) :- 
    false.
p_star_247(C22,E22) :- 
    dual(247,p,C22,E22).
p_star_248(F22,F22) :- 
    false.
p_star_248(E22,G22) :- 
    dual(248,p,E22,G22).
p_star_249(H22,H22) :- 
    false.
p_star_249(G22,I22) :- 
    dual(249,p,G22,I22).
p_star_250(J22,J22) :- 
    false.
p_star_250(I22,K22) :- 
    dual(250,p,I22,K22).
p_star_251(L22,L22) :- 
    false.
p_star_251(K22,M22) :- 
    dual(251,p,K22,M22).
p_star_252(N22,N22) :- 
    false.
p_star_252(M22,O22) :- 
    dual(252,p,M22,O22).
p_star_253(P22,P22) :- 
    false.
p_star_253(O22,Q22) :- 
    dual(253,p,O22,Q22).
p_star_254(R22,R22) :- 
    false.
p_star_254(Q22,S22) :- 
    dual(254,p,Q22,S22).
p_star_255(T22,T22) :- 
    false.
p_star_255(S22,U22) :- 
    dual(255,p,S22,U22).
p_star_256(V22,V22) :- 
    false.
p_star_256(U22,W22) :- 
    dual(256,p,U22,W22).
p_star_257(X22,X22) :- 
    false.
p_star_257(W22,Y22) :- 
    dual(257,p,W22,Y22).
p_star_258(Z22,Z22) :- 
    false.
p_star_258(Y22,A23) :- 
    dual(258,p,Y22,A23).
p_star_259(B23,B23) :- 
    false.
p_star_259(A23,C23) :- 
    dual(259,p,A23,C23).
p_star_260(D23,D23) :- 
    false.
p_star_260(C23,E23) :- 
    dual(260,p,C23,E23).
p_star_261(F23,F23) :- 
    false.
p_star_261(E23,G23) :- 
    dual(261,p,E23,G23).
p_star_262(H23,H23) :- 
    false.
p_star_262(G23,I23) :- 
    dual(262,p,G23,I23).
p_star_263(J23,J23) :- 
    false.
p_star_263(I23,K23) :- 
    dual(263,p,I23,K23).
p_star_264(L23,L23) :- 
    false.
p_star_264(K23,M23) :- 
    dual(264,p,K23,M23).
p_star_265(N23,N23) :- 
    false.
p_star_265(M23,O23) :- 
    dual(265,p,M23,O23).
p_star_266(P23,P23) :- 
    false.
p_star_266(O23,Q23) :- 
    dual(266,p,O23,Q23).
p_star_267(R23,R23) :- 
    false.
p_star_267(Q23,S23) :- 
    dual(267,p,Q23,S23).
p_star_268(T23,T23) :- 
    false.
p_star_268(S23,U23) :- 
    dual(268,p,S23,U23).
p_star_269(V23,V23) :- 
    false.
p_star_269(U23,W23) :- 
    dual(269,p,U23,W23).
p_star_270(X23,X23) :- 
    false.
p_star_270(W23,Y23) :- 
    dual(270,p,W23,Y23).
p_star_271(Z23,Z23) :- 
    false.
p_star_271(Y23,A24) :- 
    dual(271,p,Y23,A24).
p_star_272(B24,B24) :- 
    false.
p_star_272(A24,C24) :- 
    dual(272,p,A24,C24).
p_star_273(D24,D24) :- 
    false.
p_star_273(C24,E24) :- 
    dual(273,p,C24,E24).
p_star_274(F24,F24) :- 
    false.
p_star_274(E24,G24) :- 
    dual(274,p,E24,G24).
p_star_275(H24,H24) :- 
    false.
p_star_275(G24,I24) :- 
    dual(275,p,G24,I24).
p_star_276(J24,J24) :- 
    false.
p_star_276(I24,K24) :- 
    dual(276,p,I24,K24).
p_star_277(L24,L24) :- 
    false.
p_star_277(K24,M24) :- 
    dual(277,p,K24,M24).
p_star_278(N24,N24) :- 
    false.
p_star_278(M24,O24) :- 
    dual(278,p,M24,O24).
p_star_279(P24,P24) :- 
    false.
p_star_279(O24,Q24) :- 
    dual(279,p,O24,Q24).
p_star_280(R24,R24) :- 
    false.
p_star_280(Q24,S24) :- 
    dual(280,p,Q24,S24).
p_star_281(T24,T24) :- 
    false.
p_star_281(S24,U24) :- 
    dual(281,p,S24,U24).
p_star_282(V24,V24) :- 
    false.
p_star_282(U24,W24) :- 
    dual(282,p,U24,W24).
p_star_283(X24,X24) :- 
    false.
p_star_283(W24,Y24) :- 
    dual(283,p,W24,Y24).
p_star_284(Z24,Z24) :- 
    false.
p_star_284(Y24,A25) :- 
    dual(284,p,Y24,A25).
p_star_285(B25,B25) :- 
    false.
p_star_285(A25,C25) :- 
    dual(285,p,A25,C25).
p_star_286(D25,D25) :- 
    false.
p_star_286(C25,E25) :- 
    dual(286,p,C25,E25).
p_star_287(F25,F25) :- 
    false.
p_star_287(E25,G25) :- 
    dual(287,p,E25,G25).
p_star_288(H25,H25) :- 
    false.
p_star_288(G25,I25) :- 
    dual(288,p,G25,I25).
p_star_289(J25,J25) :- 
    false.
p_star_289(I25,K25) :- 
    dual(289,p,I25,K25).
p_star_290(L25,L25) :- 
    false.
p_star_290(K25,M25) :- 
    dual(290,p,K25,M25).
p_star_291(N25,N25) :- 
    false.
p_star_291(M25,O25) :- 
    dual(291,p,M25,O25).
p_star_292(P25,P25) :- 
    false.
p_star_292(O25,Q25) :- 
    dual(292,p,O25,Q25).
p_star_293(R25,R25) :- 
    false.
p_star_293(Q25,S25) :- 
    dual(293,p,Q25,S25).
p_star_294(T25,T25) :- 
    false.
p_star_294(S25,U25) :- 
    dual(294,p,S25,U25).
p_star_295(V25,V25) :- 
    false.
p_star_295(U25,W25) :- 
    dual(295,p,U25,W25).
p_star_296(X25,X25) :- 
    false.
p_star_296(W25,Y25) :- 
    dual(296,p,W25,Y25).
p_star_297(Z25,Z25) :- 
    false.
p_star_297(Y25,A26) :- 
    dual(297,p,Y25,A26).
p_star_298(B26,B26) :- 
    false.
p_star_298(A26,C26) :- 
    dual(298,p,A26,C26).
p_star_299(D26,D26) :- 
    false.
p_star_299(C26,E26) :- 
    dual(299,p,C26,E26).
p_star_300(F26,F26) :- 
    false.
p_star_300(E26,G26) :- 
    dual(300,p,E26,G26).
p_star_301(H26,H26) :- 
    false.
p_star_301(G26,I26) :- 
    dual(301,p,G26,I26).
p_star_302(J26,J26) :- 
    false.
p_star_302(I26,K26) :- 
    dual(302,p,I26,K26).
p_star_303(L26,L26) :- 
    false.
p_star_303(K26,M26) :- 
    dual(303,p,K26,M26).
p_star_304(N26,N26) :- 
    false.
p_star_304(M26,O26) :- 
    dual(304,p,M26,O26).
p_star_305(P26,P26) :- 
    false.
p_star_305(O26,Q26) :- 
    dual(305,p,O26,Q26).
p_star_306(R26,R26) :- 
    false.
p_star_306(Q26,S26) :- 
    dual(306,p,Q26,S26).
p_star_307(T26,T26) :- 
    false.
p_star_307(S26,U26) :- 
    dual(307,p,S26,U26).
p_star_308(V26,V26) :- 
    false.
p_star_308(U26,W26) :- 
    dual(308,p,U26,W26).
p_star_309(X26,X26) :- 
    false.
p_star_309(W26,Y26) :- 
    dual(309,p,W26,Y26).
p_star_310(Z26,Z26) :- 
    false.
p_star_310(Y26,A27) :- 
    dual(310,p,Y26,A27).
p_star_311(B27,B27) :- 
    false.
p_star_311(A27,C27) :- 
    dual(311,p,A27,C27).
p_star_312(D27,D27) :- 
    false.
p_star_312(C27,E27) :- 
    dual(312,p,C27,E27).
p_star_313(F27,F27) :- 
    false.
p_star_313(E27,G27) :- 
    dual(313,p,E27,G27).
p_star_314(H27,H27) :- 
    false.
p_star_314(G27,I27) :- 
    dual(314,p,G27,I27).
p_star_315(J27,J27) :- 
    false.
p_star_315(I27,K27) :- 
    dual(315,p,I27,K27).
p_star_316(L27,L27) :- 
    false.
p_star_316(K27,M27) :- 
    dual(316,p,K27,M27).
p_star_317(N27,N27) :- 
    false.
p_star_317(M27,O27) :- 
    dual(317,p,M27,O27).
p_star_318(P27,P27) :- 
    false.
p_star_318(O27,Q27) :- 
    dual(318,p,O27,Q27).
p_star_319(R27,R27) :- 
    false.
p_star_319(Q27,S27) :- 
    dual(319,p,Q27,S27).
p_star_320(T27,T27) :- 
    false.
p_star_320(S27,U27) :- 
    dual(320,p,S27,U27).
p_star_321(V27,V27) :- 
    false.
p_star_321(U27,W27) :- 
    dual(321,p,U27,W27).
p_star_322(X27,X27) :- 
    false.
p_star_322(W27,Y27) :- 
    dual(322,p,W27,Y27).
p_star_323(Z27,Z27) :- 
    false.
p_star_323(Y27,A28) :- 
    dual(323,p,Y27,A28).
p_star_324(B28,B28) :- 
    false.
p_star_324(A28,C28) :- 
    dual(324,p,A28,C28).
p_star_325(D28,D28) :- 
    false.
p_star_325(C28,E28) :- 
    dual(325,p,C28,E28).
p_star_326(F28,F28) :- 
    false.
p_star_326(E28,G28) :- 
    dual(326,p,E28,G28).
p_star_327(H28,H28) :- 
    false.
p_star_327(G28,I28) :- 
    dual(327,p,G28,I28).
p_star_328(J28,J28) :- 
    false.
p_star_328(I28,K28) :- 
    dual(328,p,I28,K28).
p_star_329(L28,L28) :- 
    false.
p_star_329(K28,M28) :- 
    dual(329,p,K28,M28).
p_star_330(N28,N28) :- 
    false.
p_star_330(M28,O28) :- 
    dual(330,p,M28,O28).
p_star_331(P28,P28) :- 
    false.
p_star_331(O28,Q28) :- 
    dual(331,p,O28,Q28).
p_star_332(R28,R28) :- 
    false.
p_star_332(Q28,S28) :- 
    dual(332,p,Q28,S28).
p_star_333(T28,T28) :- 
    false.
p_star_333(S28,U28) :- 
    dual(333,p,S28,U28).
p_star_334(V28,V28) :- 
    false.
p_star_334(U28,W28) :- 
    dual(334,p,U28,W28).
p_star_335(X28,X28) :- 
    false.
p_star_335(W28,Y28) :- 
    dual(335,p,W28,Y28).
p_star_336(Z28,Z28) :- 
    false.
p_star_336(Y28,A29) :- 
    dual(336,p,Y28,A29).
p_star_337(B29,B29) :- 
    false.
p_star_337(A29,C29) :- 
    dual(337,p,A29,C29).
p_star_338(D29,D29) :- 
    false.
p_star_338(C29,E29) :- 
    dual(338,p,C29,E29).
p_star_339(F29,F29) :- 
    false.
p_star_339(E29,G29) :- 
    dual(339,p,E29,G29).
p_star_340(H29,H29) :- 
    false.
p_star_340(G29,I29) :- 
    dual(340,p,G29,I29).
p_star_341(J29,J29) :- 
    false.
p_star_341(I29,K29) :- 
    dual(341,p,I29,K29).
p_star_342(L29,L29) :- 
    false.
p_star_342(K29,M29) :- 
    dual(342,p,K29,M29).
p_star_343(N29,N29) :- 
    false.
p_star_343(M29,O29) :- 
    dual(343,p,M29,O29).
p_star_344(P29,P29) :- 
    false.
p_star_344(O29,Q29) :- 
    dual(344,p,O29,Q29).
p_star_345(R29,R29) :- 
    false.
p_star_345(Q29,S29) :- 
    dual(345,p,Q29,S29).
p_star_346(T29,T29) :- 
    false.
p_star_346(S29,U29) :- 
    dual(346,p,S29,U29).
p_star_347(V29,V29) :- 
    false.
p_star_347(U29,W29) :- 
    dual(347,p,U29,W29).
p_star_348(X29,X29) :- 
    false.
p_star_348(W29,Y29) :- 
    dual(348,p,W29,Y29).
p_star_349(Z29,Z29) :- 
    false.
p_star_349(Y29,A30) :- 
    dual(349,p,Y29,A30).
p_star_350(B30,B30) :- 
    false.
p_star_350(A30,C30) :- 
    dual(350,p,A30,C30).
p_star_351(D30,D30) :- 
    false.
p_star_351(C30,E30) :- 
    dual(351,p,C30,E30).
p_star_352(F30,F30) :- 
    false.
p_star_352(E30,G30) :- 
    dual(352,p,E30,G30).
p_star_353(H30,H30) :- 
    false.
p_star_353(G30,I30) :- 
    dual(353,p,G30,I30).
p_star_354(J30,J30) :- 
    false.
p_star_354(I30,K30) :- 
    dual(354,p,I30,K30).
p_star_355(L30,L30) :- 
    false.
p_star_355(K30,M30) :- 
    dual(355,p,K30,M30).
p_star_356(N30,N30) :- 
    false.
p_star_356(M30,O30) :- 
    dual(356,p,M30,O30).
p_star_357(P30,P30) :- 
    false.
p_star_357(O30,Q30) :- 
    dual(357,p,O30,Q30).
p_star_358(R30,R30) :- 
    false.
p_star_358(Q30,S30) :- 
    dual(358,p,Q30,S30).
p_star_359(T30,T30) :- 
    false.
p_star_359(S30,U30) :- 
    dual(359,p,S30,U30).
p_star_360(V30,V30) :- 
    false.
p_star_360(U30,W30) :- 
    dual(360,p,U30,W30).
p_star_361(X30,X30) :- 
    false.
p_star_361(W30,Y30) :- 
    dual(361,p,W30,Y30).
p_star_362(Z30,Z30) :- 
    false.
p_star_362(Y30,A31) :- 
    dual(362,p,Y30,A31).
p_star_363(B31,B31) :- 
    false.
p_star_363(A31,C31) :- 
    dual(363,p,A31,C31).
p_star_364(D31,D31) :- 
    false.
p_star_364(C31,E31) :- 
    dual(364,p,C31,E31).
p_star_365(F31,F31) :- 
    false.
p_star_365(E31,G31) :- 
    dual(365,p,E31,G31).
p_star_366(H31,H31) :- 
    false.
p_star_366(G31,I31) :- 
    dual(366,p,G31,I31).
p_star_367(J31,J31) :- 
    false.
p_star_367(I31,K31) :- 
    dual(367,p,I31,K31).
p_star_368(L31,L31) :- 
    false.
p_star_368(K31,M31) :- 
    dual(368,p,K31,M31).
p_star_369(N31,N31) :- 
    false.
p_star_369(M31,O31) :- 
    dual(369,p,M31,O31).
p_star_370(P31,P31) :- 
    false.
p_star_370(O31,Q31) :- 
    dual(370,p,O31,Q31).
p_star_371(R31,R31) :- 
    false.
p_star_371(Q31,S31) :- 
    dual(371,p,Q31,S31).
p_star_372(T31,T31) :- 
    false.
p_star_372(S31,U31) :- 
    dual(372,p,S31,U31).
p_star_373(V31,V31) :- 
    false.
p_star_373(U31,W31) :- 
    dual(373,p,U31,W31).
p_star_374(X31,X31) :- 
    false.
p_star_374(W31,Y31) :- 
    dual(374,p,W31,Y31).
p_star_375(Z31,Z31) :- 
    false.
p_star_375(Y31,A32) :- 
    dual(375,p,Y31,A32).
p_star_376(B32,B32) :- 
    false.
p_star_376(A32,C32) :- 
    dual(376,p,A32,C32).
p_star_377(D32,D32) :- 
    false.
p_star_377(C32,E32) :- 
    dual(377,p,C32,E32).
p_star_378(F32,F32) :- 
    false.
p_star_378(E32,G32) :- 
    dual(378,p,E32,G32).
p_star_379(H32,H32) :- 
    false.
p_star_379(G32,I32) :- 
    dual(379,p,G32,I32).
p_star_380(J32,J32) :- 
    false.
p_star_380(I32,K32) :- 
    dual(380,p,I32,K32).
p_star_381(L32,L32) :- 
    false.
p_star_381(K32,M32) :- 
    dual(381,p,K32,M32).
p_star_382(N32,N32) :- 
    false.
p_star_382(M32,O32) :- 
    dual(382,p,M32,O32).
p_star_383(P32,P32) :- 
    false.
p_star_383(O32,Q32) :- 
    dual(383,p,O32,Q32).
p_star_384(R32,R32) :- 
    false.
p_star_384(Q32,S32) :- 
    dual(384,p,Q32,S32).
p_star_385(T32,T32) :- 
    false.
p_star_385(S32,U32) :- 
    dual(385,p,S32,U32).
p_star_386(V32,V32) :- 
    false.
p_star_386(U32,W32) :- 
    dual(386,p,U32,W32).
p_star_387(X32,X32) :- 
    false.
p_star_387(W32,Y32) :- 
    dual(387,p,W32,Y32).
p_star_388(Z32,Z32) :- 
    false.
p_star_388(Y32,A33) :- 
    dual(388,p,Y32,A33).
p_star_389(B33,B33) :- 
    false.
p_star_389(A33,C33) :- 
    dual(389,p,A33,C33).
p_star_390(D33,D33) :- 
    false.
p_star_390(C33,E33) :- 
    dual(390,p,C33,E33).
p_star_391(F33,F33) :- 
    false.
p_star_391(E33,G33) :- 
    dual(391,p,E33,G33).
p_star_392(H33,H33) :- 
    false.
p_star_392(G33,I33) :- 
    dual(392,p,G33,I33).
p_star_393(J33,J33) :- 
    false.
p_star_393(I33,K33) :- 
    dual(393,p,I33,K33).
p_star_394(L33,L33) :- 
    false.
p_star_394(K33,M33) :- 
    dual(394,p,K33,M33).
p_star_395(N33,N33) :- 
    false.
p_star_395(M33,O33) :- 
    dual(395,p,M33,O33).
p_star_396(P33,P33) :- 
    false.
p_star_396(O33,Q33) :- 
    dual(396,p,O33,Q33).
p_star_397(R33,R33) :- 
    false.
p_star_397(Q33,S33) :- 
    dual(397,p,Q33,S33).
p_star_398(T33,T33) :- 
    false.
p_star_398(S33,U33) :- 
    dual(398,p,S33,U33).
p_star_399(V33,V33) :- 
    false.
p_star_399(U33,W33) :- 
    dual(399,p,U33,W33).
p_star_400(X33,X33) :- 
    false.
p_star_400(W33,Y33) :- 
    dual(400,p,W33,Y33).
p_star_401(Z33,Z33) :- 
    false.
p_star_401(Y33,A34) :- 
    dual(401,p,Y33,A34).
p_star_402(B34,B34) :- 
    false.
p_star_402(A34,C34) :- 
    dual(402,p,A34,C34).
p_star_403(D34,D34) :- 
    false.
p_star_403(C34,E34) :- 
    dual(403,p,C34,E34).
p_star_404(F34,F34) :- 
    false.
p_star_404(E34,G34) :- 
    dual(404,p,E34,G34).
p_star_405(H34,H34) :- 
    false.
p_star_405(G34,I34) :- 
    dual(405,p,G34,I34).
p_star_406(J34,J34) :- 
    false.
p_star_406(I34,K34) :- 
    dual(406,p,I34,K34).
p_star_407(L34,L34) :- 
    false.
p_star_407(K34,M34) :- 
    dual(407,p,K34,M34).
p_star_408(N34,N34) :- 
    false.
p_star_408(M34,O34) :- 
    dual(408,p,M34,O34).
p_star_409(P34,P34) :- 
    false.
p_star_409(O34,Q34) :- 
    dual(409,p,O34,Q34).
p_star_410(R34,R34) :- 
    false.
p_star_410(Q34,S34) :- 
    dual(410,p,Q34,S34).
p_star_411(T34,T34) :- 
    false.
p_star_411(S34,U34) :- 
    dual(411,p,S34,U34).
p_star_412(V34,V34) :- 
    false.
p_star_412(U34,W34) :- 
    dual(412,p,U34,W34).
p_star_413(X34,X34) :- 
    false.
p_star_413(W34,Y34) :- 
    dual(413,p,W34,Y34).
p_star_414(Z34,Z34) :- 
    false.
p_star_414(Y34,A35) :- 
    dual(414,p,Y34,A35).
p_star_415(B35,B35) :- 
    false.
p_star_415(A35,C35) :- 
    dual(415,p,A35,C35).
p_star_416(D35,D35) :- 
    false.
p_star_416(C35,E35) :- 
    dual(416,p,C35,E35).
p_star_417(F35,F35) :- 
    false.
p_star_417(E35,G35) :- 
    dual(417,p,E35,G35).
p_star_418(H35,H35) :- 
    false.
p_star_418(G35,I35) :- 
    dual(418,p,G35,I35).
p_star_419(J35,J35) :- 
    false.
p_star_419(I35,K35) :- 
    dual(419,p,I35,K35).
p_star_420(L35,L35) :- 
    false.
p_star_420(K35,M35) :- 
    dual(420,p,K35,M35).
p_star_421(N35,N35) :- 
    false.
p_star_421(M35,O35) :- 
    dual(421,p,M35,O35).
p_star_422(P35,P35) :- 
    false.
p_star_422(O35,Q35) :- 
    dual(422,p,O35,Q35).
p_star_423(R35,R35) :- 
    false.
p_star_423(Q35,S35) :- 
    dual(423,p,Q35,S35).
p_star_424(T35,T35) :- 
    false.
p_star_424(S35,U35) :- 
    dual(424,p,S35,U35).
p_star_425(V35,V35) :- 
    false.
p_star_425(U35,W35) :- 
    dual(425,p,U35,W35).
p_star_426(X35,X35) :- 
    false.
p_star_426(W35,Y35) :- 
    dual(426,p,W35,Y35).
p_star_427(Z35,Z35) :- 
    false.
p_star_427(Y35,A36) :- 
    dual(427,p,Y35,A36).
p_star_428(B36,B36) :- 
    false.
p_star_428(A36,C36) :- 
    dual(428,p,A36,C36).
p_star_429(D36,D36) :- 
    false.
p_star_429(C36,E36) :- 
    dual(429,p,C36,E36).
p_star_430(F36,F36) :- 
    false.
p_star_430(E36,G36) :- 
    dual(430,p,E36,G36).
p_star_431(H36,H36) :- 
    false.
p_star_431(G36,I36) :- 
    dual(431,p,G36,I36).
p_star_432(J36,J36) :- 
    false.
p_star_432(I36,K36) :- 
    dual(432,p,I36,K36).
p_star_433(L36,L36) :- 
    false.
p_star_433(K36,M36) :- 
    dual(433,p,K36,M36).
p_star_434(N36,N36) :- 
    false.
p_star_434(M36,O36) :- 
    dual(434,p,M36,O36).
p_star_435(P36,P36) :- 
    false.
p_star_435(O36,Q36) :- 
    dual(435,p,O36,Q36).
p_star_436(R36,R36) :- 
    false.
p_star_436(Q36,S36) :- 
    dual(436,p,Q36,S36).
p_star_437(T36,T36) :- 
    false.
p_star_437(S36,U36) :- 
    dual(437,p,S36,U36).
p_star_438(V36,V36) :- 
    false.
p_star_438(U36,W36) :- 
    dual(438,p,U36,W36).
p_star_439(X36,X36) :- 
    false.
p_star_439(W36,Y36) :- 
    dual(439,p,W36,Y36).
p_star_440(Z36,Z36) :- 
    false.
p_star_440(Y36,A37) :- 
    dual(440,p,Y36,A37).
p_star_441(B37,B37) :- 
    false.
p_star_441(A37,C37) :- 
    dual(441,p,A37,C37).
p_star_442(D37,D37) :- 
    false.
p_star_442(C37,E37) :- 
    dual(442,p,C37,E37).
p_star_443(F37,F37) :- 
    false.
p_star_443(E37,G37) :- 
    dual(443,p,E37,G37).
p_star_444(H37,H37) :- 
    false.
p_star_444(G37,I37) :- 
    dual(444,p,G37,I37).
p_star_445(J37,J37) :- 
    false.
p_star_445(I37,K37) :- 
    dual(445,p,I37,K37).
p_star_446(L37,L37) :- 
    false.
p_star_446(K37,M37) :- 
    dual(446,p,K37,M37).
p_star_447(N37,N37) :- 
    false.
p_star_447(M37,O37) :- 
    dual(447,p,M37,O37).
p_star_448(P37,P37) :- 
    false.
p_star_448(O37,Q37) :- 
    dual(448,p,O37,Q37).
p_star_449(R37,R37) :- 
    false.
p_star_449(Q37,S37) :- 
    dual(449,p,Q37,S37).
p_star_450(T37,T37) :- 
    false.
p_star_450(S37,U37) :- 
    dual(450,p,S37,U37).
p_star_451(V37,V37) :- 
    false.
p_star_451(U37,W37) :- 
    dual(451,p,U37,W37).
p_star_452(X37,X37) :- 
    false.
p_star_452(W37,Y37) :- 
    dual(452,p,W37,Y37).
p_star_453(Z37,Z37) :- 
    false.
p_star_453(Y37,A38) :- 
    dual(453,p,Y37,A38).
p_star_454(B38,B38) :- 
    false.
p_star_454(A38,C38) :- 
    dual(454,p,A38,C38).
p_star_455(D38,D38) :- 
    false.
p_star_455(C38,E38) :- 
    dual(455,p,C38,E38).
p_star_456(F38,F38) :- 
    false.
p_star_456(E38,G38) :- 
    dual(456,p,E38,G38).
p_star_457(H38,H38) :- 
    false.
p_star_457(G38,I38) :- 
    dual(457,p,G38,I38).
p_star_458(J38,J38) :- 
    false.
p_star_458(I38,K38) :- 
    dual(458,p,I38,K38).
p_star_459(L38,L38) :- 
    false.
p_star_459(K38,M38) :- 
    dual(459,p,K38,M38).
p_star_460(N38,N38) :- 
    false.
p_star_460(M38,O38) :- 
    dual(460,p,M38,O38).
p_star_461(P38,P38) :- 
    false.
p_star_461(O38,Q38) :- 
    dual(461,p,O38,Q38).
p_star_462(R38,R38) :- 
    false.
p_star_462(Q38,S38) :- 
    dual(462,p,Q38,S38).
p_star_463(T38,T38) :- 
    false.
p_star_463(S38,U38) :- 
    dual(463,p,S38,U38).
p_star_464(V38,V38) :- 
    false.
p_star_464(U38,W38) :- 
    dual(464,p,U38,W38).
p_star_465(X38,X38) :- 
    false.
p_star_465(W38,Y38) :- 
    dual(465,p,W38,Y38).
p_star_466(Z38,Z38) :- 
    false.
p_star_466(Y38,A39) :- 
    dual(466,p,Y38,A39).
p_star_467(B39,B39) :- 
    false.
p_star_467(A39,C39) :- 
    dual(467,p,A39,C39).
p_star_468(D39,D39) :- 
    false.
p_star_468(C39,E39) :- 
    dual(468,p,C39,E39).
p_star_469(F39,F39) :- 
    false.
p_star_469(E39,G39) :- 
    dual(469,p,E39,G39).
p_star_470(H39,H39) :- 
    false.
p_star_470(G39,I39) :- 
    dual(470,p,G39,I39).
p_star_471(J39,J39) :- 
    false.
p_star_471(I39,K39) :- 
    dual(471,p,I39,K39).
p_star_472(L39,L39) :- 
    false.
p_star_472(K39,M39) :- 
    dual(472,p,K39,M39).
p_star_473(N39,N39) :- 
    false.
p_star_473(M39,O39) :- 
    dual(473,p,M39,O39).
p_star_474(P39,P39) :- 
    false.
p_star_474(O39,Q39) :- 
    dual(474,p,O39,Q39).
p_star_475(R39,R39) :- 
    false.
p_star_475(Q39,S39) :- 
    dual(475,p,Q39,S39).
p_star_476(T39,T39) :- 
    false.
p_star_476(S39,U39) :- 
    dual(476,p,S39,U39).
p_star_477(V39,V39) :- 
    false.
p_star_477(U39,W39) :- 
    dual(477,p,U39,W39).
p_star_478(X39,X39) :- 
    false.
p_star_478(W39,Y39) :- 
    dual(478,p,W39,Y39).
p_star_479(Z39,Z39) :- 
    false.
p_star_479(Y39,A40) :- 
    dual(479,p,Y39,A40).
p_star_480(B40,B40) :- 
    false.
p_star_480(A40,C40) :- 
    dual(480,p,A40,C40).
p_star_481(D40,D40) :- 
    false.
p_star_481(C40,E40) :- 
    dual(481,p,C40,E40).
p_star_482(F40,F40) :- 
    false.
p_star_482(E40,G40) :- 
    dual(482,p,E40,G40).
p_star_483(H40,H40) :- 
    false.
p_star_483(G40,I40) :- 
    dual(483,p,G40,I40).
p_star_484(J40,J40) :- 
    false.
p_star_484(I40,K40) :- 
    dual(484,p,I40,K40).
p_star_485(L40,L40) :- 
    false.
p_star_485(K40,M40) :- 
    dual(485,p,K40,M40).
p_star_486(N40,N40) :- 
    false.
p_star_486(M40,O40) :- 
    dual(486,p,M40,O40).
p_star_487(P40,P40) :- 
    false.
p_star_487(O40,Q40) :- 
    dual(487,p,O40,Q40).
p_star_488(R40,R40) :- 
    false.
p_star_488(Q40,S40) :- 
    dual(488,p,Q40,S40).
p_star_489(T40,T40) :- 
    false.
p_star_489(S40,U40) :- 
    dual(489,p,S40,U40).
p_star_490(V40,V40) :- 
    false.
p_star_490(U40,W40) :- 
    dual(490,p,U40,W40).
p_star_491(X40,X40) :- 
    false.
p_star_491(W40,Y40) :- 
    dual(491,p,W40,Y40).
p_star_492(Z40,Z40) :- 
    false.
p_star_492(Y40,A41) :- 
    dual(492,p,Y40,A41).
p_star_493(B41,B41) :- 
    false.
p_star_493(A41,C41) :- 
    dual(493,p,A41,C41).
p_star_494(D41,D41) :- 
    false.
p_star_494(C41,E41) :- 
    dual(494,p,C41,E41).
p_star_495(F41,F41) :- 
    false.
p_star_495(E41,G41) :- 
    dual(495,p,E41,G41).
p_star_496(H41,H41) :- 
    false.
p_star_496(G41,I41) :- 
    dual(496,p,G41,I41).
p_star_497(J41,J41) :- 
    false.
p_star_497(I41,K41) :- 
    dual(497,p,I41,K41).
p_star_498(L41,L41) :- 
    false.
p_star_498(K41,M41) :- 
    dual(498,p,K41,M41).
p_star_499(N41,N41) :- 
    false.
p_star_499(M41,O41) :- 
    dual(499,p,M41,O41).
p_star_500(P41,P41) :- 
    false.
p_star_500(O41,Q41) :- 
    dual(500,p,O41,Q41).
p_star_501(R41,R41) :- 
    false.
p_star_501(Q41,S41) :- 
    dual(501,p,Q41,S41).
p_star_502(T41,T41) :- 
    false.
p_star_502(S41,U41) :- 
    dual(502,p,S41,U41).
p_star_503(V41,V41) :- 
    false.
p_star_503(U41,W41) :- 
    dual(503,p,U41,W41).
p_star_504(X41,X41) :- 
    false.
p_star_504(W41,Y41) :- 
    dual(504,p,W41,Y41).
p_star_505(Z41,Z41) :- 
    false.
p_star_505(Y41,A42) :- 
    dual(505,p,Y41,A42).
p_star_506(B42,B42) :- 
    false.
p_star_506(A42,C42) :- 
    dual(506,p,A42,C42).
p_star_507(D42,D42) :- 
    false.
p_star_507(C42,E42) :- 
    dual(507,p,C42,E42).
p_star_508(F42,F42) :- 
    false.
p_star_508(E42,G42) :- 
    dual(508,p,E42,G42).
p_star_509(H42,H42) :- 
    false.
p_star_509(G42,I42) :- 
    dual(509,p,G42,I42).
p_star_510(J42,J42) :- 
    false.
p_star_510(I42,K42) :- 
    dual(510,p,I42,K42).
p_star_511(L42,L42) :- 
    false.
p_star_511(K42,M42) :- 
    dual(511,p,K42,M42).
p_star_512(N42,N42) :- 
    false.
p_star_512(M42,O42) :- 
    dual(512,p,M42,O42).
p_star_513(P42,P42) :- 
    false.
p_star_513(O42,Q42) :- 
    dual(513,p,O42,Q42).
p_star_514(R42,R42) :- 
    false.
p_star_514(Q42,S42) :- 
    dual(514,p,Q42,S42).
p_star_515(T42,T42) :- 
    false.
p_star_515(S42,U42) :- 
    dual(515,p,S42,U42).
p_star_516(V42,V42) :- 
    false.
p_star_516(U42,W42) :- 
    dual(516,p,U42,W42).
p_star_517(X42,X42) :- 
    false.
p_star_517(W42,Y42) :- 
    dual(517,p,W42,Y42).
p_star_518(Z42,Z42) :- 
    false.
p_star_518(Y42,A43) :- 
    dual(518,p,Y42,A43).
p_star_519(B43,B43) :- 
    false.
p_star_519(A43,C43) :- 
    dual(519,p,A43,C43).
p_star_520(D43,D43) :- 
    false.
p_star_520(C43,E43) :- 
    dual(520,p,C43,E43).
p_star_521(F43,F43) :- 
    false.
p_star_521(E43,G43) :- 
    dual(521,p,E43,G43).
p_star_522(H43,H43) :- 
    false.
p_star_522(G43,I43) :- 
    dual(522,p,G43,I43).
p_star_523(J43,J43) :- 
    false.
p_star_523(I43,K43) :- 
    dual(523,p,I43,K43).
p_star_524(L43,L43) :- 
    false.
p_star_524(K43,M43) :- 
    dual(524,p,K43,M43).
p_star_525(N43,N43) :- 
    false.
p_star_525(M43,O43) :- 
    dual(525,p,M43,O43).
p_star_526(P43,P43) :- 
    false.
p_star_526(O43,Q43) :- 
    dual(526,p,O43,Q43).
p_star_527(R43,R43) :- 
    false.
p_star_527(Q43,S43) :- 
    dual(527,p,Q43,S43).
p_star_528(T43,T43) :- 
    false.
p_star_528(S43,U43) :- 
    dual(528,p,S43,U43).
p_star_529(V43,V43) :- 
    false.
p_star_529(U43,W43) :- 
    dual(529,p,U43,W43).
p_star_530(X43,X43) :- 
    false.
p_star_530(W43,Y43) :- 
    dual(530,p,W43,Y43).
p_star_531(Z43,Z43) :- 
    false.
p_star_531(Y43,A44) :- 
    dual(531,p,Y43,A44).
p_star_532(B44,B44) :- 
    false.
p_star_532(A44,C44) :- 
    dual(532,p,A44,C44).
p_star_533(D44,D44) :- 
    false.
p_star_533(C44,E44) :- 
    dual(533,p,C44,E44).
p_star_534(F44,F44) :- 
    false.
p_star_534(E44,G44) :- 
    dual(534,p,E44,G44).
p_star_535(H44,H44) :- 
    false.
p_star_535(G44,I44) :- 
    dual(535,p,G44,I44).
p_star_536(J44,J44) :- 
    false.
p_star_536(I44,K44) :- 
    dual(536,p,I44,K44).
p_star_537(L44,L44) :- 
    false.
p_star_537(K44,M44) :- 
    dual(537,p,K44,M44).
p_star_538(N44,N44) :- 
    false.
p_star_538(M44,O44) :- 
    dual(538,p,M44,O44).
p_star_539(P44,P44) :- 
    false.
p_star_539(O44,Q44) :- 
    dual(539,p,O44,Q44).
p_star_540(R44,R44) :- 
    false.
p_star_540(Q44,S44) :- 
    dual(540,p,Q44,S44).
p_star_541(T44,T44) :- 
    false.
p_star_541(S44,U44) :- 
    dual(541,p,S44,U44).
p_star_542(V44,V44) :- 
    false.
p_star_542(U44,W44) :- 
    dual(542,p,U44,W44).
p_star_543(X44,X44) :- 
    false.
p_star_543(W44,Y44) :- 
    dual(543,p,W44,Y44).
p_star_544(Z44,Z44) :- 
    false.
p_star_544(Y44,A45) :- 
    dual(544,p,Y44,A45).
p_star_545(B45,B45) :- 
    false.
p_star_545(A45,C45) :- 
    dual(545,p,A45,C45).
p_star_546(D45,D45) :- 
    false.
p_star_546(C45,E45) :- 
    dual(546,p,C45,E45).
p_star_547(F45,F45) :- 
    false.
p_star_547(E45,G45) :- 
    dual(547,p,E45,G45).
p_star_548(H45,H45) :- 
    false.
p_star_548(G45,I45) :- 
    dual(548,p,G45,I45).
p_star_549(J45,J45) :- 
    false.
p_star_549(I45,K45) :- 
    dual(549,p,I45,K45).
p_star_550(L45,L45) :- 
    false.
p_star_550(K45,M45) :- 
    dual(550,p,K45,M45).
p_star_551(N45,N45) :- 
    false.
p_star_551(M45,O45) :- 
    dual(551,p,M45,O45).
p_star_552(P45,P45) :- 
    false.
p_star_552(O45,Q45) :- 
    dual(552,p,O45,Q45).
p_star_553(R45,R45) :- 
    false.
p_star_553(Q45,S45) :- 
    dual(553,p,Q45,S45).
p_star_554(T45,T45) :- 
    false.
p_star_554(S45,U45) :- 
    dual(554,p,S45,U45).
p_star_555(V45,V45) :- 
    false.
p_star_555(U45,W45) :- 
    dual(555,p,U45,W45).
p_star_556(X45,X45) :- 
    false.
p_star_556(W45,Y45) :- 
    dual(556,p,W45,Y45).
p_star_557(Z45,Z45) :- 
    false.
p_star_557(Y45,A46) :- 
    dual(557,p,Y45,A46).
p_star_558(B46,B46) :- 
    false.
p_star_558(A46,C46) :- 
    dual(558,p,A46,C46).
p_star_559(D46,D46) :- 
    false.
p_star_559(C46,E46) :- 
    dual(559,p,C46,E46).
p_star_560(F46,F46) :- 
    false.
p_star_560(E46,G46) :- 
    dual(560,p,E46,G46).
p_star_561(H46,H46) :- 
    false.
p_star_561(G46,I46) :- 
    dual(561,p,G46,I46).
p_star_562(J46,J46) :- 
    false.
p_star_562(I46,K46) :- 
    dual(562,p,I46,K46).
p_star_563(L46,L46) :- 
    false.
p_star_563(K46,M46) :- 
    dual(563,p,K46,M46).
p_star_564(N46,N46) :- 
    false.
p_star_564(M46,O46) :- 
    dual(564,p,M46,O46).
p_star_565(P46,P46) :- 
    false.
p_star_565(O46,Q46) :- 
    dual(565,p,O46,Q46).
p_star_566(R46,R46) :- 
    false.
p_star_566(Q46,S46) :- 
    dual(566,p,Q46,S46).
p_star_567(T46,T46) :- 
    false.
p_star_567(S46,U46) :- 
    dual(567,p,S46,U46).
p_star_568(V46,V46) :- 
    false.
p_star_568(U46,W46) :- 
    dual(568,p,U46,W46).
p_star_569(X46,X46) :- 
    false.
p_star_569(W46,Y46) :- 
    dual(569,p,W46,Y46).
p_star_570(Z46,Z46) :- 
    false.
p_star_570(Y46,A47) :- 
    dual(570,p,Y46,A47).
p_star_571(B47,B47) :- 
    false.
p_star_571(A47,C47) :- 
    dual(571,p,A47,C47).
p_star_572(D47,D47) :- 
    false.
p_star_572(C47,E47) :- 
    dual(572,p,C47,E47).
p_star_573(F47,F47) :- 
    false.
p_star_573(E47,G47) :- 
    dual(573,p,E47,G47).
p_star_574(H47,H47) :- 
    false.
p_star_574(G47,I47) :- 
    dual(574,p,G47,I47).
p_star_575(J47,J47) :- 
    false.
p_star_575(I47,K47) :- 
    dual(575,p,I47,K47).
p_star_576(L47,L47) :- 
    false.
p_star_576(K47,M47) :- 
    dual(576,p,K47,M47).
p_star_577(N47,N47) :- 
    false.
p_star_577(M47,O47) :- 
    dual(577,p,M47,O47).
p_star_578(P47,P47) :- 
    false.
p_star_578(O47,Q47) :- 
    dual(578,p,O47,Q47).
p_star_579(R47,R47) :- 
    false.
p_star_579(Q47,S47) :- 
    dual(579,p,Q47,S47).
p_star_580(T47,T47) :- 
    false.
p_star_580(S47,U47) :- 
    dual(580,p,S47,U47).
p_star_581(V47,V47) :- 
    false.
p_star_581(U47,W47) :- 
    dual(581,p,U47,W47).
p_star_582(X47,X47) :- 
    false.
p_star_582(W47,Y47) :- 
    dual(582,p,W47,Y47).
p_star_583(Z47,Z47) :- 
    false.
p_star_583(Y47,A48) :- 
    dual(583,p,Y47,A48).
p_star_584(B48,B48) :- 
    false.
p_star_584(A48,C48) :- 
    dual(584,p,A48,C48).
p_star_585(D48,D48) :- 
    false.
p_star_585(C48,E48) :- 
    dual(585,p,C48,E48).
p_star_586(F48,F48) :- 
    false.
p_star_586(E48,G48) :- 
    dual(586,p,E48,G48).
p_star_587(H48,H48) :- 
    false.
p_star_587(G48,I48) :- 
    dual(587,p,G48,I48).
p_star_588(J48,J48) :- 
    false.
p_star_588(I48,K48) :- 
    dual(588,p,I48,K48).
p_star_589(L48,L48) :- 
    false.
p_star_589(K48,M48) :- 
    dual(589,p,K48,M48).
p_star_590(N48,N48) :- 
    false.
p_star_590(M48,O48) :- 
    dual(590,p,M48,O48).
p_star_591(P48,P48) :- 
    false.
p_star_591(O48,Q48) :- 
    dual(591,p,O48,Q48).
p_star_592(R48,R48) :- 
    false.
p_star_592(Q48,S48) :- 
    dual(592,p,Q48,S48).
p_star_593(T48,T48) :- 
    false.
p_star_593(S48,U48) :- 
    dual(593,p,S48,U48).
p_star_594(V48,V48) :- 
    false.
p_star_594(U48,W48) :- 
    dual(594,p,U48,W48).
p_star_595(X48,X48) :- 
    false.
p_star_595(W48,Y48) :- 
    dual(595,p,W48,Y48).
p_star_596(Z48,Z48) :- 
    false.
p_star_596(Y48,A49) :- 
    dual(596,p,Y48,A49).
p_star_597(B49,B49) :- 
    false.
p_star_597(A49,C49) :- 
    dual(597,p,A49,C49).
p_star_598(D49,D49) :- 
    false.
p_star_598(C49,E49) :- 
    dual(598,p,C49,E49).
p_star_599(F49,F49) :- 
    false.
p_star_599(E49,G49) :- 
    dual(599,p,E49,G49).
p_star_600(H49,H49) :- 
    false.
p_star_600(G49,I49) :- 
    dual(600,p,G49,I49).
p_star_601(J49,J49) :- 
    false.
p_star_601(I49,K49) :- 
    dual(601,p,I49,K49).
p_star_602(L49,L49) :- 
    false.
p_star_602(K49,M49) :- 
    dual(602,p,K49,M49).
p_star_603(N49,N49) :- 
    false.
p_star_603(M49,O49) :- 
    dual(603,p,M49,O49).
p_star_604(P49,P49) :- 
    false.
p_star_604(O49,Q49) :- 
    dual(604,p,O49,Q49).
p_star_605(R49,R49) :- 
    false.
p_star_605(Q49,S49) :- 
    dual(605,p,Q49,S49).
p_star_606(T49,T49) :- 
    false.
p_star_606(S49,U49) :- 
    dual(606,p,S49,U49).
p_star_607(V49,V49) :- 
    false.
p_star_607(U49,W49) :- 
    dual(607,p,U49,W49).
p_star_608(X49,X49) :- 
    false.
p_star_608(W49,Y49) :- 
    dual(608,p,W49,Y49).
p_star_609(Z49,Z49) :- 
    false.
p_star_609(Y49,A50) :- 
    dual(609,p,Y49,A50).
p_star_610(B50,B50) :- 
    false.
p_star_610(A50,C50) :- 
    dual(610,p,A50,C50).
p_star_611(D50,D50) :- 
    false.
p_star_611(C50,E50) :- 
    dual(611,p,C50,E50).
p_star_612(F50,F50) :- 
    false.
p_star_612(E50,G50) :- 
    dual(612,p,E50,G50).
p_star_613(H50,H50) :- 
    false.
p_star_613(G50,I50) :- 
    dual(613,p,G50,I50).
p_star_614(J50,J50) :- 
    false.
p_star_614(I50,K50) :- 
    dual(614,p,I50,K50).
p_star_615(L50,L50) :- 
    false.
p_star_615(K50,M50) :- 
    dual(615,p,K50,M50).
p_star_616(N50,N50) :- 
    false.
p_star_616(M50,O50) :- 
    dual(616,p,M50,O50).
p_star_617(P50,P50) :- 
    false.
p_star_617(O50,Q50) :- 
    dual(617,p,O50,Q50).
p_star_618(R50,R50) :- 
    false.
p_star_618(Q50,S50) :- 
    dual(618,p,Q50,S50).
p_star_619(T50,T50) :- 
    false.
p_star_619(S50,U50) :- 
    dual(619,p,S50,U50).
p_star_620(V50,V50) :- 
    false.
p_star_620(U50,W50) :- 
    dual(620,p,U50,W50).
p_star_621(X50,X50) :- 
    false.
p_star_621(W50,Y50) :- 
    dual(621,p,W50,Y50).
p_star_622(Z50,Z50) :- 
    false.
p_star_622(Y50,A51) :- 
    dual(622,p,Y50,A51).
p_star_623(B51,B51) :- 
    false.
p_star_623(A51,C51) :- 
    dual(623,p,A51,C51).
p_star_624(D51,D51) :- 
    false.
p_star_624(C51,E51) :- 
    dual(624,p,C51,E51).
p_star_625(F51,F51) :- 
    false.
p_star_625(E51,G51) :- 
    dual(625,p,E51,G51).
p_star_626(H51,H51) :- 
    false.
p_star_626(G51,I51) :- 
    dual(626,p,G51,I51).
p_star_627(J51,J51) :- 
    false.
p_star_627(I51,K51) :- 
    dual(627,p,I51,K51).
p_star_628(L51,L51) :- 
    false.
p_star_628(K51,M51) :- 
    dual(628,p,K51,M51).
p_star_629(N51,N51) :- 
    false.
p_star_629(M51,O51) :- 
    dual(629,p,M51,O51).
p_star_630(P51,P51) :- 
    false.
p_star_630(O51,Q51) :- 
    dual(630,p,O51,Q51).
p_star_631(R51,R51) :- 
    false.
p_star_631(Q51,S51) :- 
    dual(631,p,Q51,S51).
p_star_632(T51,T51) :- 
    false.
p_star_632(S51,U51) :- 
    dual(632,p,S51,U51).
p_star_633(V51,V51) :- 
    false.
p_star_633(U51,W51) :- 
    dual(633,p,U51,W51).
p_star_634(X51,X51) :- 
    false.
p_star_634(W51,Y51) :- 
    dual(634,p,W51,Y51).
p_star_635(Z51,Z51) :- 
    false.
p_star_635(Y51,A52) :- 
    dual(635,p,Y51,A52).
p_star_636(B52,B52) :- 
    false.
p_star_636(A52,C52) :- 
    dual(636,p,A52,C52).
p_star_637(D52,D52) :- 
    false.
p_star_637(C52,E52) :- 
    dual(637,p,C52,E52).
p_star_638(F52,F52) :- 
    false.
p_star_638(E52,G52) :- 
    dual(638,p,E52,G52).
p_star_639(H52,H52) :- 
    false.
p_star_639(G52,I52) :- 
    dual(639,p,G52,I52).
p_star_640(J52,J52) :- 
    false.
p_star_640(I52,K52) :- 
    dual(640,p,I52,K52).
p_star_641(L52,L52) :- 
    false.
p_star_641(K52,M52) :- 
    dual(641,p,K52,M52).
p_star_642(N52,N52) :- 
    false.
p_star_642(M52,O52) :- 
    dual(642,p,M52,O52).
p_star_643(P52,P52) :- 
    false.
p_star_643(O52,Q52) :- 
    dual(643,p,O52,Q52).
p_star_644(R52,R52) :- 
    false.
p_star_644(Q52,S52) :- 
    dual(644,p,Q52,S52).
p_star_645(T52,T52) :- 
    false.
p_star_645(S52,U52) :- 
    dual(645,p,S52,U52).
p_star_646(V52,V52) :- 
    false.
p_star_646(U52,W52) :- 
    dual(646,p,U52,W52).
p_star_647(X52,X52) :- 
    false.
p_star_647(W52,Y52) :- 
    dual(647,p,W52,Y52).
p_star_648(Z52,Z52) :- 
    false.
p_star_648(Y52,A53) :- 
    dual(648,p,Y52,A53).
p_star_649(B53,B53) :- 
    false.
p_star_649(A53,C53) :- 
    dual(649,p,A53,C53).
p_star_650(D53,D53) :- 
    false.
p_star_650(C53,E53) :- 
    dual(650,p,C53,E53).
p_star_651(F53,F53) :- 
    false.
p_star_651(E53,G53) :- 
    dual(651,p,E53,G53).
p_star_652(H53,H53) :- 
    false.
p_star_652(G53,I53) :- 
    dual(652,p,G53,I53).
p_star_653(J53,J53) :- 
    false.
p_star_653(I53,K53) :- 
    dual(653,p,I53,K53).
p_star_654(L53,L53) :- 
    false.
p_star_654(K53,M53) :- 
    dual(654,p,K53,M53).
p_star_655(N53,N53) :- 
    false.
p_star_655(M53,O53) :- 
    dual(655,p,M53,O53).
p_star_656(P53,P53) :- 
    false.
p_star_656(O53,Q53) :- 
    dual(656,p,O53,Q53).
p_star_657(R53,R53) :- 
    false.
p_star_657(Q53,S53) :- 
    dual(657,p,Q53,S53).
p_star_658(T53,T53) :- 
    false.
p_star_658(S53,U53) :- 
    dual(658,p,S53,U53).
p_star_659(V53,V53) :- 
    false.
p_star_659(U53,W53) :- 
    dual(659,p,U53,W53).
p_star_660(X53,X53) :- 
    false.
p_star_660(W53,Y53) :- 
    dual(660,p,W53,Y53).
p_star_661(Z53,Z53) :- 
    false.
p_star_661(Y53,A54) :- 
    dual(661,p,Y53,A54).
p_star_662(B54,B54) :- 
    false.
p_star_662(A54,C54) :- 
    dual(662,p,A54,C54).
p_star_663(D54,D54) :- 
    false.
p_star_663(C54,E54) :- 
    dual(663,p,C54,E54).
p_star_664(F54,F54) :- 
    false.
p_star_664(E54,G54) :- 
    dual(664,p,E54,G54).
p_star_665(H54,H54) :- 
    false.
p_star_665(G54,I54) :- 
    dual(665,p,G54,I54).
p_star_666(J54,J54) :- 
    false.
p_star_666(I54,K54) :- 
    dual(666,p,I54,K54).
p_star_667(L54,L54) :- 
    false.
p_star_667(K54,M54) :- 
    dual(667,p,K54,M54).
p_star_668(N54,N54) :- 
    false.
p_star_668(M54,O54) :- 
    dual(668,p,M54,O54).
p_star_669(P54,P54) :- 
    false.
p_star_669(O54,Q54) :- 
    dual(669,p,O54,Q54).
p_star_670(R54,R54) :- 
    false.
p_star_670(Q54,S54) :- 
    dual(670,p,Q54,S54).
p_star_671(T54,T54) :- 
    false.
p_star_671(S54,U54) :- 
    dual(671,p,S54,U54).
p_star_672(V54,V54) :- 
    false.
p_star_672(U54,W54) :- 
    dual(672,p,U54,W54).
p_star_673(X54,X54) :- 
    false.
p_star_673(W54,Y54) :- 
    dual(673,p,W54,Y54).
p_star_674(Z54,Z54) :- 
    false.
p_star_674(Y54,A55) :- 
    dual(674,p,Y54,A55).
p_star_675(B55,B55) :- 
    false.
p_star_675(A55,C55) :- 
    dual(675,p,A55,C55).
p_star_676(D55,D55) :- 
    false.
p_star_676(C55,E55) :- 
    dual(676,p,C55,E55).
p_star_677(F55,F55) :- 
    false.
p_star_677(E55,G55) :- 
    dual(677,p,E55,G55).
p_star_678(H55,H55) :- 
    false.
p_star_678(G55,I55) :- 
    dual(678,p,G55,I55).
p_star_679(J55,J55) :- 
    false.
p_star_679(I55,K55) :- 
    dual(679,p,I55,K55).
p_star_680(L55,L55) :- 
    false.
p_star_680(K55,M55) :- 
    dual(680,p,K55,M55).
p_star_681(N55,N55) :- 
    false.
p_star_681(M55,O55) :- 
    dual(681,p,M55,O55).
p_star_682(P55,P55) :- 
    false.
p_star_682(O55,Q55) :- 
    dual(682,p,O55,Q55).
p_star_683(R55,R55) :- 
    false.
p_star_683(Q55,S55) :- 
    dual(683,p,Q55,S55).
p_star_684(T55,T55) :- 
    false.
p_star_684(S55,U55) :- 
    dual(684,p,S55,U55).
p_star_685(V55,V55) :- 
    false.
p_star_685(U55,W55) :- 
    dual(685,p,U55,W55).
p_star_686(X55,X55) :- 
    false.
p_star_686(W55,Y55) :- 
    dual(686,p,W55,Y55).
p_star_687(Z55,Z55) :- 
    false.
p_star_687(Y55,A56) :- 
    dual(687,p,Y55,A56).
p_star_688(B56,B56) :- 
    false.
p_star_688(A56,C56) :- 
    dual(688,p,A56,C56).
p_star_689(D56,D56) :- 
    false.
p_star_689(C56,E56) :- 
    dual(689,p,C56,E56).
p_star_690(F56,F56) :- 
    false.
p_star_690(E56,G56) :- 
    dual(690,p,E56,G56).
p_star_691(H56,H56) :- 
    false.
p_star_691(G56,I56) :- 
    dual(691,p,G56,I56).
p_star_692(J56,J56) :- 
    false.
p_star_692(I56,K56) :- 
    dual(692,p,I56,K56).
p_star_693(L56,L56) :- 
    false.
p_star_693(K56,M56) :- 
    dual(693,p,K56,M56).
p_star_694(N56,N56) :- 
    false.
p_star_694(M56,O56) :- 
    dual(694,p,M56,O56).
p_star_695(P56,P56) :- 
    false.
p_star_695(O56,Q56) :- 
    dual(695,p,O56,Q56).
p_star_696(R56,R56) :- 
    false.
p_star_696(Q56,S56) :- 
    dual(696,p,Q56,S56).
p_star_697(T56,T56) :- 
    false.
p_star_697(S56,U56) :- 
    dual(697,p,S56,U56).
p_star_698(V56,V56) :- 
    false.
p_star_698(U56,W56) :- 
    dual(698,p,U56,W56).
p_star_699(X56,X56) :- 
    false.
p_star_699(W56,Y56) :- 
    dual(699,p,W56,Y56).
p_star_700(Z56,Z56) :- 
    false.
p_star_700(Y56,A57) :- 
    dual(700,p,Y56,A57).
p_star_701(B57,B57) :- 
    false.
p_star_701(A57,C57) :- 
    dual(701,p,A57,C57).
p_star_702(D57,D57) :- 
    false.
p_star_702(C57,E57) :- 
    dual(702,p,C57,E57).
p_star_703(F57,F57) :- 
    false.
p_star_703(E57,G57) :- 
    dual(703,p,E57,G57).
p_star_704(H57,H57) :- 
    false.
p_star_704(G57,I57) :- 
    dual(704,p,G57,I57).
p_star_705(J57,J57) :- 
    false.
p_star_705(I57,K57) :- 
    dual(705,p,I57,K57).
p_star_706(L57,L57) :- 
    false.
p_star_706(K57,M57) :- 
    dual(706,p,K57,M57).
p_star_707(N57,N57) :- 
    false.
p_star_707(M57,O57) :- 
    dual(707,p,M57,O57).
p_star_708(P57,P57) :- 
    false.
p_star_708(O57,Q57) :- 
    dual(708,p,O57,Q57).
p_star_709(R57,R57) :- 
    false.
p_star_709(Q57,S57) :- 
    dual(709,p,Q57,S57).
p_star_710(T57,T57) :- 
    false.
p_star_710(S57,U57) :- 
    dual(710,p,S57,U57).
p_star_711(V57,V57) :- 
    false.
p_star_711(U57,W57) :- 
    dual(711,p,U57,W57).
p_star_712(X57,X57) :- 
    false.
p_star_712(W57,Y57) :- 
    dual(712,p,W57,Y57).
p_star_713(Z57,Z57) :- 
    false.
p_star_713(Y57,A58) :- 
    dual(713,p,Y57,A58).
p_star_714(B58,B58) :- 
    false.
p_star_714(A58,C58) :- 
    dual(714,p,A58,C58).
p_star_715(D58,D58) :- 
    false.
p_star_715(C58,E58) :- 
    dual(715,p,C58,E58).
p_star_716(F58,F58) :- 
    false.
p_star_716(E58,G58) :- 
    dual(716,p,E58,G58).
p_star_717(H58,H58) :- 
    false.
p_star_717(G58,I58) :- 
    dual(717,p,G58,I58).
p_star_718(J58,J58) :- 
    false.
p_star_718(I58,K58) :- 
    dual(718,p,I58,K58).
p_star_719(L58,L58) :- 
    false.
p_star_719(K58,M58) :- 
    dual(719,p,K58,M58).
p_star_720(N58,N58) :- 
    false.
p_star_720(M58,O58) :- 
    dual(720,p,M58,O58).
p_star_721(P58,P58) :- 
    false.
p_star_721(O58,Q58) :- 
    dual(721,p,O58,Q58).
p_star_722(R58,R58) :- 
    false.
p_star_722(Q58,S58) :- 
    dual(722,p,Q58,S58).
p_star_723(T58,T58) :- 
    false.
p_star_723(S58,U58) :- 
    dual(723,p,S58,U58).
p_star_724(V58,V58) :- 
    false.
p_star_724(U58,W58) :- 
    dual(724,p,U58,W58).
p_star_725(X58,X58) :- 
    false.
p_star_725(W58,Y58) :- 
    dual(725,p,W58,Y58).
p_star_726(Z58,Z58) :- 
    false.
p_star_726(Y58,A59) :- 
    dual(726,p,Y58,A59).
p_star_727(B59,B59) :- 
    false.
p_star_727(A59,C59) :- 
    dual(727,p,A59,C59).
p_star_728(D59,D59) :- 
    false.
p_star_728(C59,E59) :- 
    dual(728,p,C59,E59).
p_star_729(F59,F59) :- 
    false.
p_star_729(E59,G59) :- 
    dual(729,p,E59,G59).
p_star_730(H59,H59) :- 
    false.
p_star_730(G59,I59) :- 
    dual(730,p,G59,I59).
p_star_731(J59,J59) :- 
    false.
p_star_731(I59,K59) :- 
    dual(731,p,I59,K59).
p_star_732(L59,L59) :- 
    false.
p_star_732(K59,M59) :- 
    dual(732,p,K59,M59).
p_star_733(N59,N59) :- 
    false.
p_star_733(M59,O59) :- 
    dual(733,p,M59,O59).
p_star_734(P59,P59) :- 
    false.
p_star_734(O59,Q59) :- 
    dual(734,p,O59,Q59).
p_star_735(R59,R59) :- 
    false.
p_star_735(Q59,S59) :- 
    dual(735,p,Q59,S59).
p_star_736(T59,T59) :- 
    false.
p_star_736(S59,U59) :- 
    dual(736,p,S59,U59).
p_star_737(V59,V59) :- 
    false.
p_star_737(U59,W59) :- 
    dual(737,p,U59,W59).
p_star_738(X59,X59) :- 
    false.
p_star_738(W59,Y59) :- 
    dual(738,p,W59,Y59).
p_star_739(Z59,Z59) :- 
    false.
p_star_739(Y59,A60) :- 
    dual(739,p,Y59,A60).
p_star_740(B60,B60) :- 
    false.
p_star_740(A60,C60) :- 
    dual(740,p,A60,C60).
p_star_741(D60,D60) :- 
    false.
p_star_741(C60,E60) :- 
    dual(741,p,C60,E60).
p_star_742(F60,F60) :- 
    false.
p_star_742(E60,G60) :- 
    dual(742,p,E60,G60).
p_star_743(H60,H60) :- 
    false.
p_star_743(G60,I60) :- 
    dual(743,p,G60,I60).
p_star_744(J60,J60) :- 
    false.
p_star_744(I60,K60) :- 
    dual(744,p,I60,K60).
p_star_745(L60,L60) :- 
    false.
p_star_745(K60,M60) :- 
    dual(745,p,K60,M60).
p_star_746(N60,N60) :- 
    false.
p_star_746(M60,O60) :- 
    dual(746,p,M60,O60).
p_star_747(P60,P60) :- 
    false.
p_star_747(O60,Q60) :- 
    dual(747,p,O60,Q60).
p_star_748(R60,R60) :- 
    false.
p_star_748(Q60,S60) :- 
    dual(748,p,Q60,S60).
p_star_749(T60,T60) :- 
    false.
p_star_749(S60,U60) :- 
    dual(749,p,S60,U60).
p_star_750(V60,V60) :- 
    false.
p_star_750(U60,W60) :- 
    dual(750,p,U60,W60).
p_star_751(X60,X60) :- 
    false.
p_star_751(W60,Y60) :- 
    dual(751,p,W60,Y60).
p_star_752(Z60,Z60) :- 
    false.
p_star_752(Y60,A61) :- 
    dual(752,p,Y60,A61).
p_star_753(B61,B61) :- 
    false.
p_star_753(A61,C61) :- 
    dual(753,p,A61,C61).
p_star_754(D61,D61) :- 
    false.
p_star_754(C61,E61) :- 
    dual(754,p,C61,E61).
p_star_755(F61,F61) :- 
    false.
p_star_755(E61,G61) :- 
    dual(755,p,E61,G61).
p_star_756(H61,H61) :- 
    false.
p_star_756(G61,I61) :- 
    dual(756,p,G61,I61).
p_star_757(J61,J61) :- 
    false.
p_star_757(I61,K61) :- 
    dual(757,p,I61,K61).
p_star_758(L61,L61) :- 
    false.
p_star_758(K61,M61) :- 
    dual(758,p,K61,M61).
p_star_759(N61,N61) :- 
    false.
p_star_759(M61,O61) :- 
    dual(759,p,M61,O61).
p_star_760(P61,P61) :- 
    false.
p_star_760(O61,Q61) :- 
    dual(760,p,O61,Q61).
p_star_761(R61,R61) :- 
    false.
p_star_761(Q61,S61) :- 
    dual(761,p,Q61,S61).
p_star_762(T61,T61) :- 
    false.
p_star_762(S61,U61) :- 
    dual(762,p,S61,U61).
p_star_763(V61,V61) :- 
    false.
p_star_763(U61,W61) :- 
    dual(763,p,U61,W61).
p_star_764(X61,X61) :- 
    false.
p_star_764(W61,Y61) :- 
    dual(764,p,W61,Y61).
p_star_765(Z61,Z61) :- 
    false.
p_star_765(Y61,A62) :- 
    dual(765,p,Y61,A62).
p_star_766(B62,B62) :- 
    false.
p_star_766(A62,C62) :- 
    dual(766,p,A62,C62).
p_star_767(D62,D62) :- 
    false.
p_star_767(C62,E62) :- 
    dual(767,p,C62,E62).
p_star_768(F62,F62) :- 
    false.
p_star_768(E62,G62) :- 
    dual(768,p,E62,G62).
p_star_769(H62,H62) :- 
    false.
p_star_769(G62,I62) :- 
    dual(769,p,G62,I62).
p_star_770(J62,J62) :- 
    false.
p_star_770(I62,K62) :- 
    dual(770,p,I62,K62).
p_star_771(L62,L62) :- 
    false.
p_star_771(K62,M62) :- 
    dual(771,p,K62,M62).
p_star_772(N62,N62) :- 
    false.
p_star_772(M62,O62) :- 
    dual(772,p,M62,O62).
p_star_773(P62,P62) :- 
    false.
p_star_773(O62,Q62) :- 
    dual(773,p,O62,Q62).
p_star_774(R62,R62) :- 
    false.
p_star_774(Q62,S62) :- 
    dual(774,p,Q62,S62).
p_star_775(T62,T62) :- 
    false.
p_star_775(S62,U62) :- 
    dual(775,p,S62,U62).
p_star_776(V62,V62) :- 
    false.
p_star_776(U62,W62) :- 
    dual(776,p,U62,W62).
p_star_777(X62,X62) :- 
    false.
p_star_777(W62,Y62) :- 
    dual(777,p,W62,Y62).
p_star_778(Z62,Z62) :- 
    false.
p_star_778(Y62,A63) :- 
    dual(778,p,Y62,A63).
p_star_779(B63,B63) :- 
    false.
p_star_779(A63,C63) :- 
    dual(779,p,A63,C63).
p_star_780(D63,D63) :- 
    false.
p_star_780(C63,E63) :- 
    dual(780,p,C63,E63).
p_star_781(F63,F63) :- 
    false.
p_star_781(E63,G63) :- 
    dual(781,p,E63,G63).
p_star_782(H63,H63) :- 
    false.
p_star_782(G63,I63) :- 
    dual(782,p,G63,I63).
p_star_783(J63,J63) :- 
    false.
p_star_783(I63,K63) :- 
    dual(783,p,I63,K63).
p_star_784(L63,L63) :- 
    false.
p_star_784(K63,M63) :- 
    dual(784,p,K63,M63).
p_star_785(N63,N63) :- 
    false.
p_star_785(M63,O63) :- 
    dual(785,p,M63,O63).
p_star_786(P63,P63) :- 
    false.
p_star_786(O63,Q63) :- 
    dual(786,p,O63,Q63).
p_star_787(R63,R63) :- 
    false.
p_star_787(Q63,S63) :- 
    dual(787,p,Q63,S63).
p_star_788(T63,T63) :- 
    false.
p_star_788(S63,U63) :- 
    dual(788,p,S63,U63).
p_star_789(V63,V63) :- 
    false.
p_star_789(U63,W63) :- 
    dual(789,p,U63,W63).
p_star_790(X63,X63) :- 
    false.
p_star_790(W63,Y63) :- 
    dual(790,p,W63,Y63).
p_star_791(Z63,Z63) :- 
    false.
p_star_791(Y63,A64) :- 
    dual(791,p,Y63,A64).
p_star_792(B64,B64) :- 
    false.
p_star_792(A64,C64) :- 
    dual(792,p,A64,C64).
p_star_793(D64,D64) :- 
    false.
p_star_793(C64,E64) :- 
    dual(793,p,C64,E64).
p_star_794(F64,F64) :- 
    false.
p_star_794(E64,G64) :- 
    dual(794,p,E64,G64).
p_star_795(H64,H64) :- 
    false.
p_star_795(G64,I64) :- 
    dual(795,p,G64,I64).
p_star_796(J64,J64) :- 
    false.
p_star_796(I64,K64) :- 
    dual(796,p,I64,K64).
p_star_797(L64,L64) :- 
    false.
p_star_797(K64,M64) :- 
    dual(797,p,K64,M64).
p_star_798(N64,N64) :- 
    false.
p_star_798(M64,O64) :- 
    dual(798,p,M64,O64).
p_star_799(P64,P64) :- 
    false.
p_star_799(O64,Q64) :- 
    dual(799,p,O64,Q64).
p_star_800(R64,R64) :- 
    false.
p_star_800(Q64,S64) :- 
    dual(800,p,Q64,S64).
p_star_801(T64,T64) :- 
    false.
p_star_801(S64,U64) :- 
    dual(801,p,S64,U64).
p_star_802(V64,V64) :- 
    false.
p_star_802(U64,W64) :- 
    dual(802,p,U64,W64).
p_star_803(X64,X64) :- 
    false.
p_star_803(W64,Y64) :- 
    dual(803,p,W64,Y64).
p_star_804(Z64,Z64) :- 
    false.
p_star_804(Y64,A65) :- 
    dual(804,p,Y64,A65).
p_star_805(B65,B65) :- 
    false.
p_star_805(A65,C65) :- 
    dual(805,p,A65,C65).
p_star_806(D65,D65) :- 
    false.
p_star_806(C65,E65) :- 
    dual(806,p,C65,E65).
p_star_807(F65,F65) :- 
    false.
p_star_807(E65,G65) :- 
    dual(807,p,E65,G65).
p_star_808(H65,H65) :- 
    false.
p_star_808(G65,I65) :- 
    dual(808,p,G65,I65).
p_star_809(J65,J65) :- 
    false.
p_star_809(I65,K65) :- 
    dual(809,p,I65,K65).
p_star_810(L65,L65) :- 
    false.
p_star_810(K65,M65) :- 
    dual(810,p,K65,M65).
p_star_811(N65,N65) :- 
    false.
p_star_811(M65,O65) :- 
    dual(811,p,M65,O65).
p_star_812(P65,P65) :- 
    false.
p_star_812(O65,Q65) :- 
    dual(812,p,O65,Q65).
p_star_813(R65,R65) :- 
    false.
p_star_813(Q65,S65) :- 
    dual(813,p,Q65,S65).
p_star_814(T65,T65) :- 
    false.
p_star_814(S65,U65) :- 
    dual(814,p,S65,U65).
p_star_815(V65,V65) :- 
    false.
p_star_815(U65,W65) :- 
    dual(815,p,U65,W65).
p_star_816(X65,X65) :- 
    false.
p_star_816(W65,Y65) :- 
    dual(816,p,W65,Y65).
p_star_817(Z65,Z65) :- 
    false.
p_star_817(Y65,A66) :- 
    dual(817,p,Y65,A66).
p_star_818(B66,B66) :- 
    false.
p_star_818(A66,C66) :- 
    dual(818,p,A66,C66).
p_star_819(D66,D66) :- 
    false.
p_star_819(C66,E66) :- 
    dual(819,p,C66,E66).
p_star_820(F66,F66) :- 
    false.
p_star_820(E66,G66) :- 
    dual(820,p,E66,G66).
p_star_821(H66,H66) :- 
    false.
p_star_821(G66,I66) :- 
    dual(821,p,G66,I66).
p_star_822(J66,J66) :- 
    false.
p_star_822(I66,K66) :- 
    dual(822,p,I66,K66).
p_star_823(L66,L66) :- 
    false.
p_star_823(K66,M66) :- 
    dual(823,p,K66,M66).
p_star_824(N66,N66) :- 
    false.
p_star_824(M66,O66) :- 
    dual(824,p,M66,O66).
p_star_825(P66,P66) :- 
    false.
p_star_825(O66,Q66) :- 
    dual(825,p,O66,Q66).
p_star_826(R66,R66) :- 
    false.
p_star_826(Q66,S66) :- 
    dual(826,p,Q66,S66).
p_star_827(T66,T66) :- 
    false.
p_star_827(S66,U66) :- 
    dual(827,p,S66,U66).
p_star_828(V66,V66) :- 
    false.
p_star_828(U66,W66) :- 
    dual(828,p,U66,W66).
p_star_829(X66,X66) :- 
    false.
p_star_829(W66,Y66) :- 
    dual(829,p,W66,Y66).
p_star_830(Z66,Z66) :- 
    false.
p_star_830(Y66,A67) :- 
    dual(830,p,Y66,A67).
p_star_831(B67,B67) :- 
    false.
p_star_831(A67,C67) :- 
    dual(831,p,A67,C67).
p_star_832(D67,D67) :- 
    false.
p_star_832(C67,E67) :- 
    dual(832,p,C67,E67).
p_star_833(F67,F67) :- 
    false.
p_star_833(E67,G67) :- 
    dual(833,p,E67,G67).
p_star_834(H67,H67) :- 
    false.
p_star_834(G67,I67) :- 
    dual(834,p,G67,I67).
p_star_835(J67,J67) :- 
    false.
p_star_835(I67,K67) :- 
    dual(835,p,I67,K67).
p_star_836(L67,L67) :- 
    false.
p_star_836(K67,M67) :- 
    dual(836,p,K67,M67).
p_star_837(N67,N67) :- 
    false.
p_star_837(M67,O67) :- 
    dual(837,p,M67,O67).
p_star_838(P67,P67) :- 
    false.
p_star_838(O67,Q67) :- 
    dual(838,p,O67,Q67).
p_star_839(R67,R67) :- 
    false.
p_star_839(Q67,S67) :- 
    dual(839,p,Q67,S67).
p_star_840(T67,T67) :- 
    false.
p_star_840(S67,U67) :- 
    dual(840,p,S67,U67).
p_star_841(V67,V67) :- 
    false.
p_star_841(U67,W67) :- 
    dual(841,p,U67,W67).
p_star_842(X67,X67) :- 
    false.
p_star_842(W67,Y67) :- 
    dual(842,p,W67,Y67).
p_star_843(Z67,Z67) :- 
    false.
p_star_843(Y67,A68) :- 
    dual(843,p,Y67,A68).
p_star_844(B68,B68) :- 
    false.
p_star_844(A68,C68) :- 
    dual(844,p,A68,C68).
p_star_845(D68,D68) :- 
    false.
p_star_845(C68,E68) :- 
    dual(845,p,C68,E68).
p_star_846(F68,F68) :- 
    false.
p_star_846(E68,G68) :- 
    dual(846,p,E68,G68).
p_star_847(H68,H68) :- 
    false.
p_star_847(G68,I68) :- 
    dual(847,p,G68,I68).
p_star_848(J68,J68) :- 
    false.
p_star_848(I68,K68) :- 
    dual(848,p,I68,K68).
p_star_849(L68,L68) :- 
    false.
p_star_849(K68,M68) :- 
    dual(849,p,K68,M68).
p_star_850(N68,N68) :- 
    false.
p_star_850(M68,O68) :- 
    dual(850,p,M68,O68).
p_star_851(P68,P68) :- 
    false.
p_star_851(O68,Q68) :- 
    dual(851,p,O68,Q68).
p_star_852(R68,R68) :- 
    false.
p_star_852(Q68,S68) :- 
    dual(852,p,Q68,S68).
p_star_853(T68,T68) :- 
    false.
p_star_853(S68,U68) :- 
    dual(853,p,S68,U68).
p_star_854(V68,V68) :- 
    false.
p_star_854(U68,W68) :- 
    dual(854,p,U68,W68).
p_star_855(X68,X68) :- 
    false.
p_star_855(W68,Y68) :- 
    dual(855,p,W68,Y68).
p_star_856(Z68,Z68) :- 
    false.
p_star_856(Y68,A69) :- 
    dual(856,p,Y68,A69).
p_star_857(B69,B69) :- 
    false.
p_star_857(A69,C69) :- 
    dual(857,p,A69,C69).
p_star_858(D69,D69) :- 
    false.
p_star_858(C69,E69) :- 
    dual(858,p,C69,E69).
p_star_859(F69,F69) :- 
    false.
p_star_859(E69,G69) :- 
    dual(859,p,E69,G69).
p_star_860(H69,H69) :- 
    false.
p_star_860(G69,I69) :- 
    dual(860,p,G69,I69).
p_star_861(J69,J69) :- 
    false.
p_star_861(I69,K69) :- 
    dual(861,p,I69,K69).
p_star_862(L69,L69) :- 
    false.
p_star_862(K69,M69) :- 
    dual(862,p,K69,M69).
p_star_863(N69,N69) :- 
    false.
p_star_863(M69,O69) :- 
    dual(863,p,M69,O69).
p_star_864(P69,P69) :- 
    false.
p_star_864(O69,Q69) :- 
    dual(864,p,O69,Q69).
p_star_865(R69,R69) :- 
    false.
p_star_865(Q69,S69) :- 
    dual(865,p,Q69,S69).
p_star_866(T69,T69) :- 
    false.
p_star_866(S69,U69) :- 
    dual(866,p,S69,U69).
p_star_867(V69,V69) :- 
    false.
p_star_867(U69,W69) :- 
    dual(867,p,U69,W69).
p_star_868(X69,X69) :- 
    false.
p_star_868(W69,Y69) :- 
    dual(868,p,W69,Y69).
p_star_869(Z69,Z69) :- 
    false.
p_star_869(Y69,A70) :- 
    dual(869,p,Y69,A70).
p_star_870(B70,B70) :- 
    false.
p_star_870(A70,C70) :- 
    dual(870,p,A70,C70).
p_star_871(D70,D70) :- 
    false.
p_star_871(C70,E70) :- 
    dual(871,p,C70,E70).
p_star_872(F70,F70) :- 
    false.
p_star_872(E70,G70) :- 
    dual(872,p,E70,G70).
p_star_873(H70,H70) :- 
    false.
p_star_873(G70,I70) :- 
    dual(873,p,G70,I70).
p_star_874(J70,J70) :- 
    false.
p_star_874(I70,K70) :- 
    dual(874,p,I70,K70).
p_star_875(L70,L70) :- 
    false.
p_star_875(K70,M70) :- 
    dual(875,p,K70,M70).
p_star_876(N70,N70) :- 
    false.
p_star_876(M70,O70) :- 
    dual(876,p,M70,O70).
p_star_877(P70,P70) :- 
    false.
p_star_877(O70,Q70) :- 
    dual(877,p,O70,Q70).
p_star_878(R70,R70) :- 
    false.
p_star_878(Q70,S70) :- 
    dual(878,p,Q70,S70).
p_star_879(T70,T70) :- 
    false.
p_star_879(S70,U70) :- 
    dual(879,p,S70,U70).
p_star_880(V70,V70) :- 
    false.
p_star_880(U70,W70) :- 
    dual(880,p,U70,W70).
p_star_881(X70,X70) :- 
    false.
p_star_881(W70,Y70) :- 
    dual(881,p,W70,Y70).
p_star_882(Z70,Z70) :- 
    false.
p_star_882(Y70,A71) :- 
    dual(882,p,Y70,A71).
p_star_883(B71,B71) :- 
    false.
p_star_883(A71,C71) :- 
    dual(883,p,A71,C71).
p_star_884(D71,D71) :- 
    false.
p_star_884(C71,E71) :- 
    dual(884,p,C71,E71).
p_star_885(F71,F71) :- 
    false.
p_star_885(E71,G71) :- 
    dual(885,p,E71,G71).
p_star_886(H71,H71) :- 
    false.
p_star_886(G71,I71) :- 
    dual(886,p,G71,I71).
p_star_887(J71,J71) :- 
    false.
p_star_887(I71,K71) :- 
    dual(887,p,I71,K71).
p_star_888(L71,L71) :- 
    false.
p_star_888(K71,M71) :- 
    dual(888,p,K71,M71).
p_star_889(N71,N71) :- 
    false.
p_star_889(M71,O71) :- 
    dual(889,p,M71,O71).
p_star_890(P71,P71) :- 
    false.
p_star_890(O71,Q71) :- 
    dual(890,p,O71,Q71).
p_star_891(R71,R71) :- 
    false.
p_star_891(Q71,S71) :- 
    dual(891,p,Q71,S71).
p_star_892(T71,T71) :- 
    false.
p_star_892(S71,U71) :- 
    dual(892,p,S71,U71).
p_star_893(V71,V71) :- 
    false.
p_star_893(U71,W71) :- 
    dual(893,p,U71,W71).
p_star_894(X71,X71) :- 
    false.
p_star_894(W71,Y71) :- 
    dual(894,p,W71,Y71).
p_star_895(Z71,Z71) :- 
    false.
p_star_895(Y71,A72) :- 
    dual(895,p,Y71,A72).
p_star_896(B72,B72) :- 
    false.
p_star_896(A72,C72) :- 
    dual(896,p,A72,C72).
p_star_897(D72,D72) :- 
    false.
p_star_897(C72,E72) :- 
    dual(897,p,C72,E72).
p_star_898(F72,F72) :- 
    false.
p_star_898(E72,G72) :- 
    dual(898,p,E72,G72).
p_star_899(H72,H72) :- 
    false.
p_star_899(G72,I72) :- 
    dual(899,p,G72,I72).
p_star_900(J72,J72) :- 
    false.
p_star_900(I72,K72) :- 
    dual(900,p,I72,K72).
p_star_901(L72,L72) :- 
    false.
p_star_901(K72,M72) :- 
    dual(901,p,K72,M72).
p_star_902(N72,N72) :- 
    false.
p_star_902(M72,O72) :- 
    dual(902,p,M72,O72).
p_star_903(P72,P72) :- 
    false.
p_star_903(O72,Q72) :- 
    dual(903,p,O72,Q72).
p_star_904(R72,R72) :- 
    false.
p_star_904(Q72,S72) :- 
    dual(904,p,Q72,S72).
p_star_905(T72,T72) :- 
    false.
p_star_905(S72,U72) :- 
    dual(905,p,S72,U72).
p_star_906(V72,V72) :- 
    false.
p_star_906(U72,W72) :- 
    dual(906,p,U72,W72).
p_star_907(X72,X72) :- 
    false.
p_star_907(W72,Y72) :- 
    dual(907,p,W72,Y72).
p_star_908(Z72,Z72) :- 
    false.
p_star_908(Y72,A73) :- 
    dual(908,p,Y72,A73).
p_star_909(B73,B73) :- 
    false.
p_star_909(A73,C73) :- 
    dual(909,p,A73,C73).
p_star_910(D73,D73) :- 
    false.
p_star_910(C73,E73) :- 
    dual(910,p,C73,E73).
p_star_911(F73,F73) :- 
    false.
p_star_911(E73,G73) :- 
    dual(911,p,E73,G73).
p_star_912(H73,H73) :- 
    false.
p_star_912(G73,I73) :- 
    dual(912,p,G73,I73).
p_star_913(J73,J73) :- 
    false.
p_star_913(I73,K73) :- 
    dual(913,p,I73,K73).
p_star_914(L73,L73) :- 
    false.
p_star_914(K73,M73) :- 
    dual(914,p,K73,M73).
p_star_915(N73,N73) :- 
    false.
p_star_915(M73,O73) :- 
    dual(915,p,M73,O73).
p_star_916(P73,P73) :- 
    false.
p_star_916(O73,Q73) :- 
    dual(916,p,O73,Q73).
p_star_917(R73,R73) :- 
    false.
p_star_917(Q73,S73) :- 
    dual(917,p,Q73,S73).
p_star_918(T73,T73) :- 
    false.
p_star_918(S73,U73) :- 
    dual(918,p,S73,U73).
p_star_919(V73,V73) :- 
    false.
p_star_919(U73,W73) :- 
    dual(919,p,U73,W73).
p_star_920(X73,X73) :- 
    false.
p_star_920(W73,Y73) :- 
    dual(920,p,W73,Y73).
p_star_921(Z73,Z73) :- 
    false.
p_star_921(Y73,A74) :- 
    dual(921,p,Y73,A74).
p_star_922(B74,B74) :- 
    false.
p_star_922(A74,C74) :- 
    dual(922,p,A74,C74).
p_star_923(D74,D74) :- 
    false.
p_star_923(C74,E74) :- 
    dual(923,p,C74,E74).
p_star_924(F74,F74) :- 
    false.
p_star_924(E74,G74) :- 
    dual(924,p,E74,G74).
p_star_925(H74,H74) :- 
    false.
p_star_925(G74,I74) :- 
    dual(925,p,G74,I74).
p_star_926(J74,J74) :- 
    false.
p_star_926(I74,K74) :- 
    dual(926,p,I74,K74).
p_star_927(L74,L74) :- 
    false.
p_star_927(K74,M74) :- 
    dual(927,p,K74,M74).
p_star_928(N74,N74) :- 
    false.
p_star_928(M74,O74) :- 
    dual(928,p,M74,O74).
p_star_929(P74,P74) :- 
    false.
p_star_929(O74,Q74) :- 
    dual(929,p,O74,Q74).
p_star_930(R74,R74) :- 
    false.
p_star_930(Q74,S74) :- 
    dual(930,p,Q74,S74).
p_star_931(T74,T74) :- 
    false.
p_star_931(S74,U74) :- 
    dual(931,p,S74,U74).
p_star_932(V74,V74) :- 
    false.
p_star_932(U74,W74) :- 
    dual(932,p,U74,W74).
p_star_933(X74,X74) :- 
    false.
p_star_933(W74,Y74) :- 
    dual(933,p,W74,Y74).
p_star_934(Z74,Z74) :- 
    false.
p_star_934(Y74,A75) :- 
    dual(934,p,Y74,A75).
p_star_935(B75,B75) :- 
    false.
p_star_935(A75,C75) :- 
    dual(935,p,A75,C75).
p_star_936(D75,D75) :- 
    false.
p_star_936(C75,E75) :- 
    dual(936,p,C75,E75).
p_star_937(F75,F75) :- 
    false.
p_star_937(E75,G75) :- 
    dual(937,p,E75,G75).
p_star_938(H75,H75) :- 
    false.
p_star_938(G75,I75) :- 
    dual(938,p,G75,I75).
p_star_939(J75,J75) :- 
    false.
p_star_939(I75,K75) :- 
    dual(939,p,I75,K75).
p_star_940(L75,L75) :- 
    false.
p_star_940(K75,M75) :- 
    dual(940,p,K75,M75).
p_star_941(N75,N75) :- 
    false.
p_star_941(M75,O75) :- 
    dual(941,p,M75,O75).
p_star_942(P75,P75) :- 
    false.
p_star_942(O75,Q75) :- 
    dual(942,p,O75,Q75).
p_star_943(R75,R75) :- 
    false.
p_star_943(Q75,S75) :- 
    dual(943,p,Q75,S75).
p_star_944(T75,T75) :- 
    false.
p_star_944(S75,U75) :- 
    dual(944,p,S75,U75).
p_star_945(V75,V75) :- 
    false.
p_star_945(U75,W75) :- 
    dual(945,p,U75,W75).
p_star_946(X75,X75) :- 
    false.
p_star_946(W75,Y75) :- 
    dual(946,p,W75,Y75).
p_star_947(Z75,Z75) :- 
    false.
p_star_947(Y75,A76) :- 
    dual(947,p,Y75,A76).
p_star_948(B76,B76) :- 
    false.
p_star_948(A76,C76) :- 
    dual(948,p,A76,C76).
p_star_949(D76,D76) :- 
    false.
p_star_949(C76,E76) :- 
    dual(949,p,C76,E76).
p_star_950(F76,F76) :- 
    false.
p_star_950(E76,G76) :- 
    dual(950,p,E76,G76).
p_star_951(H76,H76) :- 
    false.
p_star_951(G76,I76) :- 
    dual(951,p,G76,I76).
p_star_952(J76,J76) :- 
    false.
p_star_952(I76,K76) :- 
    dual(952,p,I76,K76).
p_star_953(L76,L76) :- 
    false.
p_star_953(K76,M76) :- 
    dual(953,p,K76,M76).
p_star_954(N76,N76) :- 
    false.
p_star_954(M76,O76) :- 
    dual(954,p,M76,O76).
p_star_955(P76,P76) :- 
    false.
p_star_955(O76,Q76) :- 
    dual(955,p,O76,Q76).
p_star_956(R76,R76) :- 
    false.
p_star_956(Q76,S76) :- 
    dual(956,p,Q76,S76).
p_star_957(T76,T76) :- 
    false.
p_star_957(S76,U76) :- 
    dual(957,p,S76,U76).
p_star_958(V76,V76) :- 
    false.
p_star_958(U76,W76) :- 
    dual(958,p,U76,W76).
p_star_959(X76,X76) :- 
    false.
p_star_959(W76,Y76) :- 
    dual(959,p,W76,Y76).
p_star_960(Z76,Z76) :- 
    false.
p_star_960(Y76,A77) :- 
    dual(960,p,Y76,A77).
p_star_961(B77,B77) :- 
    false.
p_star_961(A77,C77) :- 
    dual(961,p,A77,C77).
p_star_962(D77,D77) :- 
    false.
p_star_962(C77,E77) :- 
    dual(962,p,C77,E77).
p_star_963(F77,F77) :- 
    false.
p_star_963(E77,G77) :- 
    dual(963,p,E77,G77).
p_star_964(H77,H77) :- 
    false.
p_star_964(G77,I77) :- 
    dual(964,p,G77,I77).
p_star_965(J77,J77) :- 
    false.
p_star_965(I77,K77) :- 
    dual(965,p,I77,K77).
p_star_966(L77,L77) :- 
    false.
p_star_966(K77,M77) :- 
    dual(966,p,K77,M77).
p_star_967(N77,N77) :- 
    false.
p_star_967(M77,O77) :- 
    dual(967,p,M77,O77).
p_star_968(P77,P77) :- 
    false.
p_star_968(O77,Q77) :- 
    dual(968,p,O77,Q77).
p_star_969(R77,R77) :- 
    false.
p_star_969(Q77,S77) :- 
    dual(969,p,Q77,S77).
p_star_970(T77,T77) :- 
    false.
p_star_970(S77,U77) :- 
    dual(970,p,S77,U77).
p_star_971(V77,V77) :- 
    false.
p_star_971(U77,W77) :- 
    dual(971,p,U77,W77).
p_star_972(X77,X77) :- 
    false.
p_star_972(W77,Y77) :- 
    dual(972,p,W77,Y77).
p_star_973(Z77,Z77) :- 
    false.
p_star_973(Y77,A78) :- 
    dual(973,p,Y77,A78).
p_star_974(B78,B78) :- 
    false.
p_star_974(A78,C78) :- 
    dual(974,p,A78,C78).
p_star_975(D78,D78) :- 
    false.
p_star_975(C78,E78) :- 
    dual(975,p,C78,E78).
p_star_976(F78,F78) :- 
    false.
p_star_976(E78,G78) :- 
    dual(976,p,E78,G78).
p_star_977(H78,H78) :- 
    false.
p_star_977(G78,I78) :- 
    dual(977,p,G78,I78).
p_star_978(J78,J78) :- 
    false.
p_star_978(I78,K78) :- 
    dual(978,p,I78,K78).
p_star_979(L78,L78) :- 
    false.
p_star_979(K78,M78) :- 
    dual(979,p,K78,M78).
p_star_980(N78,N78) :- 
    false.
p_star_980(M78,O78) :- 
    dual(980,p,M78,O78).
p_star_981(P78,P78) :- 
    false.
p_star_981(O78,Q78) :- 
    dual(981,p,O78,Q78).
p_star_982(R78,R78) :- 
    false.
p_star_982(Q78,S78) :- 
    dual(982,p,Q78,S78).
p_star_983(T78,T78) :- 
    false.
p_star_983(S78,U78) :- 
    dual(983,p,S78,U78).
p_star_984(V78,V78) :- 
    false.
p_star_984(U78,W78) :- 
    dual(984,p,U78,W78).
p_star_985(X78,X78) :- 
    false.
p_star_985(W78,Y78) :- 
    dual(985,p,W78,Y78).
p_star_986(Z78,Z78) :- 
    false.
p_star_986(Y78,A79) :- 
    dual(986,p,Y78,A79).
p_star_987(B79,B79) :- 
    false.
p_star_987(A79,C79) :- 
    dual(987,p,A79,C79).
p_star_988(D79,D79) :- 
    false.
p_star_988(C79,E79) :- 
    dual(988,p,C79,E79).
p_star_989(F79,F79) :- 
    false.
p_star_989(E79,G79) :- 
    dual(989,p,E79,G79).
p_star_990(H79,H79) :- 
    false.
p_star_990(G79,I79) :- 
    dual(990,p,G79,I79).
p_star_991(J79,J79) :- 
    false.
p_star_991(I79,K79) :- 
    dual(991,p,I79,K79).
p_star_992(L79,L79) :- 
    false.
p_star_992(K79,M79) :- 
    dual(992,p,K79,M79).
p_star_993(N79,N79) :- 
    false.
p_star_993(M79,O79) :- 
    dual(993,p,M79,O79).
p_star_994(P79,P79) :- 
    false.
p_star_994(O79,Q79) :- 
    dual(994,p,O79,Q79).
p_star_995(R79,R79) :- 
    false.
p_star_995(Q79,S79) :- 
    dual(995,p,Q79,S79).
p_star_996(T79,T79) :- 
    false.
p_star_996(S79,U79) :- 
    dual(996,p,S79,U79).
p_star_997(V79,V79) :- 
    false.
p_star_997(U79,W79) :- 
    dual(997,p,U79,W79).
p_star_998(X79,X79) :- 
    false.
p_star_998(W79,Y79) :- 
    dual(998,p,W79,Y79).
p_star_999(Z79,Z79) :- 
    false.
p_star_999(Y79,A80) :- 
    dual(999,p,Y79,A80).
p_star_1000(B80,B80) :- 
    false.
p_star_1000(A80,C80) :- 
    dual(1000,p,A80,C80).
p_star_1001(D80,D80) :- 
    false.
p_star_1001(C80,E80) :- 
    dual(1001,p,C80,E80).
p_star_1002(F80,F80) :- 
    false.
p_star_1002(E80,G80) :- 
    dual(1002,p,E80,G80).
p_star_1003(H80,H80) :- 
    false.
p_star_1003(G80,I80) :- 
    dual(1003,p,G80,I80).
p_star_1004(J80,J80) :- 
    false.
p_star_1004(I80,K80) :- 
    dual(1004,p,I80,K80).
p_star_1005(L80,L80) :- 
    false.
p_star_1005(K80,M80) :- 
    dual(1005,p,K80,M80).
p_star_1006(N80,N80) :- 
    false.
p_star_1006(M80,O80) :- 
    dual(1006,p,M80,O80).
p_star_1007(P80,P80) :- 
    false.
p_star_1007(O80,Q80) :- 
    dual(1007,p,O80,Q80).
p_star_1008(R80,R80) :- 
    false.
p_star_1008(Q80,S80) :- 
    dual(1008,p,Q80,S80).
p_star_1009(T80,T80) :- 
    false.
p_star_1009(S80,U80) :- 
    dual(1009,p,S80,U80).
p_star_1010(V80,V80) :- 
    false.
p_star_1010(U80,W80) :- 
    dual(1010,p,U80,W80).
p_star_1011(X80,X80) :- 
    false.
p_star_1011(W80,Y80) :- 
    dual(1011,p,W80,Y80).
p_star_1012(Z80,Z80) :- 
    false.
p_star_1012(Y80,A81) :- 
    dual(1012,p,Y80,A81).
p_star_1013(B81,B81) :- 
    false.
p_star_1013(A81,C81) :- 
    dual(1013,p,A81,C81).
p_star_1014(D81,D81) :- 
    false.
p_star_1014(C81,E81) :- 
    dual(1014,p,C81,E81).
p_star_1015(F81,F81) :- 
    false.
p_star_1015(E81,G81) :- 
    dual(1015,p,E81,G81).
p_star_1016(H81,H81) :- 
    false.
p_star_1016(G81,I81) :- 
    dual(1016,p,G81,I81).
p_star_1017(J81,J81) :- 
    false.
p_star_1017(I81,K81) :- 
    dual(1017,p,I81,K81).
p_star_1018(L81,L81) :- 
    false.
p_star_1018(K81,M81) :- 
    dual(1018,p,K81,M81).
p_star_1019(N81,N81) :- 
    false.
p_star_1019(M81,O81) :- 
    dual(1019,p,M81,O81).
p_star_1020(P81,P81) :- 
    false.
p_star_1020(O81,Q81) :- 
    dual(1020,p,O81,Q81).
p_star_1021(R81,R81) :- 
    false.
p_star_1021(Q81,S81) :- 
    dual(1021,p,Q81,S81).
p_star_1022(T81,T81) :- 
    false.
p_star_1022(S81,U81) :- 
    dual(1022,p,S81,U81).
p_star_1023(V81,V81) :- 
    false.
p_star_1023(U81,W81) :- 
    dual(1023,p,U81,W81).
not_p(F3,W81) :- 
    (true,p_star_1(F3,G3),true,p_star_2(G3,I3),true,p_star_3(I3,K3),true,p_star_4(K3,M3),true,p_star_5(M3,O3),true,p_star_6(O3,Q3),true,p_star_7(Q3,S3),true,p_star_8(S3,U3),true,p_star_9(U3,W3),true,p_star_10(W3,Y3),true,p_star_11(Y3,A4),true,p_star_12(A4,C4),true,p_star_13(C4,E4),true,p_star_14(E4,G4),true,p_star_15(G4,I4),true,p_star_16(I4,K4),true,p_star_17(K4,M4),true,p_star_18(M4,O4),true,p_star_19(O4,Q4),true,p_star_20(Q4,S4),true,p_star_21(S4,U4),true,p_star_22(U4,W4),true,p_star_23(W4,Y4),true,p_star_24(Y4,A5),true,p_star_25(A5,C5),true,p_star_26(C5,E5),true,p_star_27(E5,G5),true,p_star_28(G5,I5),true,p_star_29(I5,K5),true,p_star_30(K5,M5),true,p_star_31(M5,O5),true,...,...).

not_false(X81,X81).

a1(Y81,Z81) :- 
    insert_abducible(a1,Y81,Z81).
a1_star(A82,B82) :- 
    insert_abducible(not a1,A82,B82).
a2(C82,D82) :- 
    insert_abducible(a2,C82,D82).
a2_star(E82,F82) :- 
    insert_abducible(not a2,E82,F82).
a3(G82,H82) :- 
    insert_abducible(a3,G82,H82).
a3_star(I82,J82) :- 
    insert_abducible(not a3,I82,J82).
a4(K82,L82) :- 
    insert_abducible(a4,K82,L82).
a4_star(M82,N82) :- 
    insert_abducible(not a4,M82,N82).
a5(O82,P82) :- 
    insert_abducible(a5,O82,P82).
a5_star(Q82,R82) :- 
    insert_abducible(not a5,Q82,R82).
a6(S82,T82) :- 
    insert_abducible(a6,S82,T82).
a6_star(U82,V82) :- 
    insert_abducible(not a6,U82,V82).
a7(W82,X82) :- 
    insert_abducible(a7,W82,X82).
a7_star(Y82,Z82) :- 
    insert_abducible(not a7,Y82,Z82).
a8(A83,B83) :- 
    insert_abducible(a8,A83,B83).
a8_star(C83,D83) :- 
    insert_abducible(not a8,C83,D83).
a9(E83,F83) :- 
    insert_abducible(a9,E83,F83).
a9_star(G83,H83) :- 
    insert_abducible(not a9,G83,H83).
a10(I83,J83) :- 
    insert_abducible(a10,I83,J83).
a10_star(K83,L83) :- 
    insert_abducible(not a10,K83,L83).

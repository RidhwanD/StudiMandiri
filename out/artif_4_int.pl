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

q2_ab(H) :- 
    (q1([],I),p(I,H)).
:- table q2_ab/1 as intern.
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
:- table q3_ab/1 as intern.
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
:- table q4_ab/1 as intern.
q4(Z,A1) :- 
    (q4_ab(B1),produce_context(A1,Z,B1)).
q4_star_1(C1,C1) :- 
    false.
q4_star_1(D1,E1) :- 
    dual(1,q4,D1,E1).
not_q4(D1,E1) :- 
    (true,q4_star_1(D1,E1)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a4]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a4]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a4]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a4]).
:- table p_ab/1 as intern.
p(F1,G1) :- 
    (p_ab(H1),produce_context(G1,F1,H1)).
p_star_1(I1,I1) :- 
    false.
p_star_1(J1,K1) :- 
    dual(1,p,J1,K1).
p_star_2(L1,L1) :- 
    false.
p_star_2(K1,M1) :- 
    dual(2,p,K1,M1).
p_star_3(N1,N1) :- 
    false.
p_star_3(M1,O1) :- 
    dual(3,p,M1,O1).
p_star_4(P1,P1) :- 
    false.
p_star_4(O1,Q1) :- 
    dual(4,p,O1,Q1).
p_star_5(R1,R1) :- 
    false.
p_star_5(Q1,S1) :- 
    dual(5,p,Q1,S1).
p_star_6(T1,T1) :- 
    false.
p_star_6(S1,U1) :- 
    dual(6,p,S1,U1).
p_star_7(V1,V1) :- 
    false.
p_star_7(U1,W1) :- 
    dual(7,p,U1,W1).
p_star_8(X1,X1) :- 
    false.
p_star_8(W1,Y1) :- 
    dual(8,p,W1,Y1).
p_star_9(Z1,Z1) :- 
    false.
p_star_9(Y1,A2) :- 
    dual(9,p,Y1,A2).
p_star_10(B2,B2) :- 
    false.
p_star_10(A2,C2) :- 
    dual(10,p,A2,C2).
p_star_11(D2,D2) :- 
    false.
p_star_11(C2,E2) :- 
    dual(11,p,C2,E2).
p_star_12(F2,F2) :- 
    false.
p_star_12(E2,G2) :- 
    dual(12,p,E2,G2).
p_star_13(H2,H2) :- 
    false.
p_star_13(G2,I2) :- 
    dual(13,p,G2,I2).
p_star_14(J2,J2) :- 
    false.
p_star_14(I2,K2) :- 
    dual(14,p,I2,K2).
p_star_15(L2,L2) :- 
    false.
p_star_15(K2,M2) :- 
    dual(15,p,K2,M2).
not_p(J1,M2) :- 
    (true,p_star_1(J1,K1),true,p_star_2(K1,M1),true,p_star_3(M1,O1),true,p_star_4(O1,Q1),true,p_star_5(Q1,S1),true,p_star_6(S1,U1),true,p_star_7(U1,W1),true,p_star_8(W1,Y1),true,p_star_9(Y1,A2),true,p_star_10(A2,C2),true,p_star_11(C2,E2),true,p_star_12(E2,G2),true,p_star_13(G2,I2),true,p_star_14(I2,K2),true,p_star_15(K2,M2)).

not_false(N2,N2).

a1(O2,P2) :- 
    insert_abducible(a1,O2,P2).
a1_star(Q2,R2) :- 
    insert_abducible(not a1,Q2,R2).
a2(S2,T2) :- 
    insert_abducible(a2,S2,T2).
a2_star(U2,V2) :- 
    insert_abducible(not a2,U2,V2).
a3(W2,X2) :- 
    insert_abducible(a3,W2,X2).
a3_star(Y2,Z2) :- 
    insert_abducible(not a3,Y2,Z2).
a4(A3,B3) :- 
    insert_abducible(a4,A3,B3).
a4_star(C3,D3) :- 
    insert_abducible(not a4,C3,D3).

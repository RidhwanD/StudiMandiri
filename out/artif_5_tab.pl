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

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a5]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a5]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a5]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a5]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a5]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a5]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a5]).
:- table p_ab/1.
p(N1,O1) :- 
    (p_ab(P1),produce_context(O1,N1,P1)).
p_star_1(Q1,Q1) :- 
    false.
p_star_1(R1,S1) :- 
    dual(1,p,R1,S1).
p_star_2(T1,T1) :- 
    false.
p_star_2(S1,U1) :- 
    dual(2,p,S1,U1).
p_star_3(V1,V1) :- 
    false.
p_star_3(U1,W1) :- 
    dual(3,p,U1,W1).
p_star_4(X1,X1) :- 
    false.
p_star_4(W1,Y1) :- 
    dual(4,p,W1,Y1).
p_star_5(Z1,Z1) :- 
    false.
p_star_5(Y1,A2) :- 
    dual(5,p,Y1,A2).
p_star_6(B2,B2) :- 
    false.
p_star_6(A2,C2) :- 
    dual(6,p,A2,C2).
p_star_7(D2,D2) :- 
    false.
p_star_7(C2,E2) :- 
    dual(7,p,C2,E2).
p_star_8(F2,F2) :- 
    false.
p_star_8(E2,G2) :- 
    dual(8,p,E2,G2).
p_star_9(H2,H2) :- 
    false.
p_star_9(G2,I2) :- 
    dual(9,p,G2,I2).
p_star_10(J2,J2) :- 
    false.
p_star_10(I2,K2) :- 
    dual(10,p,I2,K2).
p_star_11(L2,L2) :- 
    false.
p_star_11(K2,M2) :- 
    dual(11,p,K2,M2).
p_star_12(N2,N2) :- 
    false.
p_star_12(M2,O2) :- 
    dual(12,p,M2,O2).
p_star_13(P2,P2) :- 
    false.
p_star_13(O2,Q2) :- 
    dual(13,p,O2,Q2).
p_star_14(R2,R2) :- 
    false.
p_star_14(Q2,S2) :- 
    dual(14,p,Q2,S2).
p_star_15(T2,T2) :- 
    false.
p_star_15(S2,U2) :- 
    dual(15,p,S2,U2).
p_star_16(V2,V2) :- 
    false.
p_star_16(U2,W2) :- 
    dual(16,p,U2,W2).
p_star_17(X2,X2) :- 
    false.
p_star_17(W2,Y2) :- 
    dual(17,p,W2,Y2).
p_star_18(Z2,Z2) :- 
    false.
p_star_18(Y2,A3) :- 
    dual(18,p,Y2,A3).
p_star_19(B3,B3) :- 
    false.
p_star_19(A3,C3) :- 
    dual(19,p,A3,C3).
p_star_20(D3,D3) :- 
    false.
p_star_20(C3,E3) :- 
    dual(20,p,C3,E3).
p_star_21(F3,F3) :- 
    false.
p_star_21(E3,G3) :- 
    dual(21,p,E3,G3).
p_star_22(H3,H3) :- 
    false.
p_star_22(G3,I3) :- 
    dual(22,p,G3,I3).
p_star_23(J3,J3) :- 
    false.
p_star_23(I3,K3) :- 
    dual(23,p,I3,K3).
p_star_24(L3,L3) :- 
    false.
p_star_24(K3,M3) :- 
    dual(24,p,K3,M3).
p_star_25(N3,N3) :- 
    false.
p_star_25(M3,O3) :- 
    dual(25,p,M3,O3).
p_star_26(P3,P3) :- 
    false.
p_star_26(O3,Q3) :- 
    dual(26,p,O3,Q3).
p_star_27(R3,R3) :- 
    false.
p_star_27(Q3,S3) :- 
    dual(27,p,Q3,S3).
p_star_28(T3,T3) :- 
    false.
p_star_28(S3,U3) :- 
    dual(28,p,S3,U3).
p_star_29(V3,V3) :- 
    false.
p_star_29(U3,W3) :- 
    dual(29,p,U3,W3).
p_star_30(X3,X3) :- 
    false.
p_star_30(W3,Y3) :- 
    dual(30,p,W3,Y3).
p_star_31(Z3,Z3) :- 
    false.
p_star_31(Y3,A4) :- 
    dual(31,p,Y3,A4).
not_p(R1,A4) :- 
    (true,p_star_1(R1,S1),true,p_star_2(S1,U1),true,p_star_3(U1,W1),true,p_star_4(W1,Y1),true,p_star_5(Y1,A2),true,p_star_6(A2,C2),true,p_star_7(C2,E2),true,p_star_8(E2,G2),true,p_star_9(G2,I2),true,p_star_10(I2,K2),true,p_star_11(K2,M2),true,p_star_12(M2,O2),true,p_star_13(O2,Q2),true,p_star_14(Q2,S2),true,p_star_15(S2,U2),true,p_star_16(U2,W2),true,p_star_17(W2,Y2),true,p_star_18(Y2,A3),true,p_star_19(A3,C3),true,p_star_20(C3,E3),true,p_star_21(E3,G3),true,p_star_22(G3,I3),true,p_star_23(I3,K3),true,p_star_24(K3,M3),true,p_star_25(M3,O3),true,p_star_26(O3,Q3),true,p_star_27(Q3,S3),true,p_star_28(S3,U3),true,p_star_29(U3,W3),true,p_star_30(W3,Y3),true,p_star_31(Y3,A4)).

not_false(B4,B4).

a1(C4,D4) :- 
    insert_abducible(a1,C4,D4).
a1_star(E4,F4) :- 
    insert_abducible(not a1,E4,F4).
a2(G4,H4) :- 
    insert_abducible(a2,G4,H4).
a2_star(I4,J4) :- 
    insert_abducible(not a2,I4,J4).
a3(K4,L4) :- 
    insert_abducible(a3,K4,L4).
a3_star(M4,N4) :- 
    insert_abducible(not a3,M4,N4).
a4(O4,P4) :- 
    insert_abducible(a4,O4,P4).
a4_star(Q4,R4) :- 
    insert_abducible(not a4,Q4,R4).
a5(S4,T4) :- 
    insert_abducible(a5,S4,T4).
a5_star(U4,V4) :- 
    insert_abducible(not a5,U4,V4).

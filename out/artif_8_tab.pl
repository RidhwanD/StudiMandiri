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

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a4,a5,a6]).
p_ab([a1,a2,a3,a4,a5,a6,a7]).
p_ab([a1,a2,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a6,a8]).
p_ab([a1,a2,a3,a4,a5,a7]).
p_ab([a1,a2,a3,a4,a5,a7,a8]).
p_ab([a1,a2,a3,a4,a5,a8]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a6,a7]).
p_ab([a1,a2,a3,a4,a6,a7,a8]).
p_ab([a1,a2,a3,a4,a6,a8]).
p_ab([a1,a2,a3,a4,a7]).
p_ab([a1,a2,a3,a4,a7,a8]).
p_ab([a1,a2,a3,a4,a8]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5,a6,a7]).
p_ab([a1,a2,a3,a5,a6,a7,a8]).
p_ab([a1,a2,a3,a5,a6,a8]).
p_ab([a1,a2,a3,a5,a7]).
p_ab([a1,a2,a3,a5,a7,a8]).
p_ab([a1,a2,a3,a5,a8]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a6,a7]).
p_ab([a1,a2,a3,a6,a7,a8]).
p_ab([a1,a2,a3,a6,a8]).
p_ab([a1,a2,a3,a7]).
p_ab([a1,a2,a3,a7,a8]).
p_ab([a1,a2,a3,a8]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5,a6,a7]).
p_ab([a1,a2,a4,a5,a6,a7,a8]).
p_ab([a1,a2,a4,a5,a6,a8]).
p_ab([a1,a2,a4,a5,a7]).
p_ab([a1,a2,a4,a5,a7,a8]).
p_ab([a1,a2,a4,a5,a8]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a6,a7]).
p_ab([a1,a2,a4,a6,a7,a8]).
p_ab([a1,a2,a4,a6,a8]).
p_ab([a1,a2,a4,a7]).
p_ab([a1,a2,a4,a7,a8]).
p_ab([a1,a2,a4,a8]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5,a6,a7]).
p_ab([a1,a2,a5,a6,a7,a8]).
p_ab([a1,a2,a5,a6,a8]).
p_ab([a1,a2,a5,a7]).
p_ab([a1,a2,a5,a7,a8]).
p_ab([a1,a2,a5,a8]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a6,a7]).
p_ab([a1,a2,a6,a7,a8]).
p_ab([a1,a2,a6,a8]).
p_ab([a1,a2,a7]).
p_ab([a1,a2,a7,a8]).
p_ab([a1,a2,a8]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5,a6,a7]).
p_ab([a1,a3,a4,a5,a6,a7,a8]).
p_ab([a1,a3,a4,a5,a6,a8]).
p_ab([a1,a3,a4,a5,a7]).
p_ab([a1,a3,a4,a5,a7,a8]).
p_ab([a1,a3,a4,a5,a8]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a6,a7]).
p_ab([a1,a3,a4,a6,a7,a8]).
p_ab([a1,a3,a4,a6,a8]).
p_ab([a1,a3,a4,a7]).
p_ab([a1,a3,a4,a7,a8]).
p_ab([a1,a3,a4,a8]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5,a6,a7]).
p_ab([a1,a3,a5,a6,a7,a8]).
p_ab([a1,a3,a5,a6,a8]).
p_ab([a1,a3,a5,a7]).
p_ab([a1,a3,a5,a7,a8]).
p_ab([a1,a3,a5,a8]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a6,a7]).
p_ab([a1,a3,a6,a7,a8]).
p_ab([a1,a3,a6,a8]).
p_ab([a1,a3,a7]).
p_ab([a1,a3,a7,a8]).
p_ab([a1,a3,a8]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5,a6,a7]).
p_ab([a1,a4,a5,a6,a7,a8]).
p_ab([a1,a4,a5,a6,a8]).
p_ab([a1,a4,a5,a7]).
p_ab([a1,a4,a5,a7,a8]).
p_ab([a1,a4,a5,a8]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a6,a7]).
p_ab([a1,a4,a6,a7,a8]).
p_ab([a1,a4,a6,a8]).
p_ab([a1,a4,a7]).
p_ab([a1,a4,a7,a8]).
p_ab([a1,a4,a8]).
p_ab([a1,a5]).
p_ab([a1,a5,a6]).
p_ab([a1,a5,a6,a7]).
p_ab([a1,a5,a6,a7,a8]).
p_ab([a1,a5,a6,a8]).
p_ab([a1,a5,a7]).
p_ab([a1,a5,a7,a8]).
p_ab([a1,a5,a8]).
p_ab([a1,a6]).
p_ab([a1,a6,a7]).
p_ab([a1,a6,a7,a8]).
p_ab([a1,a6,a8]).
p_ab([a1,a7]).
p_ab([a1,a7,a8]).
p_ab([a1,a8]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5,a6,a7]).
p_ab([a2,a3,a4,a5,a6,a7,a8]).
p_ab([a2,a3,a4,a5,a6,a8]).
p_ab([a2,a3,a4,a5,a7]).
p_ab([a2,a3,a4,a5,a7,a8]).
p_ab([a2,a3,a4,a5,a8]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a6,a7]).
p_ab([a2,a3,a4,a6,a7,a8]).
p_ab([a2,a3,a4,a6,a8]).
p_ab([a2,a3,a4,a7]).
p_ab([a2,a3,a4,a7,a8]).
p_ab([a2,a3,a4,a8]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5,a6,a7]).
p_ab([a2,a3,a5,a6,a7,a8]).
p_ab([a2,a3,a5,a6,a8]).
p_ab([a2,a3,a5,a7]).
p_ab([a2,a3,a5,a7,a8]).
p_ab([a2,a3,a5,a8]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a6,a7]).
p_ab([a2,a3,a6,a7,a8]).
p_ab([a2,a3,a6,a8]).
p_ab([a2,a3,a7]).
p_ab([a2,a3,a7,a8]).
p_ab([a2,a3,a8]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5,a6,a7]).
p_ab([a2,a4,a5,a6,a7,a8]).
p_ab([a2,a4,a5,a6,a8]).
p_ab([a2,a4,a5,a7]).
p_ab([a2,a4,a5,a7,a8]).
p_ab([a2,a4,a5,a8]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a6,a7]).
p_ab([a2,a4,a6,a7,a8]).
p_ab([a2,a4,a6,a8]).
p_ab([a2,a4,a7]).
p_ab([a2,a4,a7,a8]).
p_ab([a2,a4,a8]).
p_ab([a2,a5]).
p_ab([a2,a5,a6]).
p_ab([a2,a5,a6,a7]).
p_ab([a2,a5,a6,a7,a8]).
p_ab([a2,a5,a6,a8]).
p_ab([a2,a5,a7]).
p_ab([a2,a5,a7,a8]).
p_ab([a2,a5,a8]).
p_ab([a2,a6]).
p_ab([a2,a6,a7]).
p_ab([a2,a6,a7,a8]).
p_ab([a2,a6,a8]).
p_ab([a2,a7]).
p_ab([a2,a7,a8]).
p_ab([a2,a8]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5,a6,a7]).
p_ab([a3,a4,a5,a6,a7,a8]).
p_ab([a3,a4,a5,a6,a8]).
p_ab([a3,a4,a5,a7]).
p_ab([a3,a4,a5,a7,a8]).
p_ab([a3,a4,a5,a8]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a6,a7]).
p_ab([a3,a4,a6,a7,a8]).
p_ab([a3,a4,a6,a8]).
p_ab([a3,a4,a7]).
p_ab([a3,a4,a7,a8]).
p_ab([a3,a4,a8]).
p_ab([a3,a5]).
p_ab([a3,a5,a6]).
p_ab([a3,a5,a6,a7]).
p_ab([a3,a5,a6,a7,a8]).
p_ab([a3,a5,a6,a8]).
p_ab([a3,a5,a7]).
p_ab([a3,a5,a7,a8]).
p_ab([a3,a5,a8]).
p_ab([a3,a6]).
p_ab([a3,a6,a7]).
p_ab([a3,a6,a7,a8]).
p_ab([a3,a6,a8]).
p_ab([a3,a7]).
p_ab([a3,a7,a8]).
p_ab([a3,a8]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a4,a5,a6]).
p_ab([a4,a5,a6,a7]).
p_ab([a4,a5,a6,a7,a8]).
p_ab([a4,a5,a6,a8]).
p_ab([a4,a5,a7]).
p_ab([a4,a5,a7,a8]).
p_ab([a4,a5,a8]).
p_ab([a4,a6]).
p_ab([a4,a6,a7]).
p_ab([a4,a6,a7,a8]).
p_ab([a4,a6,a8]).
p_ab([a4,a7]).
p_ab([a4,a7,a8]).
p_ab([a4,a8]).
p_ab([a5]).
p_ab([a5,a6]).
p_ab([a5,a6,a7]).
p_ab([a5,a6,a7,a8]).
p_ab([a5,a6,a8]).
p_ab([a5,a7]).
p_ab([a5,a7,a8]).
p_ab([a5,a8]).
p_ab([a6]).
p_ab([a6,a7]).
p_ab([a6,a7,a8]).
p_ab([a6,a8]).
p_ab([a7]).
p_ab([a7,a8]).
p_ab([a8]).
:- table p_ab/1.
p(L2,M2) :- 
    (p_ab(N2),produce_context(M2,L2,N2)).
p_star_1(O2,O2) :- 
    false.
p_star_1(P2,Q2) :- 
    dual(1,p,P2,Q2).
p_star_2(R2,R2) :- 
    false.
p_star_2(Q2,S2) :- 
    dual(2,p,Q2,S2).
p_star_3(T2,T2) :- 
    false.
p_star_3(S2,U2) :- 
    dual(3,p,S2,U2).
p_star_4(V2,V2) :- 
    false.
p_star_4(U2,W2) :- 
    dual(4,p,U2,W2).
p_star_5(X2,X2) :- 
    false.
p_star_5(W2,Y2) :- 
    dual(5,p,W2,Y2).
p_star_6(Z2,Z2) :- 
    false.
p_star_6(Y2,A3) :- 
    dual(6,p,Y2,A3).
p_star_7(B3,B3) :- 
    false.
p_star_7(A3,C3) :- 
    dual(7,p,A3,C3).
p_star_8(D3,D3) :- 
    false.
p_star_8(C3,E3) :- 
    dual(8,p,C3,E3).
p_star_9(F3,F3) :- 
    false.
p_star_9(E3,G3) :- 
    dual(9,p,E3,G3).
p_star_10(H3,H3) :- 
    false.
p_star_10(G3,I3) :- 
    dual(10,p,G3,I3).
p_star_11(J3,J3) :- 
    false.
p_star_11(I3,K3) :- 
    dual(11,p,I3,K3).
p_star_12(L3,L3) :- 
    false.
p_star_12(K3,M3) :- 
    dual(12,p,K3,M3).
p_star_13(N3,N3) :- 
    false.
p_star_13(M3,O3) :- 
    dual(13,p,M3,O3).
p_star_14(P3,P3) :- 
    false.
p_star_14(O3,Q3) :- 
    dual(14,p,O3,Q3).
p_star_15(R3,R3) :- 
    false.
p_star_15(Q3,S3) :- 
    dual(15,p,Q3,S3).
p_star_16(T3,T3) :- 
    false.
p_star_16(S3,U3) :- 
    dual(16,p,S3,U3).
p_star_17(V3,V3) :- 
    false.
p_star_17(U3,W3) :- 
    dual(17,p,U3,W3).
p_star_18(X3,X3) :- 
    false.
p_star_18(W3,Y3) :- 
    dual(18,p,W3,Y3).
p_star_19(Z3,Z3) :- 
    false.
p_star_19(Y3,A4) :- 
    dual(19,p,Y3,A4).
p_star_20(B4,B4) :- 
    false.
p_star_20(A4,C4) :- 
    dual(20,p,A4,C4).
p_star_21(D4,D4) :- 
    false.
p_star_21(C4,E4) :- 
    dual(21,p,C4,E4).
p_star_22(F4,F4) :- 
    false.
p_star_22(E4,G4) :- 
    dual(22,p,E4,G4).
p_star_23(H4,H4) :- 
    false.
p_star_23(G4,I4) :- 
    dual(23,p,G4,I4).
p_star_24(J4,J4) :- 
    false.
p_star_24(I4,K4) :- 
    dual(24,p,I4,K4).
p_star_25(L4,L4) :- 
    false.
p_star_25(K4,M4) :- 
    dual(25,p,K4,M4).
p_star_26(N4,N4) :- 
    false.
p_star_26(M4,O4) :- 
    dual(26,p,M4,O4).
p_star_27(P4,P4) :- 
    false.
p_star_27(O4,Q4) :- 
    dual(27,p,O4,Q4).
p_star_28(R4,R4) :- 
    false.
p_star_28(Q4,S4) :- 
    dual(28,p,Q4,S4).
p_star_29(T4,T4) :- 
    false.
p_star_29(S4,U4) :- 
    dual(29,p,S4,U4).
p_star_30(V4,V4) :- 
    false.
p_star_30(U4,W4) :- 
    dual(30,p,U4,W4).
p_star_31(X4,X4) :- 
    false.
p_star_31(W4,Y4) :- 
    dual(31,p,W4,Y4).
p_star_32(Z4,Z4) :- 
    false.
p_star_32(Y4,A5) :- 
    dual(32,p,Y4,A5).
p_star_33(B5,B5) :- 
    false.
p_star_33(A5,C5) :- 
    dual(33,p,A5,C5).
p_star_34(D5,D5) :- 
    false.
p_star_34(C5,E5) :- 
    dual(34,p,C5,E5).
p_star_35(F5,F5) :- 
    false.
p_star_35(E5,G5) :- 
    dual(35,p,E5,G5).
p_star_36(H5,H5) :- 
    false.
p_star_36(G5,I5) :- 
    dual(36,p,G5,I5).
p_star_37(J5,J5) :- 
    false.
p_star_37(I5,K5) :- 
    dual(37,p,I5,K5).
p_star_38(L5,L5) :- 
    false.
p_star_38(K5,M5) :- 
    dual(38,p,K5,M5).
p_star_39(N5,N5) :- 
    false.
p_star_39(M5,O5) :- 
    dual(39,p,M5,O5).
p_star_40(P5,P5) :- 
    false.
p_star_40(O5,Q5) :- 
    dual(40,p,O5,Q5).
p_star_41(R5,R5) :- 
    false.
p_star_41(Q5,S5) :- 
    dual(41,p,Q5,S5).
p_star_42(T5,T5) :- 
    false.
p_star_42(S5,U5) :- 
    dual(42,p,S5,U5).
p_star_43(V5,V5) :- 
    false.
p_star_43(U5,W5) :- 
    dual(43,p,U5,W5).
p_star_44(X5,X5) :- 
    false.
p_star_44(W5,Y5) :- 
    dual(44,p,W5,Y5).
p_star_45(Z5,Z5) :- 
    false.
p_star_45(Y5,A6) :- 
    dual(45,p,Y5,A6).
p_star_46(B6,B6) :- 
    false.
p_star_46(A6,C6) :- 
    dual(46,p,A6,C6).
p_star_47(D6,D6) :- 
    false.
p_star_47(C6,E6) :- 
    dual(47,p,C6,E6).
p_star_48(F6,F6) :- 
    false.
p_star_48(E6,G6) :- 
    dual(48,p,E6,G6).
p_star_49(H6,H6) :- 
    false.
p_star_49(G6,I6) :- 
    dual(49,p,G6,I6).
p_star_50(J6,J6) :- 
    false.
p_star_50(I6,K6) :- 
    dual(50,p,I6,K6).
p_star_51(L6,L6) :- 
    false.
p_star_51(K6,M6) :- 
    dual(51,p,K6,M6).
p_star_52(N6,N6) :- 
    false.
p_star_52(M6,O6) :- 
    dual(52,p,M6,O6).
p_star_53(P6,P6) :- 
    false.
p_star_53(O6,Q6) :- 
    dual(53,p,O6,Q6).
p_star_54(R6,R6) :- 
    false.
p_star_54(Q6,S6) :- 
    dual(54,p,Q6,S6).
p_star_55(T6,T6) :- 
    false.
p_star_55(S6,U6) :- 
    dual(55,p,S6,U6).
p_star_56(V6,V6) :- 
    false.
p_star_56(U6,W6) :- 
    dual(56,p,U6,W6).
p_star_57(X6,X6) :- 
    false.
p_star_57(W6,Y6) :- 
    dual(57,p,W6,Y6).
p_star_58(Z6,Z6) :- 
    false.
p_star_58(Y6,A7) :- 
    dual(58,p,Y6,A7).
p_star_59(B7,B7) :- 
    false.
p_star_59(A7,C7) :- 
    dual(59,p,A7,C7).
p_star_60(D7,D7) :- 
    false.
p_star_60(C7,E7) :- 
    dual(60,p,C7,E7).
p_star_61(F7,F7) :- 
    false.
p_star_61(E7,G7) :- 
    dual(61,p,E7,G7).
p_star_62(H7,H7) :- 
    false.
p_star_62(G7,I7) :- 
    dual(62,p,G7,I7).
p_star_63(J7,J7) :- 
    false.
p_star_63(I7,K7) :- 
    dual(63,p,I7,K7).
p_star_64(L7,L7) :- 
    false.
p_star_64(K7,M7) :- 
    dual(64,p,K7,M7).
p_star_65(N7,N7) :- 
    false.
p_star_65(M7,O7) :- 
    dual(65,p,M7,O7).
p_star_66(P7,P7) :- 
    false.
p_star_66(O7,Q7) :- 
    dual(66,p,O7,Q7).
p_star_67(R7,R7) :- 
    false.
p_star_67(Q7,S7) :- 
    dual(67,p,Q7,S7).
p_star_68(T7,T7) :- 
    false.
p_star_68(S7,U7) :- 
    dual(68,p,S7,U7).
p_star_69(V7,V7) :- 
    false.
p_star_69(U7,W7) :- 
    dual(69,p,U7,W7).
p_star_70(X7,X7) :- 
    false.
p_star_70(W7,Y7) :- 
    dual(70,p,W7,Y7).
p_star_71(Z7,Z7) :- 
    false.
p_star_71(Y7,A8) :- 
    dual(71,p,Y7,A8).
p_star_72(B8,B8) :- 
    false.
p_star_72(A8,C8) :- 
    dual(72,p,A8,C8).
p_star_73(D8,D8) :- 
    false.
p_star_73(C8,E8) :- 
    dual(73,p,C8,E8).
p_star_74(F8,F8) :- 
    false.
p_star_74(E8,G8) :- 
    dual(74,p,E8,G8).
p_star_75(H8,H8) :- 
    false.
p_star_75(G8,I8) :- 
    dual(75,p,G8,I8).
p_star_76(J8,J8) :- 
    false.
p_star_76(I8,K8) :- 
    dual(76,p,I8,K8).
p_star_77(L8,L8) :- 
    false.
p_star_77(K8,M8) :- 
    dual(77,p,K8,M8).
p_star_78(N8,N8) :- 
    false.
p_star_78(M8,O8) :- 
    dual(78,p,M8,O8).
p_star_79(P8,P8) :- 
    false.
p_star_79(O8,Q8) :- 
    dual(79,p,O8,Q8).
p_star_80(R8,R8) :- 
    false.
p_star_80(Q8,S8) :- 
    dual(80,p,Q8,S8).
p_star_81(T8,T8) :- 
    false.
p_star_81(S8,U8) :- 
    dual(81,p,S8,U8).
p_star_82(V8,V8) :- 
    false.
p_star_82(U8,W8) :- 
    dual(82,p,U8,W8).
p_star_83(X8,X8) :- 
    false.
p_star_83(W8,Y8) :- 
    dual(83,p,W8,Y8).
p_star_84(Z8,Z8) :- 
    false.
p_star_84(Y8,A9) :- 
    dual(84,p,Y8,A9).
p_star_85(B9,B9) :- 
    false.
p_star_85(A9,C9) :- 
    dual(85,p,A9,C9).
p_star_86(D9,D9) :- 
    false.
p_star_86(C9,E9) :- 
    dual(86,p,C9,E9).
p_star_87(F9,F9) :- 
    false.
p_star_87(E9,G9) :- 
    dual(87,p,E9,G9).
p_star_88(H9,H9) :- 
    false.
p_star_88(G9,I9) :- 
    dual(88,p,G9,I9).
p_star_89(J9,J9) :- 
    false.
p_star_89(I9,K9) :- 
    dual(89,p,I9,K9).
p_star_90(L9,L9) :- 
    false.
p_star_90(K9,M9) :- 
    dual(90,p,K9,M9).
p_star_91(N9,N9) :- 
    false.
p_star_91(M9,O9) :- 
    dual(91,p,M9,O9).
p_star_92(P9,P9) :- 
    false.
p_star_92(O9,Q9) :- 
    dual(92,p,O9,Q9).
p_star_93(R9,R9) :- 
    false.
p_star_93(Q9,S9) :- 
    dual(93,p,Q9,S9).
p_star_94(T9,T9) :- 
    false.
p_star_94(S9,U9) :- 
    dual(94,p,S9,U9).
p_star_95(V9,V9) :- 
    false.
p_star_95(U9,W9) :- 
    dual(95,p,U9,W9).
p_star_96(X9,X9) :- 
    false.
p_star_96(W9,Y9) :- 
    dual(96,p,W9,Y9).
p_star_97(Z9,Z9) :- 
    false.
p_star_97(Y9,A10) :- 
    dual(97,p,Y9,A10).
p_star_98(B10,B10) :- 
    false.
p_star_98(A10,C10) :- 
    dual(98,p,A10,C10).
p_star_99(D10,D10) :- 
    false.
p_star_99(C10,E10) :- 
    dual(99,p,C10,E10).
p_star_100(F10,F10) :- 
    false.
p_star_100(E10,G10) :- 
    dual(100,p,E10,G10).
p_star_101(H10,H10) :- 
    false.
p_star_101(G10,I10) :- 
    dual(101,p,G10,I10).
p_star_102(J10,J10) :- 
    false.
p_star_102(I10,K10) :- 
    dual(102,p,I10,K10).
p_star_103(L10,L10) :- 
    false.
p_star_103(K10,M10) :- 
    dual(103,p,K10,M10).
p_star_104(N10,N10) :- 
    false.
p_star_104(M10,O10) :- 
    dual(104,p,M10,O10).
p_star_105(P10,P10) :- 
    false.
p_star_105(O10,Q10) :- 
    dual(105,p,O10,Q10).
p_star_106(R10,R10) :- 
    false.
p_star_106(Q10,S10) :- 
    dual(106,p,Q10,S10).
p_star_107(T10,T10) :- 
    false.
p_star_107(S10,U10) :- 
    dual(107,p,S10,U10).
p_star_108(V10,V10) :- 
    false.
p_star_108(U10,W10) :- 
    dual(108,p,U10,W10).
p_star_109(X10,X10) :- 
    false.
p_star_109(W10,Y10) :- 
    dual(109,p,W10,Y10).
p_star_110(Z10,Z10) :- 
    false.
p_star_110(Y10,A11) :- 
    dual(110,p,Y10,A11).
p_star_111(B11,B11) :- 
    false.
p_star_111(A11,C11) :- 
    dual(111,p,A11,C11).
p_star_112(D11,D11) :- 
    false.
p_star_112(C11,E11) :- 
    dual(112,p,C11,E11).
p_star_113(F11,F11) :- 
    false.
p_star_113(E11,G11) :- 
    dual(113,p,E11,G11).
p_star_114(H11,H11) :- 
    false.
p_star_114(G11,I11) :- 
    dual(114,p,G11,I11).
p_star_115(J11,J11) :- 
    false.
p_star_115(I11,K11) :- 
    dual(115,p,I11,K11).
p_star_116(L11,L11) :- 
    false.
p_star_116(K11,M11) :- 
    dual(116,p,K11,M11).
p_star_117(N11,N11) :- 
    false.
p_star_117(M11,O11) :- 
    dual(117,p,M11,O11).
p_star_118(P11,P11) :- 
    false.
p_star_118(O11,Q11) :- 
    dual(118,p,O11,Q11).
p_star_119(R11,R11) :- 
    false.
p_star_119(Q11,S11) :- 
    dual(119,p,Q11,S11).
p_star_120(T11,T11) :- 
    false.
p_star_120(S11,U11) :- 
    dual(120,p,S11,U11).
p_star_121(V11,V11) :- 
    false.
p_star_121(U11,W11) :- 
    dual(121,p,U11,W11).
p_star_122(X11,X11) :- 
    false.
p_star_122(W11,Y11) :- 
    dual(122,p,W11,Y11).
p_star_123(Z11,Z11) :- 
    false.
p_star_123(Y11,A12) :- 
    dual(123,p,Y11,A12).
p_star_124(B12,B12) :- 
    false.
p_star_124(A12,C12) :- 
    dual(124,p,A12,C12).
p_star_125(D12,D12) :- 
    false.
p_star_125(C12,E12) :- 
    dual(125,p,C12,E12).
p_star_126(F12,F12) :- 
    false.
p_star_126(E12,G12) :- 
    dual(126,p,E12,G12).
p_star_127(H12,H12) :- 
    false.
p_star_127(G12,I12) :- 
    dual(127,p,G12,I12).
p_star_128(J12,J12) :- 
    false.
p_star_128(I12,K12) :- 
    dual(128,p,I12,K12).
p_star_129(L12,L12) :- 
    false.
p_star_129(K12,M12) :- 
    dual(129,p,K12,M12).
p_star_130(N12,N12) :- 
    false.
p_star_130(M12,O12) :- 
    dual(130,p,M12,O12).
p_star_131(P12,P12) :- 
    false.
p_star_131(O12,Q12) :- 
    dual(131,p,O12,Q12).
p_star_132(R12,R12) :- 
    false.
p_star_132(Q12,S12) :- 
    dual(132,p,Q12,S12).
p_star_133(T12,T12) :- 
    false.
p_star_133(S12,U12) :- 
    dual(133,p,S12,U12).
p_star_134(V12,V12) :- 
    false.
p_star_134(U12,W12) :- 
    dual(134,p,U12,W12).
p_star_135(X12,X12) :- 
    false.
p_star_135(W12,Y12) :- 
    dual(135,p,W12,Y12).
p_star_136(Z12,Z12) :- 
    false.
p_star_136(Y12,A13) :- 
    dual(136,p,Y12,A13).
p_star_137(B13,B13) :- 
    false.
p_star_137(A13,C13) :- 
    dual(137,p,A13,C13).
p_star_138(D13,D13) :- 
    false.
p_star_138(C13,E13) :- 
    dual(138,p,C13,E13).
p_star_139(F13,F13) :- 
    false.
p_star_139(E13,G13) :- 
    dual(139,p,E13,G13).
p_star_140(H13,H13) :- 
    false.
p_star_140(G13,I13) :- 
    dual(140,p,G13,I13).
p_star_141(J13,J13) :- 
    false.
p_star_141(I13,K13) :- 
    dual(141,p,I13,K13).
p_star_142(L13,L13) :- 
    false.
p_star_142(K13,M13) :- 
    dual(142,p,K13,M13).
p_star_143(N13,N13) :- 
    false.
p_star_143(M13,O13) :- 
    dual(143,p,M13,O13).
p_star_144(P13,P13) :- 
    false.
p_star_144(O13,Q13) :- 
    dual(144,p,O13,Q13).
p_star_145(R13,R13) :- 
    false.
p_star_145(Q13,S13) :- 
    dual(145,p,Q13,S13).
p_star_146(T13,T13) :- 
    false.
p_star_146(S13,U13) :- 
    dual(146,p,S13,U13).
p_star_147(V13,V13) :- 
    false.
p_star_147(U13,W13) :- 
    dual(147,p,U13,W13).
p_star_148(X13,X13) :- 
    false.
p_star_148(W13,Y13) :- 
    dual(148,p,W13,Y13).
p_star_149(Z13,Z13) :- 
    false.
p_star_149(Y13,A14) :- 
    dual(149,p,Y13,A14).
p_star_150(B14,B14) :- 
    false.
p_star_150(A14,C14) :- 
    dual(150,p,A14,C14).
p_star_151(D14,D14) :- 
    false.
p_star_151(C14,E14) :- 
    dual(151,p,C14,E14).
p_star_152(F14,F14) :- 
    false.
p_star_152(E14,G14) :- 
    dual(152,p,E14,G14).
p_star_153(H14,H14) :- 
    false.
p_star_153(G14,I14) :- 
    dual(153,p,G14,I14).
p_star_154(J14,J14) :- 
    false.
p_star_154(I14,K14) :- 
    dual(154,p,I14,K14).
p_star_155(L14,L14) :- 
    false.
p_star_155(K14,M14) :- 
    dual(155,p,K14,M14).
p_star_156(N14,N14) :- 
    false.
p_star_156(M14,O14) :- 
    dual(156,p,M14,O14).
p_star_157(P14,P14) :- 
    false.
p_star_157(O14,Q14) :- 
    dual(157,p,O14,Q14).
p_star_158(R14,R14) :- 
    false.
p_star_158(Q14,S14) :- 
    dual(158,p,Q14,S14).
p_star_159(T14,T14) :- 
    false.
p_star_159(S14,U14) :- 
    dual(159,p,S14,U14).
p_star_160(V14,V14) :- 
    false.
p_star_160(U14,W14) :- 
    dual(160,p,U14,W14).
p_star_161(X14,X14) :- 
    false.
p_star_161(W14,Y14) :- 
    dual(161,p,W14,Y14).
p_star_162(Z14,Z14) :- 
    false.
p_star_162(Y14,A15) :- 
    dual(162,p,Y14,A15).
p_star_163(B15,B15) :- 
    false.
p_star_163(A15,C15) :- 
    dual(163,p,A15,C15).
p_star_164(D15,D15) :- 
    false.
p_star_164(C15,E15) :- 
    dual(164,p,C15,E15).
p_star_165(F15,F15) :- 
    false.
p_star_165(E15,G15) :- 
    dual(165,p,E15,G15).
p_star_166(H15,H15) :- 
    false.
p_star_166(G15,I15) :- 
    dual(166,p,G15,I15).
p_star_167(J15,J15) :- 
    false.
p_star_167(I15,K15) :- 
    dual(167,p,I15,K15).
p_star_168(L15,L15) :- 
    false.
p_star_168(K15,M15) :- 
    dual(168,p,K15,M15).
p_star_169(N15,N15) :- 
    false.
p_star_169(M15,O15) :- 
    dual(169,p,M15,O15).
p_star_170(P15,P15) :- 
    false.
p_star_170(O15,Q15) :- 
    dual(170,p,O15,Q15).
p_star_171(R15,R15) :- 
    false.
p_star_171(Q15,S15) :- 
    dual(171,p,Q15,S15).
p_star_172(T15,T15) :- 
    false.
p_star_172(S15,U15) :- 
    dual(172,p,S15,U15).
p_star_173(V15,V15) :- 
    false.
p_star_173(U15,W15) :- 
    dual(173,p,U15,W15).
p_star_174(X15,X15) :- 
    false.
p_star_174(W15,Y15) :- 
    dual(174,p,W15,Y15).
p_star_175(Z15,Z15) :- 
    false.
p_star_175(Y15,A16) :- 
    dual(175,p,Y15,A16).
p_star_176(B16,B16) :- 
    false.
p_star_176(A16,C16) :- 
    dual(176,p,A16,C16).
p_star_177(D16,D16) :- 
    false.
p_star_177(C16,E16) :- 
    dual(177,p,C16,E16).
p_star_178(F16,F16) :- 
    false.
p_star_178(E16,G16) :- 
    dual(178,p,E16,G16).
p_star_179(H16,H16) :- 
    false.
p_star_179(G16,I16) :- 
    dual(179,p,G16,I16).
p_star_180(J16,J16) :- 
    false.
p_star_180(I16,K16) :- 
    dual(180,p,I16,K16).
p_star_181(L16,L16) :- 
    false.
p_star_181(K16,M16) :- 
    dual(181,p,K16,M16).
p_star_182(N16,N16) :- 
    false.
p_star_182(M16,O16) :- 
    dual(182,p,M16,O16).
p_star_183(P16,P16) :- 
    false.
p_star_183(O16,Q16) :- 
    dual(183,p,O16,Q16).
p_star_184(R16,R16) :- 
    false.
p_star_184(Q16,S16) :- 
    dual(184,p,Q16,S16).
p_star_185(T16,T16) :- 
    false.
p_star_185(S16,U16) :- 
    dual(185,p,S16,U16).
p_star_186(V16,V16) :- 
    false.
p_star_186(U16,W16) :- 
    dual(186,p,U16,W16).
p_star_187(X16,X16) :- 
    false.
p_star_187(W16,Y16) :- 
    dual(187,p,W16,Y16).
p_star_188(Z16,Z16) :- 
    false.
p_star_188(Y16,A17) :- 
    dual(188,p,Y16,A17).
p_star_189(B17,B17) :- 
    false.
p_star_189(A17,C17) :- 
    dual(189,p,A17,C17).
p_star_190(D17,D17) :- 
    false.
p_star_190(C17,E17) :- 
    dual(190,p,C17,E17).
p_star_191(F17,F17) :- 
    false.
p_star_191(E17,G17) :- 
    dual(191,p,E17,G17).
p_star_192(H17,H17) :- 
    false.
p_star_192(G17,I17) :- 
    dual(192,p,G17,I17).
p_star_193(J17,J17) :- 
    false.
p_star_193(I17,K17) :- 
    dual(193,p,I17,K17).
p_star_194(L17,L17) :- 
    false.
p_star_194(K17,M17) :- 
    dual(194,p,K17,M17).
p_star_195(N17,N17) :- 
    false.
p_star_195(M17,O17) :- 
    dual(195,p,M17,O17).
p_star_196(P17,P17) :- 
    false.
p_star_196(O17,Q17) :- 
    dual(196,p,O17,Q17).
p_star_197(R17,R17) :- 
    false.
p_star_197(Q17,S17) :- 
    dual(197,p,Q17,S17).
p_star_198(T17,T17) :- 
    false.
p_star_198(S17,U17) :- 
    dual(198,p,S17,U17).
p_star_199(V17,V17) :- 
    false.
p_star_199(U17,W17) :- 
    dual(199,p,U17,W17).
p_star_200(X17,X17) :- 
    false.
p_star_200(W17,Y17) :- 
    dual(200,p,W17,Y17).
p_star_201(Z17,Z17) :- 
    false.
p_star_201(Y17,A18) :- 
    dual(201,p,Y17,A18).
p_star_202(B18,B18) :- 
    false.
p_star_202(A18,C18) :- 
    dual(202,p,A18,C18).
p_star_203(D18,D18) :- 
    false.
p_star_203(C18,E18) :- 
    dual(203,p,C18,E18).
p_star_204(F18,F18) :- 
    false.
p_star_204(E18,G18) :- 
    dual(204,p,E18,G18).
p_star_205(H18,H18) :- 
    false.
p_star_205(G18,I18) :- 
    dual(205,p,G18,I18).
p_star_206(J18,J18) :- 
    false.
p_star_206(I18,K18) :- 
    dual(206,p,I18,K18).
p_star_207(L18,L18) :- 
    false.
p_star_207(K18,M18) :- 
    dual(207,p,K18,M18).
p_star_208(N18,N18) :- 
    false.
p_star_208(M18,O18) :- 
    dual(208,p,M18,O18).
p_star_209(P18,P18) :- 
    false.
p_star_209(O18,Q18) :- 
    dual(209,p,O18,Q18).
p_star_210(R18,R18) :- 
    false.
p_star_210(Q18,S18) :- 
    dual(210,p,Q18,S18).
p_star_211(T18,T18) :- 
    false.
p_star_211(S18,U18) :- 
    dual(211,p,S18,U18).
p_star_212(V18,V18) :- 
    false.
p_star_212(U18,W18) :- 
    dual(212,p,U18,W18).
p_star_213(X18,X18) :- 
    false.
p_star_213(W18,Y18) :- 
    dual(213,p,W18,Y18).
p_star_214(Z18,Z18) :- 
    false.
p_star_214(Y18,A19) :- 
    dual(214,p,Y18,A19).
p_star_215(B19,B19) :- 
    false.
p_star_215(A19,C19) :- 
    dual(215,p,A19,C19).
p_star_216(D19,D19) :- 
    false.
p_star_216(C19,E19) :- 
    dual(216,p,C19,E19).
p_star_217(F19,F19) :- 
    false.
p_star_217(E19,G19) :- 
    dual(217,p,E19,G19).
p_star_218(H19,H19) :- 
    false.
p_star_218(G19,I19) :- 
    dual(218,p,G19,I19).
p_star_219(J19,J19) :- 
    false.
p_star_219(I19,K19) :- 
    dual(219,p,I19,K19).
p_star_220(L19,L19) :- 
    false.
p_star_220(K19,M19) :- 
    dual(220,p,K19,M19).
p_star_221(N19,N19) :- 
    false.
p_star_221(M19,O19) :- 
    dual(221,p,M19,O19).
p_star_222(P19,P19) :- 
    false.
p_star_222(O19,Q19) :- 
    dual(222,p,O19,Q19).
p_star_223(R19,R19) :- 
    false.
p_star_223(Q19,S19) :- 
    dual(223,p,Q19,S19).
p_star_224(T19,T19) :- 
    false.
p_star_224(S19,U19) :- 
    dual(224,p,S19,U19).
p_star_225(V19,V19) :- 
    false.
p_star_225(U19,W19) :- 
    dual(225,p,U19,W19).
p_star_226(X19,X19) :- 
    false.
p_star_226(W19,Y19) :- 
    dual(226,p,W19,Y19).
p_star_227(Z19,Z19) :- 
    false.
p_star_227(Y19,A20) :- 
    dual(227,p,Y19,A20).
p_star_228(B20,B20) :- 
    false.
p_star_228(A20,C20) :- 
    dual(228,p,A20,C20).
p_star_229(D20,D20) :- 
    false.
p_star_229(C20,E20) :- 
    dual(229,p,C20,E20).
p_star_230(F20,F20) :- 
    false.
p_star_230(E20,G20) :- 
    dual(230,p,E20,G20).
p_star_231(H20,H20) :- 
    false.
p_star_231(G20,I20) :- 
    dual(231,p,G20,I20).
p_star_232(J20,J20) :- 
    false.
p_star_232(I20,K20) :- 
    dual(232,p,I20,K20).
p_star_233(L20,L20) :- 
    false.
p_star_233(K20,M20) :- 
    dual(233,p,K20,M20).
p_star_234(N20,N20) :- 
    false.
p_star_234(M20,O20) :- 
    dual(234,p,M20,O20).
p_star_235(P20,P20) :- 
    false.
p_star_235(O20,Q20) :- 
    dual(235,p,O20,Q20).
p_star_236(R20,R20) :- 
    false.
p_star_236(Q20,S20) :- 
    dual(236,p,Q20,S20).
p_star_237(T20,T20) :- 
    false.
p_star_237(S20,U20) :- 
    dual(237,p,S20,U20).
p_star_238(V20,V20) :- 
    false.
p_star_238(U20,W20) :- 
    dual(238,p,U20,W20).
p_star_239(X20,X20) :- 
    false.
p_star_239(W20,Y20) :- 
    dual(239,p,W20,Y20).
p_star_240(Z20,Z20) :- 
    false.
p_star_240(Y20,A21) :- 
    dual(240,p,Y20,A21).
p_star_241(B21,B21) :- 
    false.
p_star_241(A21,C21) :- 
    dual(241,p,A21,C21).
p_star_242(D21,D21) :- 
    false.
p_star_242(C21,E21) :- 
    dual(242,p,C21,E21).
p_star_243(F21,F21) :- 
    false.
p_star_243(E21,G21) :- 
    dual(243,p,E21,G21).
p_star_244(H21,H21) :- 
    false.
p_star_244(G21,I21) :- 
    dual(244,p,G21,I21).
p_star_245(J21,J21) :- 
    false.
p_star_245(I21,K21) :- 
    dual(245,p,I21,K21).
p_star_246(L21,L21) :- 
    false.
p_star_246(K21,M21) :- 
    dual(246,p,K21,M21).
p_star_247(N21,N21) :- 
    false.
p_star_247(M21,O21) :- 
    dual(247,p,M21,O21).
p_star_248(P21,P21) :- 
    false.
p_star_248(O21,Q21) :- 
    dual(248,p,O21,Q21).
p_star_249(R21,R21) :- 
    false.
p_star_249(Q21,S21) :- 
    dual(249,p,Q21,S21).
p_star_250(T21,T21) :- 
    false.
p_star_250(S21,U21) :- 
    dual(250,p,S21,U21).
p_star_251(V21,V21) :- 
    false.
p_star_251(U21,W21) :- 
    dual(251,p,U21,W21).
p_star_252(X21,X21) :- 
    false.
p_star_252(W21,Y21) :- 
    dual(252,p,W21,Y21).
p_star_253(Z21,Z21) :- 
    false.
p_star_253(Y21,A22) :- 
    dual(253,p,Y21,A22).
p_star_254(B22,B22) :- 
    false.
p_star_254(A22,C22) :- 
    dual(254,p,A22,C22).
p_star_255(D22,D22) :- 
    false.
p_star_255(C22,E22) :- 
    dual(255,p,C22,E22).
not_p(P2,E22) :- 
    (true,p_star_1(P2,Q2),true,p_star_2(Q2,S2),true,p_star_3(S2,U2),true,p_star_4(U2,W2),true,p_star_5(W2,Y2),true,p_star_6(Y2,A3),true,p_star_7(A3,C3),true,p_star_8(C3,E3),true,p_star_9(E3,G3),true,p_star_10(G3,I3),true,p_star_11(I3,K3),true,p_star_12(K3,M3),true,p_star_13(M3,O3),true,p_star_14(O3,Q3),true,p_star_15(Q3,S3),true,p_star_16(S3,U3),true,p_star_17(U3,W3),true,p_star_18(W3,Y3),true,p_star_19(Y3,A4),true,p_star_20(A4,C4),true,p_star_21(C4,E4),true,p_star_22(E4,G4),true,p_star_23(G4,I4),true,p_star_24(I4,K4),true,p_star_25(K4,M4),true,p_star_26(M4,O4),true,p_star_27(O4,Q4),true,p_star_28(Q4,S4),true,p_star_29(S4,U4),true,p_star_30(U4,W4),true,p_star_31(W4,Y4),true,...,...).

not_false(F22,F22).

a1(G22,H22) :- 
    insert_abducible(a1,G22,H22).
a1_star(I22,J22) :- 
    insert_abducible(not a1,I22,J22).
a2(K22,L22) :- 
    insert_abducible(a2,K22,L22).
a2_star(M22,N22) :- 
    insert_abducible(not a2,M22,N22).
a3(O22,P22) :- 
    insert_abducible(a3,O22,P22).
a3_star(Q22,R22) :- 
    insert_abducible(not a3,Q22,R22).
a4(S22,T22) :- 
    insert_abducible(a4,S22,T22).
a4_star(U22,V22) :- 
    insert_abducible(not a4,U22,V22).
a5(W22,X22) :- 
    insert_abducible(a5,W22,X22).
a5_star(Y22,Z22) :- 
    insert_abducible(not a5,Y22,Z22).
a6(A23,B23) :- 
    insert_abducible(a6,A23,B23).
a6_star(C23,D23) :- 
    insert_abducible(not a6,C23,D23).
a7(E23,F23) :- 
    insert_abducible(a7,E23,F23).
a7_star(G23,H23) :- 
    insert_abducible(not a7,G23,H23).
a8(I23,J23) :- 
    insert_abducible(a8,I23,J23).
a8_star(K23,L23) :- 
    insert_abducible(not a8,K23,L23).

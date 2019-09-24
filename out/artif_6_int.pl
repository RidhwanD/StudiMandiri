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

q5_ab(F1) :- 
    (q4([],G1),p(G1,F1)).
:- table q5_ab/1 as intern.
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
:- table q6_ab/1 as intern.
q6(P1,Q1) :- 
    (q6_ab(R1),produce_context(Q1,P1,R1)).
q6_star_1(S1,S1) :- 
    false.
q6_star_1(T1,U1) :- 
    dual(1,q6,T1,U1).
not_q6(T1,U1) :- 
    (true,q6_star_1(T1,U1)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a4,a5,a6]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a6]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a6]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a6]).
p_ab([a1,a5]).
p_ab([a1,a5,a6]).
p_ab([a1,a6]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a6]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a6]).
p_ab([a2,a5]).
p_ab([a2,a5,a6]).
p_ab([a2,a6]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a6]).
p_ab([a3,a5]).
p_ab([a3,a5,a6]).
p_ab([a3,a6]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a4,a5,a6]).
p_ab([a4,a6]).
p_ab([a5]).
p_ab([a5,a6]).
p_ab([a6]).
:- table p_ab/1 as intern.
p(V1,W1) :- 
    (p_ab(X1),produce_context(W1,V1,X1)).
p_star_1(Y1,Y1) :- 
    false.
p_star_1(Z1,A2) :- 
    dual(1,p,Z1,A2).
p_star_2(B2,B2) :- 
    false.
p_star_2(A2,C2) :- 
    dual(2,p,A2,C2).
p_star_3(D2,D2) :- 
    false.
p_star_3(C2,E2) :- 
    dual(3,p,C2,E2).
p_star_4(F2,F2) :- 
    false.
p_star_4(E2,G2) :- 
    dual(4,p,E2,G2).
p_star_5(H2,H2) :- 
    false.
p_star_5(G2,I2) :- 
    dual(5,p,G2,I2).
p_star_6(J2,J2) :- 
    false.
p_star_6(I2,K2) :- 
    dual(6,p,I2,K2).
p_star_7(L2,L2) :- 
    false.
p_star_7(K2,M2) :- 
    dual(7,p,K2,M2).
p_star_8(N2,N2) :- 
    false.
p_star_8(M2,O2) :- 
    dual(8,p,M2,O2).
p_star_9(P2,P2) :- 
    false.
p_star_9(O2,Q2) :- 
    dual(9,p,O2,Q2).
p_star_10(R2,R2) :- 
    false.
p_star_10(Q2,S2) :- 
    dual(10,p,Q2,S2).
p_star_11(T2,T2) :- 
    false.
p_star_11(S2,U2) :- 
    dual(11,p,S2,U2).
p_star_12(V2,V2) :- 
    false.
p_star_12(U2,W2) :- 
    dual(12,p,U2,W2).
p_star_13(X2,X2) :- 
    false.
p_star_13(W2,Y2) :- 
    dual(13,p,W2,Y2).
p_star_14(Z2,Z2) :- 
    false.
p_star_14(Y2,A3) :- 
    dual(14,p,Y2,A3).
p_star_15(B3,B3) :- 
    false.
p_star_15(A3,C3) :- 
    dual(15,p,A3,C3).
p_star_16(D3,D3) :- 
    false.
p_star_16(C3,E3) :- 
    dual(16,p,C3,E3).
p_star_17(F3,F3) :- 
    false.
p_star_17(E3,G3) :- 
    dual(17,p,E3,G3).
p_star_18(H3,H3) :- 
    false.
p_star_18(G3,I3) :- 
    dual(18,p,G3,I3).
p_star_19(J3,J3) :- 
    false.
p_star_19(I3,K3) :- 
    dual(19,p,I3,K3).
p_star_20(L3,L3) :- 
    false.
p_star_20(K3,M3) :- 
    dual(20,p,K3,M3).
p_star_21(N3,N3) :- 
    false.
p_star_21(M3,O3) :- 
    dual(21,p,M3,O3).
p_star_22(P3,P3) :- 
    false.
p_star_22(O3,Q3) :- 
    dual(22,p,O3,Q3).
p_star_23(R3,R3) :- 
    false.
p_star_23(Q3,S3) :- 
    dual(23,p,Q3,S3).
p_star_24(T3,T3) :- 
    false.
p_star_24(S3,U3) :- 
    dual(24,p,S3,U3).
p_star_25(V3,V3) :- 
    false.
p_star_25(U3,W3) :- 
    dual(25,p,U3,W3).
p_star_26(X3,X3) :- 
    false.
p_star_26(W3,Y3) :- 
    dual(26,p,W3,Y3).
p_star_27(Z3,Z3) :- 
    false.
p_star_27(Y3,A4) :- 
    dual(27,p,Y3,A4).
p_star_28(B4,B4) :- 
    false.
p_star_28(A4,C4) :- 
    dual(28,p,A4,C4).
p_star_29(D4,D4) :- 
    false.
p_star_29(C4,E4) :- 
    dual(29,p,C4,E4).
p_star_30(F4,F4) :- 
    false.
p_star_30(E4,G4) :- 
    dual(30,p,E4,G4).
p_star_31(H4,H4) :- 
    false.
p_star_31(G4,I4) :- 
    dual(31,p,G4,I4).
p_star_32(J4,J4) :- 
    false.
p_star_32(I4,K4) :- 
    dual(32,p,I4,K4).
p_star_33(L4,L4) :- 
    false.
p_star_33(K4,M4) :- 
    dual(33,p,K4,M4).
p_star_34(N4,N4) :- 
    false.
p_star_34(M4,O4) :- 
    dual(34,p,M4,O4).
p_star_35(P4,P4) :- 
    false.
p_star_35(O4,Q4) :- 
    dual(35,p,O4,Q4).
p_star_36(R4,R4) :- 
    false.
p_star_36(Q4,S4) :- 
    dual(36,p,Q4,S4).
p_star_37(T4,T4) :- 
    false.
p_star_37(S4,U4) :- 
    dual(37,p,S4,U4).
p_star_38(V4,V4) :- 
    false.
p_star_38(U4,W4) :- 
    dual(38,p,U4,W4).
p_star_39(X4,X4) :- 
    false.
p_star_39(W4,Y4) :- 
    dual(39,p,W4,Y4).
p_star_40(Z4,Z4) :- 
    false.
p_star_40(Y4,A5) :- 
    dual(40,p,Y4,A5).
p_star_41(B5,B5) :- 
    false.
p_star_41(A5,C5) :- 
    dual(41,p,A5,C5).
p_star_42(D5,D5) :- 
    false.
p_star_42(C5,E5) :- 
    dual(42,p,C5,E5).
p_star_43(F5,F5) :- 
    false.
p_star_43(E5,G5) :- 
    dual(43,p,E5,G5).
p_star_44(H5,H5) :- 
    false.
p_star_44(G5,I5) :- 
    dual(44,p,G5,I5).
p_star_45(J5,J5) :- 
    false.
p_star_45(I5,K5) :- 
    dual(45,p,I5,K5).
p_star_46(L5,L5) :- 
    false.
p_star_46(K5,M5) :- 
    dual(46,p,K5,M5).
p_star_47(N5,N5) :- 
    false.
p_star_47(M5,O5) :- 
    dual(47,p,M5,O5).
p_star_48(P5,P5) :- 
    false.
p_star_48(O5,Q5) :- 
    dual(48,p,O5,Q5).
p_star_49(R5,R5) :- 
    false.
p_star_49(Q5,S5) :- 
    dual(49,p,Q5,S5).
p_star_50(T5,T5) :- 
    false.
p_star_50(S5,U5) :- 
    dual(50,p,S5,U5).
p_star_51(V5,V5) :- 
    false.
p_star_51(U5,W5) :- 
    dual(51,p,U5,W5).
p_star_52(X5,X5) :- 
    false.
p_star_52(W5,Y5) :- 
    dual(52,p,W5,Y5).
p_star_53(Z5,Z5) :- 
    false.
p_star_53(Y5,A6) :- 
    dual(53,p,Y5,A6).
p_star_54(B6,B6) :- 
    false.
p_star_54(A6,C6) :- 
    dual(54,p,A6,C6).
p_star_55(D6,D6) :- 
    false.
p_star_55(C6,E6) :- 
    dual(55,p,C6,E6).
p_star_56(F6,F6) :- 
    false.
p_star_56(E6,G6) :- 
    dual(56,p,E6,G6).
p_star_57(H6,H6) :- 
    false.
p_star_57(G6,I6) :- 
    dual(57,p,G6,I6).
p_star_58(J6,J6) :- 
    false.
p_star_58(I6,K6) :- 
    dual(58,p,I6,K6).
p_star_59(L6,L6) :- 
    false.
p_star_59(K6,M6) :- 
    dual(59,p,K6,M6).
p_star_60(N6,N6) :- 
    false.
p_star_60(M6,O6) :- 
    dual(60,p,M6,O6).
p_star_61(P6,P6) :- 
    false.
p_star_61(O6,Q6) :- 
    dual(61,p,O6,Q6).
p_star_62(R6,R6) :- 
    false.
p_star_62(Q6,S6) :- 
    dual(62,p,Q6,S6).
p_star_63(T6,T6) :- 
    false.
p_star_63(S6,U6) :- 
    dual(63,p,S6,U6).
not_p(Z1,U6) :- 
    (true,p_star_1(Z1,A2),true,p_star_2(A2,C2),true,p_star_3(C2,E2),true,p_star_4(E2,G2),true,p_star_5(G2,I2),true,p_star_6(I2,K2),true,p_star_7(K2,M2),true,p_star_8(M2,O2),true,p_star_9(O2,Q2),true,p_star_10(Q2,S2),true,p_star_11(S2,U2),true,p_star_12(U2,W2),true,p_star_13(W2,Y2),true,p_star_14(Y2,A3),true,p_star_15(A3,C3),true,p_star_16(C3,E3),true,p_star_17(E3,G3),true,p_star_18(G3,I3),true,p_star_19(I3,K3),true,p_star_20(K3,M3),true,p_star_21(M3,O3),true,p_star_22(O3,Q3),true,p_star_23(Q3,S3),true,p_star_24(S3,U3),true,p_star_25(U3,W3),true,p_star_26(W3,Y3),true,p_star_27(Y3,A4),true,p_star_28(A4,C4),true,p_star_29(C4,E4),true,p_star_30(E4,G4),true,p_star_31(G4,I4),true,...,...).

not_false(V6,V6).

a1(W6,X6) :- 
    insert_abducible(a1,W6,X6).
a1_star(Y6,Z6) :- 
    insert_abducible(not a1,Y6,Z6).
a2(A7,B7) :- 
    insert_abducible(a2,A7,B7).
a2_star(C7,D7) :- 
    insert_abducible(not a2,C7,D7).
a3(E7,F7) :- 
    insert_abducible(a3,E7,F7).
a3_star(G7,H7) :- 
    insert_abducible(not a3,G7,H7).
a4(I7,J7) :- 
    insert_abducible(a4,I7,J7).
a4_star(K7,L7) :- 
    insert_abducible(not a4,K7,L7).
a5(M7,N7) :- 
    insert_abducible(a5,M7,N7).
a5_star(O7,P7) :- 
    insert_abducible(not a5,O7,P7).
a6(Q7,R7) :- 
    insert_abducible(a6,Q7,R7).
a6_star(S7,T7) :- 
    insert_abducible(not a6,S7,T7).

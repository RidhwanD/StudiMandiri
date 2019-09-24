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

q7_ab(V1) :- 
    (q6([],W1),p(W1,V1)).
:- table q7_ab/1 as intern.
q7(X1,Y1) :- 
    (q7_ab(Z1),produce_context(Y1,X1,Z1)).
q7_star_1(A2,A2) :- 
    false.
q7_star_1(B2,C2) :- 
    dual(1,q7,B2,C2).
not_q7(B2,C2) :- 
    (true,q7_star_1(B2,C2)).

p_ab([a1]).
p_ab([a1,a2]).
p_ab([a1,a2,a3]).
p_ab([a1,a2,a3,a4]).
p_ab([a1,a2,a3,a4,a5]).
p_ab([a1,a2,a3,a4,a5,a6]).
p_ab([a1,a2,a3,a4,a5,a6,a7]).
p_ab([a1,a2,a3,a4,a5,a7]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a6,a7]).
p_ab([a1,a2,a3,a4,a7]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5,a6,a7]).
p_ab([a1,a2,a3,a5,a7]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a6,a7]).
p_ab([a1,a2,a3,a7]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5,a6,a7]).
p_ab([a1,a2,a4,a5,a7]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a6,a7]).
p_ab([a1,a2,a4,a7]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5,a6,a7]).
p_ab([a1,a2,a5,a7]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a6,a7]).
p_ab([a1,a2,a7]).
p_ab([a1,a3]).
p_ab([a1,a3,a4]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5,a6,a7]).
p_ab([a1,a3,a4,a5,a7]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a6,a7]).
p_ab([a1,a3,a4,a7]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5,a6,a7]).
p_ab([a1,a3,a5,a7]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a6,a7]).
p_ab([a1,a3,a7]).
p_ab([a1,a4]).
p_ab([a1,a4,a5]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5,a6,a7]).
p_ab([a1,a4,a5,a7]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a6,a7]).
p_ab([a1,a4,a7]).
p_ab([a1,a5]).
p_ab([a1,a5,a6]).
p_ab([a1,a5,a6,a7]).
p_ab([a1,a5,a7]).
p_ab([a1,a6]).
p_ab([a1,a6,a7]).
p_ab([a1,a7]).
p_ab([a2]).
p_ab([a2,a3]).
p_ab([a2,a3,a4]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5,a6,a7]).
p_ab([a2,a3,a4,a5,a7]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a6,a7]).
p_ab([a2,a3,a4,a7]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5,a6,a7]).
p_ab([a2,a3,a5,a7]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a6,a7]).
p_ab([a2,a3,a7]).
p_ab([a2,a4]).
p_ab([a2,a4,a5]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5,a6,a7]).
p_ab([a2,a4,a5,a7]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a6,a7]).
p_ab([a2,a4,a7]).
p_ab([a2,a5]).
p_ab([a2,a5,a6]).
p_ab([a2,a5,a6,a7]).
p_ab([a2,a5,a7]).
p_ab([a2,a6]).
p_ab([a2,a6,a7]).
p_ab([a2,a7]).
p_ab([a3]).
p_ab([a3,a4]).
p_ab([a3,a4,a5]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5,a6,a7]).
p_ab([a3,a4,a5,a7]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a6,a7]).
p_ab([a3,a4,a7]).
p_ab([a3,a5]).
p_ab([a3,a5,a6]).
p_ab([a3,a5,a6,a7]).
p_ab([a3,a5,a7]).
p_ab([a3,a6]).
p_ab([a3,a6,a7]).
p_ab([a3,a7]).
p_ab([a4]).
p_ab([a4,a5]).
p_ab([a4,a5,a6]).
p_ab([a4,a5,a6,a7]).
p_ab([a4,a5,a7]).
p_ab([a4,a6]).
p_ab([a4,a6,a7]).
p_ab([a4,a7]).
p_ab([a5]).
p_ab([a5,a6]).
p_ab([a5,a6,a7]).
p_ab([a5,a7]).
p_ab([a6]).
p_ab([a6,a7]).
p_ab([a7]).
:- table p_ab/1 as intern.
p(D2,E2) :- 
    (p_ab(F2),produce_context(E2,D2,F2)).
p_star_1(G2,G2) :- 
    false.
p_star_1(H2,I2) :- 
    dual(1,p,H2,I2).
p_star_2(J2,J2) :- 
    false.
p_star_2(I2,K2) :- 
    dual(2,p,I2,K2).
p_star_3(L2,L2) :- 
    false.
p_star_3(K2,M2) :- 
    dual(3,p,K2,M2).
p_star_4(N2,N2) :- 
    false.
p_star_4(M2,O2) :- 
    dual(4,p,M2,O2).
p_star_5(P2,P2) :- 
    false.
p_star_5(O2,Q2) :- 
    dual(5,p,O2,Q2).
p_star_6(R2,R2) :- 
    false.
p_star_6(Q2,S2) :- 
    dual(6,p,Q2,S2).
p_star_7(T2,T2) :- 
    false.
p_star_7(S2,U2) :- 
    dual(7,p,S2,U2).
p_star_8(V2,V2) :- 
    false.
p_star_8(U2,W2) :- 
    dual(8,p,U2,W2).
p_star_9(X2,X2) :- 
    false.
p_star_9(W2,Y2) :- 
    dual(9,p,W2,Y2).
p_star_10(Z2,Z2) :- 
    false.
p_star_10(Y2,A3) :- 
    dual(10,p,Y2,A3).
p_star_11(B3,B3) :- 
    false.
p_star_11(A3,C3) :- 
    dual(11,p,A3,C3).
p_star_12(D3,D3) :- 
    false.
p_star_12(C3,E3) :- 
    dual(12,p,C3,E3).
p_star_13(F3,F3) :- 
    false.
p_star_13(E3,G3) :- 
    dual(13,p,E3,G3).
p_star_14(H3,H3) :- 
    false.
p_star_14(G3,I3) :- 
    dual(14,p,G3,I3).
p_star_15(J3,J3) :- 
    false.
p_star_15(I3,K3) :- 
    dual(15,p,I3,K3).
p_star_16(L3,L3) :- 
    false.
p_star_16(K3,M3) :- 
    dual(16,p,K3,M3).
p_star_17(N3,N3) :- 
    false.
p_star_17(M3,O3) :- 
    dual(17,p,M3,O3).
p_star_18(P3,P3) :- 
    false.
p_star_18(O3,Q3) :- 
    dual(18,p,O3,Q3).
p_star_19(R3,R3) :- 
    false.
p_star_19(Q3,S3) :- 
    dual(19,p,Q3,S3).
p_star_20(T3,T3) :- 
    false.
p_star_20(S3,U3) :- 
    dual(20,p,S3,U3).
p_star_21(V3,V3) :- 
    false.
p_star_21(U3,W3) :- 
    dual(21,p,U3,W3).
p_star_22(X3,X3) :- 
    false.
p_star_22(W3,Y3) :- 
    dual(22,p,W3,Y3).
p_star_23(Z3,Z3) :- 
    false.
p_star_23(Y3,A4) :- 
    dual(23,p,Y3,A4).
p_star_24(B4,B4) :- 
    false.
p_star_24(A4,C4) :- 
    dual(24,p,A4,C4).
p_star_25(D4,D4) :- 
    false.
p_star_25(C4,E4) :- 
    dual(25,p,C4,E4).
p_star_26(F4,F4) :- 
    false.
p_star_26(E4,G4) :- 
    dual(26,p,E4,G4).
p_star_27(H4,H4) :- 
    false.
p_star_27(G4,I4) :- 
    dual(27,p,G4,I4).
p_star_28(J4,J4) :- 
    false.
p_star_28(I4,K4) :- 
    dual(28,p,I4,K4).
p_star_29(L4,L4) :- 
    false.
p_star_29(K4,M4) :- 
    dual(29,p,K4,M4).
p_star_30(N4,N4) :- 
    false.
p_star_30(M4,O4) :- 
    dual(30,p,M4,O4).
p_star_31(P4,P4) :- 
    false.
p_star_31(O4,Q4) :- 
    dual(31,p,O4,Q4).
p_star_32(R4,R4) :- 
    false.
p_star_32(Q4,S4) :- 
    dual(32,p,Q4,S4).
p_star_33(T4,T4) :- 
    false.
p_star_33(S4,U4) :- 
    dual(33,p,S4,U4).
p_star_34(V4,V4) :- 
    false.
p_star_34(U4,W4) :- 
    dual(34,p,U4,W4).
p_star_35(X4,X4) :- 
    false.
p_star_35(W4,Y4) :- 
    dual(35,p,W4,Y4).
p_star_36(Z4,Z4) :- 
    false.
p_star_36(Y4,A5) :- 
    dual(36,p,Y4,A5).
p_star_37(B5,B5) :- 
    false.
p_star_37(A5,C5) :- 
    dual(37,p,A5,C5).
p_star_38(D5,D5) :- 
    false.
p_star_38(C5,E5) :- 
    dual(38,p,C5,E5).
p_star_39(F5,F5) :- 
    false.
p_star_39(E5,G5) :- 
    dual(39,p,E5,G5).
p_star_40(H5,H5) :- 
    false.
p_star_40(G5,I5) :- 
    dual(40,p,G5,I5).
p_star_41(J5,J5) :- 
    false.
p_star_41(I5,K5) :- 
    dual(41,p,I5,K5).
p_star_42(L5,L5) :- 
    false.
p_star_42(K5,M5) :- 
    dual(42,p,K5,M5).
p_star_43(N5,N5) :- 
    false.
p_star_43(M5,O5) :- 
    dual(43,p,M5,O5).
p_star_44(P5,P5) :- 
    false.
p_star_44(O5,Q5) :- 
    dual(44,p,O5,Q5).
p_star_45(R5,R5) :- 
    false.
p_star_45(Q5,S5) :- 
    dual(45,p,Q5,S5).
p_star_46(T5,T5) :- 
    false.
p_star_46(S5,U5) :- 
    dual(46,p,S5,U5).
p_star_47(V5,V5) :- 
    false.
p_star_47(U5,W5) :- 
    dual(47,p,U5,W5).
p_star_48(X5,X5) :- 
    false.
p_star_48(W5,Y5) :- 
    dual(48,p,W5,Y5).
p_star_49(Z5,Z5) :- 
    false.
p_star_49(Y5,A6) :- 
    dual(49,p,Y5,A6).
p_star_50(B6,B6) :- 
    false.
p_star_50(A6,C6) :- 
    dual(50,p,A6,C6).
p_star_51(D6,D6) :- 
    false.
p_star_51(C6,E6) :- 
    dual(51,p,C6,E6).
p_star_52(F6,F6) :- 
    false.
p_star_52(E6,G6) :- 
    dual(52,p,E6,G6).
p_star_53(H6,H6) :- 
    false.
p_star_53(G6,I6) :- 
    dual(53,p,G6,I6).
p_star_54(J6,J6) :- 
    false.
p_star_54(I6,K6) :- 
    dual(54,p,I6,K6).
p_star_55(L6,L6) :- 
    false.
p_star_55(K6,M6) :- 
    dual(55,p,K6,M6).
p_star_56(N6,N6) :- 
    false.
p_star_56(M6,O6) :- 
    dual(56,p,M6,O6).
p_star_57(P6,P6) :- 
    false.
p_star_57(O6,Q6) :- 
    dual(57,p,O6,Q6).
p_star_58(R6,R6) :- 
    false.
p_star_58(Q6,S6) :- 
    dual(58,p,Q6,S6).
p_star_59(T6,T6) :- 
    false.
p_star_59(S6,U6) :- 
    dual(59,p,S6,U6).
p_star_60(V6,V6) :- 
    false.
p_star_60(U6,W6) :- 
    dual(60,p,U6,W6).
p_star_61(X6,X6) :- 
    false.
p_star_61(W6,Y6) :- 
    dual(61,p,W6,Y6).
p_star_62(Z6,Z6) :- 
    false.
p_star_62(Y6,A7) :- 
    dual(62,p,Y6,A7).
p_star_63(B7,B7) :- 
    false.
p_star_63(A7,C7) :- 
    dual(63,p,A7,C7).
p_star_64(D7,D7) :- 
    false.
p_star_64(C7,E7) :- 
    dual(64,p,C7,E7).
p_star_65(F7,F7) :- 
    false.
p_star_65(E7,G7) :- 
    dual(65,p,E7,G7).
p_star_66(H7,H7) :- 
    false.
p_star_66(G7,I7) :- 
    dual(66,p,G7,I7).
p_star_67(J7,J7) :- 
    false.
p_star_67(I7,K7) :- 
    dual(67,p,I7,K7).
p_star_68(L7,L7) :- 
    false.
p_star_68(K7,M7) :- 
    dual(68,p,K7,M7).
p_star_69(N7,N7) :- 
    false.
p_star_69(M7,O7) :- 
    dual(69,p,M7,O7).
p_star_70(P7,P7) :- 
    false.
p_star_70(O7,Q7) :- 
    dual(70,p,O7,Q7).
p_star_71(R7,R7) :- 
    false.
p_star_71(Q7,S7) :- 
    dual(71,p,Q7,S7).
p_star_72(T7,T7) :- 
    false.
p_star_72(S7,U7) :- 
    dual(72,p,S7,U7).
p_star_73(V7,V7) :- 
    false.
p_star_73(U7,W7) :- 
    dual(73,p,U7,W7).
p_star_74(X7,X7) :- 
    false.
p_star_74(W7,Y7) :- 
    dual(74,p,W7,Y7).
p_star_75(Z7,Z7) :- 
    false.
p_star_75(Y7,A8) :- 
    dual(75,p,Y7,A8).
p_star_76(B8,B8) :- 
    false.
p_star_76(A8,C8) :- 
    dual(76,p,A8,C8).
p_star_77(D8,D8) :- 
    false.
p_star_77(C8,E8) :- 
    dual(77,p,C8,E8).
p_star_78(F8,F8) :- 
    false.
p_star_78(E8,G8) :- 
    dual(78,p,E8,G8).
p_star_79(H8,H8) :- 
    false.
p_star_79(G8,I8) :- 
    dual(79,p,G8,I8).
p_star_80(J8,J8) :- 
    false.
p_star_80(I8,K8) :- 
    dual(80,p,I8,K8).
p_star_81(L8,L8) :- 
    false.
p_star_81(K8,M8) :- 
    dual(81,p,K8,M8).
p_star_82(N8,N8) :- 
    false.
p_star_82(M8,O8) :- 
    dual(82,p,M8,O8).
p_star_83(P8,P8) :- 
    false.
p_star_83(O8,Q8) :- 
    dual(83,p,O8,Q8).
p_star_84(R8,R8) :- 
    false.
p_star_84(Q8,S8) :- 
    dual(84,p,Q8,S8).
p_star_85(T8,T8) :- 
    false.
p_star_85(S8,U8) :- 
    dual(85,p,S8,U8).
p_star_86(V8,V8) :- 
    false.
p_star_86(U8,W8) :- 
    dual(86,p,U8,W8).
p_star_87(X8,X8) :- 
    false.
p_star_87(W8,Y8) :- 
    dual(87,p,W8,Y8).
p_star_88(Z8,Z8) :- 
    false.
p_star_88(Y8,A9) :- 
    dual(88,p,Y8,A9).
p_star_89(B9,B9) :- 
    false.
p_star_89(A9,C9) :- 
    dual(89,p,A9,C9).
p_star_90(D9,D9) :- 
    false.
p_star_90(C9,E9) :- 
    dual(90,p,C9,E9).
p_star_91(F9,F9) :- 
    false.
p_star_91(E9,G9) :- 
    dual(91,p,E9,G9).
p_star_92(H9,H9) :- 
    false.
p_star_92(G9,I9) :- 
    dual(92,p,G9,I9).
p_star_93(J9,J9) :- 
    false.
p_star_93(I9,K9) :- 
    dual(93,p,I9,K9).
p_star_94(L9,L9) :- 
    false.
p_star_94(K9,M9) :- 
    dual(94,p,K9,M9).
p_star_95(N9,N9) :- 
    false.
p_star_95(M9,O9) :- 
    dual(95,p,M9,O9).
p_star_96(P9,P9) :- 
    false.
p_star_96(O9,Q9) :- 
    dual(96,p,O9,Q9).
p_star_97(R9,R9) :- 
    false.
p_star_97(Q9,S9) :- 
    dual(97,p,Q9,S9).
p_star_98(T9,T9) :- 
    false.
p_star_98(S9,U9) :- 
    dual(98,p,S9,U9).
p_star_99(V9,V9) :- 
    false.
p_star_99(U9,W9) :- 
    dual(99,p,U9,W9).
p_star_100(X9,X9) :- 
    false.
p_star_100(W9,Y9) :- 
    dual(100,p,W9,Y9).
p_star_101(Z9,Z9) :- 
    false.
p_star_101(Y9,A10) :- 
    dual(101,p,Y9,A10).
p_star_102(B10,B10) :- 
    false.
p_star_102(A10,C10) :- 
    dual(102,p,A10,C10).
p_star_103(D10,D10) :- 
    false.
p_star_103(C10,E10) :- 
    dual(103,p,C10,E10).
p_star_104(F10,F10) :- 
    false.
p_star_104(E10,G10) :- 
    dual(104,p,E10,G10).
p_star_105(H10,H10) :- 
    false.
p_star_105(G10,I10) :- 
    dual(105,p,G10,I10).
p_star_106(J10,J10) :- 
    false.
p_star_106(I10,K10) :- 
    dual(106,p,I10,K10).
p_star_107(L10,L10) :- 
    false.
p_star_107(K10,M10) :- 
    dual(107,p,K10,M10).
p_star_108(N10,N10) :- 
    false.
p_star_108(M10,O10) :- 
    dual(108,p,M10,O10).
p_star_109(P10,P10) :- 
    false.
p_star_109(O10,Q10) :- 
    dual(109,p,O10,Q10).
p_star_110(R10,R10) :- 
    false.
p_star_110(Q10,S10) :- 
    dual(110,p,Q10,S10).
p_star_111(T10,T10) :- 
    false.
p_star_111(S10,U10) :- 
    dual(111,p,S10,U10).
p_star_112(V10,V10) :- 
    false.
p_star_112(U10,W10) :- 
    dual(112,p,U10,W10).
p_star_113(X10,X10) :- 
    false.
p_star_113(W10,Y10) :- 
    dual(113,p,W10,Y10).
p_star_114(Z10,Z10) :- 
    false.
p_star_114(Y10,A11) :- 
    dual(114,p,Y10,A11).
p_star_115(B11,B11) :- 
    false.
p_star_115(A11,C11) :- 
    dual(115,p,A11,C11).
p_star_116(D11,D11) :- 
    false.
p_star_116(C11,E11) :- 
    dual(116,p,C11,E11).
p_star_117(F11,F11) :- 
    false.
p_star_117(E11,G11) :- 
    dual(117,p,E11,G11).
p_star_118(H11,H11) :- 
    false.
p_star_118(G11,I11) :- 
    dual(118,p,G11,I11).
p_star_119(J11,J11) :- 
    false.
p_star_119(I11,K11) :- 
    dual(119,p,I11,K11).
p_star_120(L11,L11) :- 
    false.
p_star_120(K11,M11) :- 
    dual(120,p,K11,M11).
p_star_121(N11,N11) :- 
    false.
p_star_121(M11,O11) :- 
    dual(121,p,M11,O11).
p_star_122(P11,P11) :- 
    false.
p_star_122(O11,Q11) :- 
    dual(122,p,O11,Q11).
p_star_123(R11,R11) :- 
    false.
p_star_123(Q11,S11) :- 
    dual(123,p,Q11,S11).
p_star_124(T11,T11) :- 
    false.
p_star_124(S11,U11) :- 
    dual(124,p,S11,U11).
p_star_125(V11,V11) :- 
    false.
p_star_125(U11,W11) :- 
    dual(125,p,U11,W11).
p_star_126(X11,X11) :- 
    false.
p_star_126(W11,Y11) :- 
    dual(126,p,W11,Y11).
p_star_127(Z11,Z11) :- 
    false.
p_star_127(Y11,A12) :- 
    dual(127,p,Y11,A12).
not_p(H2,A12) :- 
    (true,p_star_1(H2,I2),true,p_star_2(I2,K2),true,p_star_3(K2,M2),true,p_star_4(M2,O2),true,p_star_5(O2,Q2),true,p_star_6(Q2,S2),true,p_star_7(S2,U2),true,p_star_8(U2,W2),true,p_star_9(W2,Y2),true,p_star_10(Y2,A3),true,p_star_11(A3,C3),true,p_star_12(C3,E3),true,p_star_13(E3,G3),true,p_star_14(G3,I3),true,p_star_15(I3,K3),true,p_star_16(K3,M3),true,p_star_17(M3,O3),true,p_star_18(O3,Q3),true,p_star_19(Q3,S3),true,p_star_20(S3,U3),true,p_star_21(U3,W3),true,p_star_22(W3,Y3),true,p_star_23(Y3,A4),true,p_star_24(A4,C4),true,p_star_25(C4,E4),true,p_star_26(E4,G4),true,p_star_27(G4,I4),true,p_star_28(I4,K4),true,p_star_29(K4,M4),true,p_star_30(M4,O4),true,p_star_31(O4,Q4),true,...,...).

not_false(B12,B12).

a1(C12,D12) :- 
    insert_abducible(a1,C12,D12).
a1_star(E12,F12) :- 
    insert_abducible(not a1,E12,F12).
a2(G12,H12) :- 
    insert_abducible(a2,G12,H12).
a2_star(I12,J12) :- 
    insert_abducible(not a2,I12,J12).
a3(K12,L12) :- 
    insert_abducible(a3,K12,L12).
a3_star(M12,N12) :- 
    insert_abducible(not a3,M12,N12).
a4(O12,P12) :- 
    insert_abducible(a4,O12,P12).
a4_star(Q12,R12) :- 
    insert_abducible(not a4,Q12,R12).
a5(S12,T12) :- 
    insert_abducible(a5,S12,T12).
a5_star(U12,V12) :- 
    insert_abducible(not a5,U12,V12).
a6(W12,X12) :- 
    insert_abducible(a6,W12,X12).
a6_star(Y12,Z12) :- 
    insert_abducible(not a6,Y12,Z12).
a7(A13,B13) :- 
    insert_abducible(a7,A13,B13).
a7_star(C13,D13) :- 
    insert_abducible(not a7,C13,D13).

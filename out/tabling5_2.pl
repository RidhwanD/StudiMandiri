s1.
s2.
s3.
s4.
s5.
s1(_784,_784) :- s1.
not_s1(_826,_826) :- not s1.
s2(_880,_880) :- s2.
not_s2(_922,_922) :- not s2.
s3(_976,_976) :- s3.
not_s3(_1018,_1018) :- not s3.
s4(_1072,_1072) :- s4.
not_s4(_1114,_1114) :- not s4.
s5(_1168,_1168) :- s5.
not_s5(_1210,_1210) :- not s5.
q1(_2018,_2024) :- insert_abducible(q1,_2018,_2024).
not_q1(_2114,_2120) :- insert_abducible(not q1,_2114,_2120).
q2(_2198,_2204) :- insert_abducible(q2,_2198,_2204).
not_q2(_2294,_2300) :- insert_abducible(not q2,_2294,_2300).
q3(_2378,_2384) :- insert_abducible(q3,_2378,_2384).
not_q3(_2474,_2480) :- insert_abducible(not q3,_2474,_2480).
q4(_2558,_2564) :- insert_abducible(q4,_2558,_2564).
not_q4(_2654,_2660) :- insert_abducible(not q4,_2654,_2660).
q5(_2738,_2744) :- insert_abducible(q5,_2738,_2744).
not_q5(_2834,_2840) :- insert_abducible(not q5,_2834,_2840).
r1_star1(_2994,_3000) :- not_s1(_2994,_3000).
not_r1(_2994,_3000) :- r1_star1(_2994,_3000).

r2_star1(_3262,_3268) :- not_s2(_3262,_3268).
not_r2(_3262,_3268) :- r2_star1(_3262,_3268).

r3_star1(_3530,_3536) :- not_s3(_3530,_3536).
not_r3(_3530,_3536) :- r3_star1(_3530,_3536).

r4_star1(_3798,_3804) :- not_s4(_3798,_3804).
not_r4(_3798,_3804) :- r4_star1(_3798,_3804).

r5_star1(_4066,_4072) :- not_s5(_4066,_4072).
not_r5(_4066,_4072) :- r5_star1(_4066,_4072).

:- table p1_ab/1.
p1_ab(_4512) :- r1([q1],_4512).

p1(_4564,_4570) :- p1_ab(_4612),produce_context(_4570,_4564,_4612).
p1_star1(_4678,_4684) :- not_q1(_4678,_4684).
p1_star1(_4678,_4684) :- q1(_4678,_4900),not_r1(_4900,_4684).
not_p1(_4678,_4684) :- p1_star1(_4678,_4684).

:- table p2_ab/1.
p2_ab(_5238) :- r2([q2],_5238).

p2(_5290,_5296) :- p2_ab(_5338),produce_context(_5296,_5290,_5338).
p2_star1(_5404,_5410) :- not_q2(_5404,_5410).
p2_star1(_5404,_5410) :- q2(_5404,_5626),not_r2(_5626,_5410).
not_p2(_5404,_5410) :- p2_star1(_5404,_5410).

:- table p3_ab/1.
p3_ab(_5964) :- r3([q3],_5964).

p3(_6016,_6022) :- p3_ab(_6064),produce_context(_6022,_6016,_6064).
p3_star1(_6130,_6136) :- not_q3(_6130,_6136).
p3_star1(_6130,_6136) :- q3(_6130,_6352),not_r3(_6352,_6136).
not_p3(_6130,_6136) :- p3_star1(_6130,_6136).

:- table p4_ab/1.
p4_ab(_6690) :- r4([q4],_6690).

p4(_6742,_6748) :- p4_ab(_6790),produce_context(_6748,_6742,_6790).
p4_star1(_6856,_6862) :- not_q4(_6856,_6862).
p4_star1(_6856,_6862) :- q4(_6856,_7078),not_r4(_7078,_6862).
not_p4(_6856,_6862) :- p4_star1(_6856,_6862).

:- table p5_ab/1.
p5_ab(_7416) :- r5([q5],_7416).

p5(_7468,_7474) :- p5_ab(_7516),produce_context(_7474,_7468,_7516).
p5_star1(_7582,_7588) :- not_q5(_7582,_7588).
p5_star1(_7582,_7588) :- q5(_7582,_7804),not_r5(_7804,_7588).
not_p5(_7582,_7588) :- p5_star1(_7582,_7588).

r1 :- s1.
r1(_7938,_7938) :- r1.
r2 :- s2.
r2(_8036,_8036) :- r2.
r3 :- s3.
r3(_8134,_8134) :- r3.
r4 :- s4.
r4(_8232,_8232) :- r4.
r5 :- s5.
r5(_8330,_8330) :- r5.
not_false(_8412,_8412).


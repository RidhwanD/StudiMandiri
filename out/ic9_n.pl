a(_5974,_5990,_5996) :- insert_abducible(a(_5974),_5990,_5996).
not_a(_6076,_6104,_6110) :- insert_abducible(not a(_6076),_6104,_6110).
b(_6190,_6206,_6212) :- insert_abducible(b(_6190),_6206,_6212).
not_b(_6292,_6320,_6326) :- insert_abducible(not b(_6292),_6320,_6326).
c(_6406,_6422,_6428) :- insert_abducible(c(_6406),_6422,_6428).
not_c(_6508,_6536,_6542) :- insert_abducible(not c(_6508),_6536,_6542).
p_ab(_6674,[a(_6674)]).

:- table p_ab/2.
p(_6802,_6808,_6814) :- p_ab(_6802,_6874),produce_context(_6814,_6808,_6874).
p_star1(_6936,_7048,_7048) :- [_6936]\=[_6674].
p_star1(_6674,_6954,_6960) :- not_a(_6674,_6954,_6960).
not_p(_6936,_6954,_6960) :- p_star1(_6936,_6954,_6960).

q_ab(_7252,[b(_7252)]).

:- table q_ab/2.
q(_7380,_7386,_7392) :- q_ab(_7380,_7452),produce_context(_7392,_7386,_7452).
q_star1(_7514,_7626,_7626) :- [_7514]\=[_7252].
q_star1(_7252,_7532,_7538) :- not_b(_7252,_7532,_7538).
not_q(_7514,_7532,_7538) :- q_star1(_7514,_7532,_7538).

t_ab(_7830,[c(_7830)]).

:- table t_ab/2.
t(_7958,_7964,_7970) :- t_ab(_7958,_8030),produce_context(_7970,_7964,_8030).
t_star1(_8092,_8204,_8204) :- [_8092]\=[_7830].
t_star1(_7830,_8110,_8116) :- not_c(_7830,_8110,_8116).
not_t(_8092,_8110,_8116) :- t_star1(_8092,_8110,_8116).

r_ab(_10082) :- not_q(1,[a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),a(9)],_9416),not_q(2,_9416,_9500),not_q(3,_9500,_9584),not_q(4,_9584,_9668),not_q(5,_9668,_9752),not_q(6,_9752,_9836),not_q(7,_9836,_9920),not_q(8,_9920,_10004),not_q(9,_10004,_10082).

r_ab(_10716) :- p(1,[],_10322),p(2,_10322,_10372),p(3,_10372,_10422),p(4,_10422,_10472),p(5,_10472,_10522),p(6,_10522,_10572),p(7,_10572,_10622),p(8,_10622,_10672),p(9,_10672,_10716).

:- table r_ab/1.
r(_10788,_10794) :- r_ab(_10836),produce_context(_10794,_10788,_10836).
r_star1(_10902,_10908) :- not_a(1,_10902,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_11192),q(1,_11192,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_11334),not_a(2,_11334,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_11494),a(2,_11494,_11544),q(2,_11544,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_11698),a(2,_11698,_11748),not_a(3,_11748,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_11920),a(2,_11920,_11970),a(3,_11970,_12020),q(3,_12020,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_12186),a(2,_12186,_12236),a(3,_12236,_12286),not_a(4,_12286,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_12470),a(2,_12470,_12520),a(3,_12520,_12570),a(4,_12570,_12620),q(4,_12620,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_12798),a(2,_12798,_12848),a(3,_12848,_12898),a(4,_12898,_12948),not_a(5,_12948,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_13144),a(2,_13144,_13194),a(3,_13194,_13244),a(4,_13244,_13294),a(5,_13294,_13344),q(5,_13344,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_13534),a(2,_13534,_13584),a(3,_13584,_13634),a(4,_13634,_13684),a(5,_13684,_13734),not_a(6,_13734,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_13942),a(2,_13942,_13992),a(3,_13992,_14042),a(4,_14042,_14092),a(5,_14092,_14142),a(6,_14142,_14192),q(6,_14192,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_14394),a(2,_14394,_14444),a(3,_14444,_14494),a(4,_14494,_14544),a(5,_14544,_14594),a(6,_14594,_14644),not_a(7,_14644,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_14864),a(2,_14864,_14914),a(3,_14914,_14964),a(4,_14964,_15014),a(5,_15014,_15064),a(6,_15064,_15114),a(7,_15114,_15164),q(7,_15164,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_15378),a(2,_15378,_15428),a(3,_15428,_15478),a(4,_15478,_15528),a(5,_15528,_15578),a(6,_15578,_15628),a(7,_15628,_15678),not_a(8,_15678,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_15910),a(2,_15910,_15960),a(3,_15960,_16010),a(4,_16010,_16060),a(5,_16060,_16110),a(6,_16110,_16160),a(7,_16160,_16210),a(8,_16210,_16260),q(8,_16260,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_16486),a(2,_16486,_16536),a(3,_16536,_16586),a(4,_16586,_16636),a(5,_16636,_16686),a(6,_16686,_16736),a(7,_16736,_16786),a(8,_16786,_16836),not_a(9,_16836,_10908).
r_star1(_10902,_10908) :- a(1,_10902,_17080),a(2,_17080,_17130),a(3,_17130,_17180),a(4,_17180,_17230),a(5,_17230,_17280),a(6,_17280,_17330),a(7,_17330,_17380),a(8,_17380,_17430),a(9,_17430,_17480),q(9,_17480,_10908).
r_star2(_10962,_10908) :- not_p(1,_10962,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_17810),not_p(2,_17810,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_17964),p(2,_17964,_18014),not_p(3,_18014,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_18174),p(2,_18174,_18224),p(3,_18224,_18274),not_p(4,_18274,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_18440),p(2,_18440,_18490),p(3,_18490,_18540),p(4,_18540,_18590),not_p(5,_18590,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_18762),p(2,_18762,_18812),p(3,_18812,_18862),p(4,_18862,_18912),p(5,_18912,_18962),not_p(6,_18962,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_19140),p(2,_19140,_19190),p(3,_19190,_19240),p(4,_19240,_19290),p(5,_19290,_19340),p(6,_19340,_19390),not_p(7,_19390,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_19574),p(2,_19574,_19624),p(3,_19624,_19674),p(4,_19674,_19724),p(5,_19724,_19774),p(6,_19774,_19824),p(7,_19824,_19874),not_p(8,_19874,_10908).
r_star2(_10962,_10908) :- p(1,_10962,_20064),p(2,_20064,_20114),p(3,_20114,_20164),p(4,_20164,_20214),p(5,_20214,_20264),p(6,_20264,_20314),p(7,_20314,_20364),p(8,_20364,_20414),not_p(9,_20414,_10908).
not_r(_10902,_10908) :- copy_term([],[]),r_star1(_10902,_10962),copy_term([],[]),r_star2(_10962,_10908).

false_star1 :- (p(_20564,[],_20726),not_q(_20564,_20726,_20804)),assertICs(_20804).

not_false :- false_star1.
:- not_false.

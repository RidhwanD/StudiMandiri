a(_6068,_6084,_6090) :- insert_abducible(a(_6068),_6084,_6090).
not_a(_6170,_6198,_6204) :- insert_abducible(not a(_6170),_6198,_6204).
b(_6284,_6300,_6306) :- insert_abducible(b(_6284),_6300,_6306).
not_b(_6386,_6414,_6420) :- insert_abducible(not b(_6386),_6414,_6420).
c(_6500,_6516,_6522) :- insert_abducible(c(_6500),_6516,_6522).
not_c(_6602,_6630,_6636) :- insert_abducible(not c(_6602),_6630,_6636).
p_ab(_6768,[a(_6768)]).

:- table p_ab/2.
p(_6896,_6902,_6908) :- p_ab(_6896,_6968),produce_context(_6908,_6902,_6968).
p_star1(_7030,_7142,_7142) :- [_7030]\=[_6768].
p_star1(_6768,_7048,_7054) :- not_a(_6768,_7048,_7054).
not_p(_7030,_7048,_7054) :- p_star1(_7030,_7048,_7054).

q_ab(_7346,[b(_7346)]).

:- table q_ab/2.
q(_7474,_7480,_7486) :- q_ab(_7474,_7546),produce_context(_7486,_7480,_7546).
q_star1(_7608,_7720,_7720) :- [_7608]\=[_7346].
q_star1(_7346,_7626,_7632) :- not_b(_7346,_7626,_7632).
not_q(_7608,_7626,_7632) :- q_star1(_7608,_7626,_7632).

t_ab(_7924,[c(_7924)]).

:- table t_ab/2.
t(_8052,_8058,_8064) :- t_ab(_8052,_8124),produce_context(_8064,_8058,_8124).
t_star1(_8186,_8298,_8298) :- [_8186]\=[_7924].
t_star1(_7924,_8204,_8210) :- not_c(_7924,_8204,_8210).
not_t(_8186,_8204,_8210) :- t_star1(_8186,_8204,_8210).

r_ab(_10366) :- not_q(1,[a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),a(9),a(10)],_9616),not_q(2,_9616,_9700),not_q(3,_9700,_9784),not_q(4,_9784,_9868),not_q(5,_9868,_9952),not_q(6,_9952,_10036),not_q(7,_10036,_10120),not_q(8,_10120,_10204),not_q(9,_10204,_10288),not_q(10,_10288,_10366).

r_ab(_11068) :- p(1,[],_10624),p(2,_10624,_10674),p(3,_10674,_10724),p(4,_10724,_10774),p(5,_10774,_10824),p(6,_10824,_10874),p(7,_10874,_10924),p(8,_10924,_10974),p(9,_10974,_11024),p(10,_11024,_11068).

:- table r_ab/1.
r(_11140,_11146) :- r_ab(_11188),produce_context(_11146,_11140,_11188).
r_star1(_11254,_11260) :- not_a(1,_11254,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_11544),q(1,_11544,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_11686),not_a(2,_11686,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_11846),a(2,_11846,_11896),q(2,_11896,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_12050),a(2,_12050,_12100),not_a(3,_12100,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_12272),a(2,_12272,_12322),a(3,_12322,_12372),q(3,_12372,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_12538),a(2,_12538,_12588),a(3,_12588,_12638),not_a(4,_12638,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_12822),a(2,_12822,_12872),a(3,_12872,_12922),a(4,_12922,_12972),q(4,_12972,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_13150),a(2,_13150,_13200),a(3,_13200,_13250),a(4,_13250,_13300),not_a(5,_13300,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_13496),a(2,_13496,_13546),a(3,_13546,_13596),a(4,_13596,_13646),a(5,_13646,_13696),q(5,_13696,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_13886),a(2,_13886,_13936),a(3,_13936,_13986),a(4,_13986,_14036),a(5,_14036,_14086),not_a(6,_14086,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_14294),a(2,_14294,_14344),a(3,_14344,_14394),a(4,_14394,_14444),a(5,_14444,_14494),a(6,_14494,_14544),q(6,_14544,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_14746),a(2,_14746,_14796),a(3,_14796,_14846),a(4,_14846,_14896),a(5,_14896,_14946),a(6,_14946,_14996),not_a(7,_14996,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_15216),a(2,_15216,_15266),a(3,_15266,_15316),a(4,_15316,_15366),a(5,_15366,_15416),a(6,_15416,_15466),a(7,_15466,_15516),q(7,_15516,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_15730),a(2,_15730,_15780),a(3,_15780,_15830),a(4,_15830,_15880),a(5,_15880,_15930),a(6,_15930,_15980),a(7,_15980,_16030),not_a(8,_16030,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_16262),a(2,_16262,_16312),a(3,_16312,_16362),a(4,_16362,_16412),a(5,_16412,_16462),a(6,_16462,_16512),a(7,_16512,_16562),a(8,_16562,_16612),q(8,_16612,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_16838),a(2,_16838,_16888),a(3,_16888,_16938),a(4,_16938,_16988),a(5,_16988,_17038),a(6,_17038,_17088),a(7,_17088,_17138),a(8,_17138,_17188),not_a(9,_17188,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_17432),a(2,_17432,_17482),a(3,_17482,_17532),a(4,_17532,_17582),a(5,_17582,_17632),a(6,_17632,_17682),a(7,_17682,_17732),a(8,_17732,_17782),a(9,_17782,_17832),q(9,_17832,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_18070),a(2,_18070,_18120),a(3,_18120,_18170),a(4,_18170,_18220),a(5,_18220,_18270),a(6,_18270,_18320),a(7,_18320,_18370),a(8,_18370,_18420),a(9,_18420,_18470),not_a(10,_18470,_11260).
r_star1(_11254,_11260) :- a(1,_11254,_18726),a(2,_18726,_18776),a(3,_18776,_18826),a(4,_18826,_18876),a(5,_18876,_18926),a(6,_18926,_18976),a(7,_18976,_19026),a(8,_19026,_19076),a(9,_19076,_19126),a(10,_19126,_19176),q(10,_19176,_11260).
r_star2(_11314,_11260) :- not_p(1,_11314,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_19506),not_p(2,_19506,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_19660),p(2,_19660,_19710),not_p(3,_19710,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_19870),p(2,_19870,_19920),p(3,_19920,_19970),not_p(4,_19970,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_20136),p(2,_20136,_20186),p(3,_20186,_20236),p(4,_20236,_20286),not_p(5,_20286,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_20458),p(2,_20458,_20508),p(3,_20508,_20558),p(4,_20558,_20608),p(5,_20608,_20658),not_p(6,_20658,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_20836),p(2,_20836,_20886),p(3,_20886,_20936),p(4,_20936,_20986),p(5,_20986,_21036),p(6,_21036,_21086),not_p(7,_21086,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_21270),p(2,_21270,_21320),p(3,_21320,_21370),p(4,_21370,_21420),p(5,_21420,_21470),p(6,_21470,_21520),p(7,_21520,_21570),not_p(8,_21570,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_21760),p(2,_21760,_21810),p(3,_21810,_21860),p(4,_21860,_21910),p(5,_21910,_21960),p(6,_21960,_22010),p(7,_22010,_22060),p(8,_22060,_22110),not_p(9,_22110,_11260).
r_star2(_11314,_11260) :- p(1,_11314,_22306),p(2,_22306,_22356),p(3,_22356,_22406),p(4,_22406,_22456),p(5,_22456,_22506),p(6,_22506,_22556),p(7,_22556,_22606),p(8,_22606,_22656),p(9,_22656,_22706),not_p(10,_22706,_11260).
not_r(_11254,_11260) :- copy_term([],[]),r_star1(_11254,_11314),copy_term([],[]),r_star2(_11314,_11260).

false_star1 :- (p(_22856,[],_23018),not_q(_22856,_23018,_23096)),assertICs(_23096).

not_false :- false_star1.
:- not_false.

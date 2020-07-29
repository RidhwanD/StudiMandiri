a(_5698,_5714,_5720) :- insert_abducible(a(_5698),_5714,_5720).
not_a(_5800,_5828,_5834) :- insert_abducible(not a(_5800),_5828,_5834).
b(_5914,_5930,_5936) :- insert_abducible(b(_5914),_5930,_5936).
not_b(_6016,_6044,_6050) :- insert_abducible(not b(_6016),_6044,_6050).
c(_6130,_6146,_6152) :- insert_abducible(c(_6130),_6146,_6152).
not_c(_6232,_6260,_6266) :- insert_abducible(not c(_6232),_6260,_6266).
p_ab(_6398,[a(_6398)]).

:- table p_ab/2.
p(_6526,_6532,_6538) :- p_ab(_6526,_6598),produce_context(_6538,_6532,_6598).
p_star1(_6660,_6772,_6772) :- [_6660]\=[_6398].
p_star1(_6398,_6678,_6684) :- not_a(_6398,_6678,_6684).
not_p(_6660,_6678,_6684) :- p_star1(_6660,_6678,_6684).

q_ab(_6976,[b(_6976)]).

:- table q_ab/2.
q(_7104,_7110,_7116) :- q_ab(_7104,_7176),produce_context(_7116,_7110,_7176).
q_star1(_7238,_7350,_7350) :- [_7238]\=[_6976].
q_star1(_6976,_7256,_7262) :- not_b(_6976,_7256,_7262).
not_q(_7238,_7256,_7262) :- q_star1(_7238,_7256,_7262).

t_ab(_7554,[c(_7554)]).

:- table t_ab/2.
t(_7682,_7688,_7694) :- t_ab(_7682,_7754),produce_context(_7694,_7688,_7754).
t_star1(_7816,_7928,_7928) :- [_7816]\=[_7554].
t_star1(_7554,_7834,_7840) :- not_c(_7554,_7834,_7840).
not_t(_7816,_7834,_7840) :- t_star1(_7816,_7834,_7840).

r_ab(_9236) :- not_q(1,[a(1),a(2),a(3),a(4),a(5),a(6)],_8822),not_q(2,_8822,_8906),not_q(3,_8906,_8990),not_q(4,_8990,_9074),not_q(5,_9074,_9158),not_q(6,_9158,_9236).

r_ab(_9666) :- p(1,[],_9422),p(2,_9422,_9472),p(3,_9472,_9522),p(4,_9522,_9572),p(5,_9572,_9622),p(6,_9622,_9666).

:- table r_ab/1.
r(_9738,_9744) :- r_ab(_9786),produce_context(_9744,_9738,_9786).
r_star1(_9852,_9858) :- not_a(1,_9852,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_10142),q(1,_10142,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_10284),not_a(2,_10284,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_10444),a(2,_10444,_10494),q(2,_10494,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_10648),a(2,_10648,_10698),not_a(3,_10698,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_10870),a(2,_10870,_10920),a(3,_10920,_10970),q(3,_10970,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_11136),a(2,_11136,_11186),a(3,_11186,_11236),not_a(4,_11236,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_11420),a(2,_11420,_11470),a(3,_11470,_11520),a(4,_11520,_11570),q(4,_11570,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_11748),a(2,_11748,_11798),a(3,_11798,_11848),a(4,_11848,_11898),not_a(5,_11898,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_12094),a(2,_12094,_12144),a(3,_12144,_12194),a(4,_12194,_12244),a(5,_12244,_12294),q(5,_12294,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_12484),a(2,_12484,_12534),a(3,_12534,_12584),a(4,_12584,_12634),a(5,_12634,_12684),not_a(6,_12684,_9858).
r_star1(_9852,_9858) :- a(1,_9852,_12892),a(2,_12892,_12942),a(3,_12942,_12992),a(4,_12992,_13042),a(5,_13042,_13092),a(6,_13092,_13142),q(6,_13142,_9858).
r_star2(_9912,_9858) :- not_p(1,_9912,_9858).
r_star2(_9912,_9858) :- p(1,_9912,_13472),not_p(2,_13472,_9858).
r_star2(_9912,_9858) :- p(1,_9912,_13626),p(2,_13626,_13676),not_p(3,_13676,_9858).
r_star2(_9912,_9858) :- p(1,_9912,_13836),p(2,_13836,_13886),p(3,_13886,_13936),not_p(4,_13936,_9858).
r_star2(_9912,_9858) :- p(1,_9912,_14102),p(2,_14102,_14152),p(3,_14152,_14202),p(4,_14202,_14252),not_p(5,_14252,_9858).
r_star2(_9912,_9858) :- p(1,_9912,_14424),p(2,_14424,_14474),p(3,_14474,_14524),p(4,_14524,_14574),p(5,_14574,_14624),not_p(6,_14624,_9858).
not_r(_9852,_9858) :- copy_term([],[]),r_star1(_9852,_9912),copy_term([],[]),r_star2(_9912,_9858).

false_star1 :- (p(_14774,[],_14936),not_q(_14774,_14936,_15014)),assertICs(_15014).

not_false :- false_star1.
:- not_false.

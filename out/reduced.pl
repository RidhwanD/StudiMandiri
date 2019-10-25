exists(phase0,drug).
possible_drug_effect(_632,inhibit,_636).
possible_drug_effect(_706,induce,_710).
absent(calpain).
reaction(rct(aif,apoptosis)).
inhibitor(aif,bcl_xl).
exists(_872,_874,_896,_896) :- exists(_872,_874).
not_exists(_872,_874,_966,_966) :- not exists(_872,_874).
possible_drug_effect(_1060,_1062,_1064,_1092,_1092) :- possible_drug_effect(_1060,_1062,_1064).
not_possible_drug_effect(_1060,_1062,_1064,_1176,_1176) :- not possible_drug_effect(_1060,_1062,_1064).
absent(_1292,_1308,_1308) :- absent(_1292).
not_absent(_1292,_1364,_1364) :- not absent(_1292).
reaction(_1436,_1452,_1452) :- reaction(_1436).
not_reaction(_1436,_1508,_1508) :- not reaction(_1436).
inhibitor(_1580,_1582,_1604,_1604) :- inhibitor(_1580,_1582).
not_inhibitor(_1580,_1582,_1674,_1674) :- not inhibitor(_1580,_1582).
drug_induced(_2428,_2430,_2432,_2460,_2466) :- insert_abducible(drug_induced(_2428,_2430,_2432),_2460,_2466).
not_drug_induced(_2562,_2564,_2566,_2606,_2612) :- insert_abducible(not drug_induced(_2562,_2564,_2566),_2606,_2612).
drug_inhibited(_2708,_2710,_2712,_2740,_2746) :- insert_abducible(drug_inhibited(_2708,_2710,_2712),_2740,_2746).
not_drug_inhibited(_2842,_2844,_2846,_2886,_2892) :- insert_abducible(not drug_inhibited(_2842,_2844,_2846),_2886,_2892).
active_ab(_3042,_3044,_3236) :- not_inhibited(_3042,_3044,[],_3178),normally_active(_3042,_3044,_3178,_3236).

:- table active_ab/3.
active(_3344,_3350,_3356,_3362) :- active_ab(_3344,_3350,_3438),produce_context(_3362,_3356,_3438).
active_star1(_3508,_3514,_3648,_3648) :- [_3508,_3514]\=[_3042,_3044].
active_star1(_3042,_3044,_3532,_3538) :- inhibited(_3042,_3044,_3532,_3538).
active_star1(_3042,_3044,_3532,_3538) :- not_normally_active(_3042,_3044,_3532,_3538).
not_active(_3508,_3514,_3532,_3538) :- active_star1(_3508,_3514,_3532,_3538).

normally_active_ab(_4064,_4066,_4202) :- reaction(rct(_4080,_4066),[],_4152),active(_4064,_4080,_4152,_4202).

:- table normally_active_ab/3.
normally_active(_4310,_4316,_4322,_4328) :- normally_active_ab(_4310,_4316,_4404),produce_context(_4328,_4322,_4404).
normally_active_star1(_4474,_4480,_4614,_4614) :- [_4474,_4480]\=[_4064,_4066].
normally_active_star1(_4474,_4066,_4498,_4504) :- not_reaction(rct(_4080,_4066),_4498,_4504).
normally_active_star1(_4064,_4066,_4498,_4504) :- reaction(rct(_4080,_4066),_4498,_4892),not_active(_4064,_4080,_4892,_4504).
not_normally_active(_4474,_4480,_4498,_4504) :- normally_active_star1(_4474,_4480,_4498,_4504).

inhibited_ab(_5080,_5082,_5134) :- normally_inhibited(_5080,_5082,[],_5134).

inhibited_ab(_5056,_5058,_5266) :- externally_inhibited(_5056,_5058,[],_5266).

:- table inhibited_ab/3.
inhibited(_5374,_5380,_5386,_5392) :- inhibited_ab(_5374,_5380,_5468),produce_context(_5392,_5386,_5468).
inhibited_star1(_5538,_5544,_5726,_5726) :- [_5538,_5544]\=[_5080,_5082].
inhibited_star1(_5080,_5082,_5562,_5568) :- not_normally_inhibited(_5080,_5082,_5562,_5568).
inhibited_star2(_5538,_5544,_6024,_6024) :- [_5538,_5544]\=[_5056,_5058].
inhibited_star2(_5056,_5058,_5650,_5568) :- not_externally_inhibited(_5056,_5058,_5650,_5568).
not_inhibited(_5538,_5544,_5562,_5568) :- copy_term([_5538,_5544],[_5632,_5638]),inhibited_star1(_5632,_5638,_5562,_5650),copy_term([_5538,_5544],[_5930,_5936]),inhibited_star2(_5930,_5936,_5650,_5568).

normally_inhibited_ab(_6276,_6278,_6424) :- inhibitor(_6278,_6290,[],_6366),active(_6276,_6290,_6366,_6424).

:- table normally_inhibited_ab/3.
normally_inhibited(_6532,_6538,_6544,_6550) :- normally_inhibited_ab(_6532,_6538,_6626),produce_context(_6550,_6544,_6626).
normally_inhibited_star1(_6696,_6702,_6836,_6836) :- [_6696,_6702]\=[_6276,_6278].
normally_inhibited_star1(_6696,_6278,_6720,_6726) :- not_inhibitor(_6278,_6290,_6720,_6726).
normally_inhibited_star1(_6276,_6278,_6720,_6726) :- inhibitor(_6278,_6290,_6720,_7122),not_active(_6276,_6290,_7122,_6726).
not_normally_inhibited(_6696,_6702,_6720,_6726) :- normally_inhibited_star1(_6696,_6702,_6720,_6726).

externally_inhibited_ab(_7298,_7300,_7510) :- exists(_7298,_7312,[drug_inhibited(_7298,_7312,_7300)],_7446),possible_drug_effect(_7312,inhibit,_7300,_7446,_7510).

:- table externally_inhibited_ab/3.
externally_inhibited(_7626,_7632,_7638,_7644) :- externally_inhibited_ab(_7626,_7632,_7720),produce_context(_7644,_7638,_7720).
externally_inhibited_star1(_7790,_7796,_7930,_7930) :- [_7790,_7796]\=[_7298,_7300].
externally_inhibited_star1(_7298,_7796,_7814,_7820) :- not_exists(_7298,_7312,_7814,_7820).
externally_inhibited_star1(_7298,_7300,_7814,_7820) :- exists(_7298,_7312,_7814,_8228),not_possible_drug_effect(_7312,inhibit,_7300,_8228,_7820).
externally_inhibited_star1(_7298,_7300,_7814,_7820) :- exists(_7298,_7312,_7814,_8464),possible_drug_effect(_7312,inhibit,_7300,_8464,_8534),not_drug_inhibited(_7298,_7312,_7300,_8534,_7820).
not_externally_inhibited(_7790,_7796,_7814,_7820) :- externally_inhibited_star1(_7790,_7796,_7814,_7820).

not_false(_8718,_8718).



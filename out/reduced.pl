exists(phase0,drug).
possible_drug_effect(_4728,inhibit,_4732).
possible_drug_effect(_4802,induce,_4806).
absent(calpain).
reaction(rct(aif,apoptosis)).
inhibitor(aif,bcl_xl).
exists(_4968,_4970,_4992,_4992) :- exists(_4968,_4970).
not_exists(_4968,_4970,_5062,_5062) :- not exists(_4968,_4970).
possible_drug_effect(_5156,_5158,_5160,_5188,_5188) :- possible_drug_effect(_5156,_5158,_5160).
not_possible_drug_effect(_5156,_5158,_5160,_5272,_5272) :- not possible_drug_effect(_5156,_5158,_5160).
absent(_5388,_5404,_5404) :- absent(_5388).
not_absent(_5388,_5460,_5460) :- not absent(_5388).
reaction(_5532,_5548,_5548) :- reaction(_5532).
not_reaction(_5532,_5604,_5604) :- not reaction(_5532).
inhibitor(_5676,_5678,_5700,_5700) :- inhibitor(_5676,_5678).
not_inhibitor(_5676,_5678,_5770,_5770) :- not inhibitor(_5676,_5678).
drug_induced(_7118,_7120,_7122,_7150,_7156) :- insert_abducible(drug_induced(_7118,_7120,_7122),_7150,_7156).
not_drug_induced(_7252,_7254,_7256,_7296,_7302) :- insert_abducible(not drug_induced(_7252,_7254,_7256),_7296,_7302).
drug_inhibited(_7398,_7400,_7402,_7430,_7436) :- insert_abducible(drug_inhibited(_7398,_7400,_7402),_7430,_7436).
not_drug_inhibited(_7532,_7534,_7536,_7576,_7582) :- insert_abducible(not drug_inhibited(_7532,_7534,_7536),_7576,_7582).
externally_inhibited_ab(_7732,_7734,_7944) :- exists(_7732,_7746,[drug_inhibited(_7732,_7746,_7734)],_7880),possible_drug_effect(_7746,inhibit,_7734,_7880,_7944).

:- table externally_inhibited_ab/3.
externally_inhibited(_8060,_8066,_8072,_8078) :- externally_inhibited_ab(_8060,_8066,_8154),produce_context(_8078,_8072,_8154).
externally_inhibited_star1(_8224,_8230,_8364,_8364) :- [_8224,_8230]\=[_7732,_7734].
externally_inhibited_star1(_7732,_8230,_8248,_8254) :- not_exists(_7732,_7746,_8248,_8254).
externally_inhibited_star1(_7732,_7734,_8248,_8254) :- exists(_7732,_7746,_8248,_8662),not_possible_drug_effect(_7746,inhibit,_7734,_8662,_8254).
externally_inhibited_star1(_7732,_7734,_8248,_8254) :- exists(_7732,_7746,_8248,_8898),possible_drug_effect(_7746,inhibit,_7734,_8898,_8968),not_drug_inhibited(_7732,_7746,_7734,_8968,_8254).
not_externally_inhibited(_8224,_8230,_8248,_8254) :- externally_inhibited_star1(_8224,_8230,_8248,_8254).

normally_inhibited_ab(_9166,_9168,_9314) :- inhibitor(_9168,_9180,[],_9256),active(_9166,_9180,_9256,_9314).

:- table normally_inhibited_ab/3.
normally_inhibited(_9422,_9428,_9434,_9440) :- normally_inhibited_ab(_9422,_9428,_9516),produce_context(_9440,_9434,_9516).
normally_inhibited_star1(_9586,_9592,_9726,_9726) :- [_9586,_9592]\=[_9166,_9168].
normally_inhibited_star1(_9586,_9168,_9610,_9616) :- not_inhibitor(_9168,_9180,_9610,_9616).
normally_inhibited_star1(_9166,_9168,_9610,_9616) :- inhibitor(_9168,_9180,_9610,_10012),not_active(_9166,_9180,_10012,_9616).
not_normally_inhibited(_9586,_9592,_9610,_9616) :- normally_inhibited_star1(_9586,_9592,_9610,_9616).

inhibited_ab(_10208,_10210,_10262) :- normally_inhibited(_10208,_10210,[],_10262).

inhibited_ab(_10184,_10186,_10394) :- externally_inhibited(_10184,_10186,[],_10394).

:- table inhibited_ab/3.
inhibited(_10502,_10508,_10514,_10520) :- inhibited_ab(_10502,_10508,_10596),produce_context(_10520,_10514,_10596).
inhibited_star1(_10666,_10672,_10854,_10854) :- [_10666,_10672]\=[_10208,_10210].
inhibited_star1(_10208,_10210,_10690,_10696) :- not_normally_inhibited(_10208,_10210,_10690,_10696).
inhibited_star2(_10666,_10672,_11152,_11152) :- [_10666,_10672]\=[_10184,_10186].
inhibited_star2(_10184,_10186,_10778,_10696) :- not_externally_inhibited(_10184,_10186,_10778,_10696).
not_inhibited(_10666,_10672,_10690,_10696) :- copy_term([_10666,_10672],[_10760,_10766]),inhibited_star1(_10760,_10766,_10690,_10778),copy_term([_10666,_10672],[_11058,_11064]),inhibited_star2(_11058,_11064,_10778,_10696).

normally_active_ab(_11404,_11406,_11542) :- reaction(rct(_11420,_11406),[],_11492),active(_11404,_11420,_11492,_11542).

:- table normally_active_ab/3.
normally_active(_11650,_11656,_11662,_11668) :- normally_active_ab(_11650,_11656,_11744),produce_context(_11668,_11662,_11744).
normally_active_star1(_11814,_11820,_11954,_11954) :- [_11814,_11820]\=[_11404,_11406].
normally_active_star1(_11814,_11406,_11838,_11844) :- not_reaction(rct(_11420,_11406),_11838,_11844).
normally_active_star1(_11404,_11406,_11838,_11844) :- reaction(rct(_11420,_11406),_11838,_12232),not_active(_11404,_11420,_12232,_11844).
not_normally_active(_11814,_11820,_11838,_11844) :- normally_active_star1(_11814,_11820,_11838,_11844).

active_ab(_12400,_12402,_12594) :- not_inhibited(_12400,_12402,[],_12536),normally_active(_12400,_12402,_12536,_12594).

:- table active_ab/3.
active(_12702,_12708,_12714,_12720) :- active_ab(_12702,_12708,_12796),produce_context(_12720,_12714,_12796).
active_star1(_12866,_12872,_13006,_13006) :- [_12866,_12872]\=[_12400,_12402].
active_star1(_12400,_12402,_12890,_12896) :- inhibited(_12400,_12402,_12890,_12896).
active_star1(_12400,_12402,_12890,_12896) :- not_normally_active(_12400,_12402,_12890,_12896).
not_active(_12866,_12872,_12890,_12896) :- active_star1(_12866,_12872,_12890,_12896).

not_false(_13408,_13408).



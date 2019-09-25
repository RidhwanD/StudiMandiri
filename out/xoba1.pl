alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_4874,_4890,_4890) :- alive(_4874).
not_alive(_4874,_4946,_4946) :- not alive(_4874).
sick(_4986,_5002,_5002) :- sick(_4986).
not_sick(_4986,_5058,_5058) :- not sick(_4986).
healthy(_6208,_6224,_6230) :- insert_abducible(healthy(_6208),_6224,_6230).
not_healthy(_6310,_6338,_6344) :- insert_abducible(not healthy(_6310),_6338,_6344).
lucky(_6424,_6440,_6446) :- insert_abducible(lucky(_6424),_6440,_6446).
not_lucky(_6526,_6554,_6560) :- insert_abducible(not lucky(_6526),_6554,_6560).
study_hard(_6640,_6656,_6662) :- insert_abducible(study_hard(_6640),_6656,_6662).
not_study_hard(_6742,_6770,_6776) :- insert_abducible(not study_hard(_6742),_6770,_6776).
traffic_jam(_6856,_6872,_6878) :- insert_abducible(traffic_jam(_6856),_6872,_6878).
not_traffic_jam(_6958,_6986,_6992) :- insert_abducible(not traffic_jam(_6958),_6986,_6992).
sleep_late(_7072,_7088,_7094) :- insert_abducible(sleep_late(_7072),_7088,_7094).
not_sleep_late(_7174,_7202,_7208) :- insert_abducible(not sleep_late(_7174),_7202,_7208).
always_present(_7374,_7380,_7386) :- transformApost(always_present(_7374)),!,always_present(_7374,_7380,_7386).
always_present(_7374,_7380,_7386) :- always_present_ab(_7374,_7446),produce_context(_7386,_7380,_7446).
always_present_star1(_7546,_7700,_7700) :- [_7546]\=[_7360].
always_present_star1(_7360,_7564,_7570) :- not_healthy(_7360,_7564,_7570).
always_present_star2(_7546,_7936,_7936) :- [_7546]\=[_7340].
always_present_star2(_7340,_7638,_7570) :- not_lucky(_7340,_7638,_7570).
not_always_present(_7546,_7564,_7570) :- copy_term([_7546],[_7626]),always_present_star1(_7626,_7564,_7638),copy_term([_7546],[_7862]),always_present_star2(_7862,_7638,_7570).

good_grades(_8184,_8190,_8196) :- transformApost(good_grades(_8184)),!,good_grades(_8184,_8190,_8196).
good_grades(_8184,_8190,_8196) :- good_grades_ab(_8184,_8256),produce_context(_8196,_8190,_8256).
good_grades_star1(_8356,_8510,_8510) :- [_8356]\=[_8170].
good_grades_star1(_8170,_8374,_8380) :- not_study_hard(_8170,_8374,_8380).
good_grades_star2(_8356,_8746,_8746) :- [_8356]\=[_8140].
good_grades_star2(_8140,_8448,_8380) :- not_always_present(_8140,_8448,_8380).
good_grades_star2(_8140,_8448,_8380) :- always_present(_8140,_8448,_8964),not_lucky(_8140,_8964,_8380).
not_good_grades(_8356,_8374,_8380) :- copy_term([_8356],[_8436]),good_grades_star1(_8436,_8374,_8448),copy_term([_8356],[_8672]),good_grades_star2(_8672,_8448,_8380).

late(_9162,_9168,_9174) :- transformApost(late(_9162)),!,late(_9162,_9168,_9174).
late(_9162,_9168,_9174) :- late_ab(_9162,_9234),produce_context(_9174,_9168,_9234).
late_star1(_9334,_9488,_9488) :- [_9334]\=[1].
late_star2(_9334,_9624,_9624) :- [_9334]\=[_9132].
late_star2(_9132,_9426,_9358) :- not_overslept(_9132,_9426,_9358).
late_star3(_9334,_9860,_9860) :- [_9334]\=[_9112].
late_star3(_9112,_9562,_9358) :- not_traffic_jam(_9112,_9562,_9358).
not_late(_9334,_9352,_9358) :- copy_term([_9334],[_9414]),late_star1(_9414,_9352,_9426),copy_term([_9334],[_9550]),late_star2(_9550,_9426,_9562),copy_term([_9334],[_9786]),late_star3(_9786,_9562,_9358).

overslept(_10082,_10088,_10094) :- transformApost(overslept(_10082)),!,overslept(_10082,_10088,_10094).
overslept(_10082,_10088,_10094) :- overslept_ab(_10082,_10154),produce_context(_10094,_10088,_10154).
overslept_star1(_10254,_10366,_10366) :- [_10254]\=[_10068].
overslept_star1(_10068,_10272,_10278) :- not_sleep_late(_10068,_10272,_10278).
not_overslept(_10254,_10272,_10278) :- overslept_star1(_10254,_10272,_10278).

treat(_10598,_10604,_10610,_10616) :- transformApost(treat(_10598,_10604)),!,treat(_10598,_10604,_10610,_10616).
treat(_10598,_10604,_10610,_10616) :- treat_ab(_10598,_10604,_10692),produce_context(_10616,_10610,_10692).
treat_star1(_10802,_10808,_10942,_10942) :- [_10802,_10808]\=[_10572,_10574].
treat_star1(_10572,_10808,_10826,_10832) :- not_healthy(_10572,_10826,_10832).
treat_star1(_10572,_10574,_10826,_10832) :- healthy(_10572,_10826,_11196),not_sick(_10574,_11196,_10832).
not_treat(_10802,_10808,_10826,_10832) :- treat_star1(_10802,_10808,_10826,_10832).

death(_11362,_11368,_11374) :- transformApost(death(_11362)),!,death(_11362,_11368,_11374).
death(_11362,_11368,_11374) :- death_ab(_11362,_11434),produce_context(_11374,_11368,_11434).
death_star1(_11534,_11646,_11646) :- [_11534]\=[s(_11348)].
death_star1(_11534,_11552,_11558) :- not_sick(_11348,_11552,_11558).
not_death(_11534,_11552,_11558) :- death_star1(_11534,_11552,_11558).

false_star1(_11878,_11884) :- not_healthy(_11852,_11878,_11884).
false_star1(_11878,_11884) :- healthy(_11852,_11878,_12132),not_sick(_11852,_12132,_11884).
not_false(_11878,_11884) :- false_star1(_11878,_11884).


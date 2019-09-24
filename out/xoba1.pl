alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_4872,_4888,_4888) :- alive(_4872).
not_alive(_4872,_4944,_4944) :- not alive(_4872).
sick(_4984,_5000,_5000) :- sick(_4984).
not_sick(_4984,_5056,_5056) :- not sick(_4984).
healthy(_6210,_6226,_6232) :- insert_abducible(healthy(_6210),_6226,_6232).
not_healthy(_6312,_6340,_6346) :- insert_abducible(not healthy(_6312),_6340,_6346).
lucky(_6426,_6442,_6448) :- insert_abducible(lucky(_6426),_6442,_6448).
not_lucky(_6528,_6556,_6562) :- insert_abducible(not lucky(_6528),_6556,_6562).
study_hard(_6642,_6658,_6664) :- insert_abducible(study_hard(_6642),_6658,_6664).
not_study_hard(_6744,_6772,_6778) :- insert_abducible(not study_hard(_6744),_6772,_6778).
traffic_jam(_6858,_6874,_6880) :- insert_abducible(traffic_jam(_6858),_6874,_6880).
not_traffic_jam(_6960,_6988,_6994) :- insert_abducible(not traffic_jam(_6960),_6988,_6994).
sleep_late(_7074,_7090,_7096) :- insert_abducible(sleep_late(_7074),_7090,_7096).
not_sleep_late(_7176,_7204,_7210) :- insert_abducible(not sleep_late(_7176),_7204,_7210).
always_present(_7376,_7382,_7388) :- transformApost(always_present(_7376)),!,always_present(_7376,_7382,_7388).
always_present(_7376,_7382,_7388) :- always_present_ab(_7376,_7448),produce_context(_7388,_7382,_7448).
always_present_star1(_7548,_7702,_7702) :- [_7548]\=[_7362].
always_present_star1(_7362,_7566,_7572) :- not_healthy(_7362,_7566,_7572).
always_present_star2(_7548,_7926,_7926) :- [_7548]\=[_7342].
always_present_star2(_7342,_7640,_7572) :- not_lucky(_7342,_7640,_7572).
not_always_present(_7548,_7566,_7572) :- copy_term([_7548],[_7628]),always_present_star1(_7628,_7566,_7640),copy_term([_7548],[_7852]),always_present_star2(_7852,_7640,_7572).

good_grades(_8162,_8168,_8174) :- transformApost(good_grades(_8162)),!,good_grades(_8162,_8168,_8174).
good_grades(_8162,_8168,_8174) :- good_grades_ab(_8162,_8234),produce_context(_8174,_8168,_8234).
good_grades_star1(_8334,_8488,_8488) :- [_8334]\=[_8148].
good_grades_star1(_8148,_8352,_8358) :- not_study_hard(_8148,_8352,_8358).
good_grades_star2(_8334,_8712,_8712) :- [_8334]\=[_8118].
good_grades_star2(_8118,_8426,_8358) :- not_always_present(_8118,_8426,_8358).
good_grades_star2(_8118,_8426,_8358) :- not_lucky(_8118,_8426,_8358).
not_good_grades(_8334,_8352,_8358) :- copy_term([_8334],[_8414]),good_grades_star1(_8414,_8352,_8426),copy_term([_8334],[_8638]),good_grades_star2(_8638,_8426,_8358).

late(_9048,_9054,_9060) :- transformApost(late(_9048)),!,late(_9048,_9054,_9060).
late(_9048,_9054,_9060) :- late_ab(_9048,_9120),produce_context(_9060,_9054,_9120).
late_star1(_9220,_9374,_9374) :- [_9220]\=[1].
late_star2(_9220,_9510,_9510) :- [_9220]\=[_9018].
late_star2(_9018,_9312,_9244) :- not_overslept(_9018,_9312,_9244).
late_star3(_9220,_9734,_9734) :- [_9220]\=[_8998].
late_star3(_8998,_9448,_9244) :- not_traffic_jam(_8998,_9448,_9244).
not_late(_9220,_9238,_9244) :- copy_term([_9220],[_9300]),late_star1(_9300,_9238,_9312),copy_term([_9220],[_9436]),late_star2(_9436,_9312,_9448),copy_term([_9220],[_9660]),late_star3(_9660,_9448,_9244).

overslept(_9944,_9950,_9956) :- transformApost(overslept(_9944)),!,overslept(_9944,_9950,_9956).
overslept(_9944,_9950,_9956) :- overslept_ab(_9944,_10016),produce_context(_9956,_9950,_10016).
overslept_star1(_10116,_10228,_10228) :- [_10116]\=[_9930].
overslept_star1(_9930,_10134,_10140) :- not_sleep_late(_9930,_10134,_10140).
not_overslept(_10116,_10134,_10140) :- overslept_star1(_10116,_10134,_10140).

treat(_10452,_10458,_10464,_10470) :- transformApost(treat(_10452,_10458)),!,treat(_10452,_10458,_10464,_10470).
treat(_10452,_10458,_10464,_10470) :- treat_ab(_10452,_10458,_10546),produce_context(_10470,_10464,_10546).
treat_star1(_10656,_10662,_10796,_10796) :- [_10656,_10662]\=[_10426,_10428].
treat_star1(_10426,_10662,_10680,_10686) :- not_healthy(_10426,_10680,_10686).
treat_star1(_10656,_10428,_10680,_10686) :- not_sick(_10428,_10680,_10686).
not_treat(_10656,_10662,_10680,_10686) :- treat_star1(_10656,_10662,_10680,_10686).

death(_11136,_11142,_11148) :- transformApost(death(_11136)),!,death(_11136,_11142,_11148).
death(_11136,_11142,_11148) :- death_ab(_11136,_11208),produce_context(_11148,_11142,_11208).
death_star1(_11308,_11420,_11420) :- [_11308]\=[s(_11122)].
death_star1(_11308,_11326,_11332) :- not_sick(_11122,_11326,_11332).
not_death(_11308,_11326,_11332) :- death_star1(_11308,_11326,_11332).

false_star1(_11642,_11648) :- not_treat(_11614,_11616,_11642,_11648).
false_star1(_11642,_11648) :- not_healthy(_11616,_11642,_11648).
not_false(_11642,_11648) :- false_star1(_11642,_11648).


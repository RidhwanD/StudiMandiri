alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_6826,_6842,_6842) :- alive(_6826).
not_alive(_6826,_6898,_6898) :- not alive(_6826).
sick(_6970,_6986,_6986) :- sick(_6970).
not_sick(_6970,_7042,_7042) :- not sick(_6970).
healthy(_8386,_8402,_8408) :- insert_abducible(healthy(_8386),_8402,_8408).
not_healthy(_8488,_8516,_8522) :- insert_abducible(not healthy(_8488),_8516,_8522).
lucky(_8602,_8618,_8624) :- insert_abducible(lucky(_8602),_8618,_8624).
not_lucky(_8704,_8732,_8738) :- insert_abducible(not lucky(_8704),_8732,_8738).
study_hard(_8818,_8834,_8840) :- insert_abducible(study_hard(_8818),_8834,_8840).
not_study_hard(_8920,_8948,_8954) :- insert_abducible(not study_hard(_8920),_8948,_8954).
traffic_jam(_9034,_9050,_9056) :- insert_abducible(traffic_jam(_9034),_9050,_9056).
not_traffic_jam(_9136,_9164,_9170) :- insert_abducible(not traffic_jam(_9136),_9164,_9170).
sleep_late(_9250,_9266,_9272) :- insert_abducible(sleep_late(_9250),_9266,_9272).
not_sleep_late(_9352,_9380,_9386) :- insert_abducible(not sleep_late(_9352),_9380,_9386).
:- table always_present_ab/2.
always_present_ab(_9538,[healthy(_9538)]).

always_present_ab(_9518,[lucky(_9518)]).

always_present(_9894,_9900,_9906) :- always_present_ab(_9894,_9966),produce_context(_9906,_9900,_9966).
always_present_star1(_10028,_10182,_10182) :- [_10028]\=[_9538].
always_present_star1(_9538,_10046,_10052) :- not_healthy(_9538,_10046,_10052).
always_present_star2(_10028,_10418,_10418) :- [_10028]\=[_9518].
always_present_star2(_9518,_10120,_10052) :- not_lucky(_9518,_10120,_10052).
not_always_present(_10028,_10046,_10052) :- copy_term([_10028],[_10108]),always_present_star1(_10108,_10046,_10120),copy_term([_10028],[_10344]),always_present_star2(_10344,_10120,_10052).

:- table good_grades_ab/2.
good_grades_ab(_10652,[study_hard(_10652)]).

good_grades_ab(_10622,_10990) :- always_present(_10622,[lucky(_10622)],_10990).

good_grades(_11064,_11070,_11076) :- good_grades_ab(_11064,_11136),produce_context(_11076,_11070,_11136).
good_grades_star1(_11198,_11352,_11352) :- [_11198]\=[_10652].
good_grades_star1(_10652,_11216,_11222) :- not_study_hard(_10652,_11216,_11222).
good_grades_star2(_11198,_11588,_11588) :- [_11198]\=[_10622].
good_grades_star2(_10622,_11290,_11222) :- not_always_present(_10622,_11290,_11222).
good_grades_star2(_10622,_11290,_11222) :- always_present(_10622,_11290,_11806),not_lucky(_10622,_11806,_11222).
not_good_grades(_11198,_11216,_11222) :- copy_term([_11198],[_11278]),good_grades_star1(_11278,_11216,_11290),copy_term([_11198],[_11514]),good_grades_star2(_11514,_11290,_11222).

:- table late_ab/2.
late_ab(1,[]).

late_ab(_11974,_12208) :- overslept(_11974,[],_12208).

late_ab(_11954,[traffic_jam(_11954)]).

late(_12408,_12414,_12420) :- late_ab(_12408,_12480),produce_context(_12420,_12414,_12480).
late_star1(_12542,_12696,_12696) :- [_12542]\=[1].
late_star2(_12542,_12832,_12832) :- [_12542]\=[_11974].
late_star2(_11974,_12634,_12566) :- not_overslept(_11974,_12634,_12566).
late_star3(_12542,_13068,_13068) :- [_12542]\=[_11954].
late_star3(_11954,_12770,_12566) :- not_traffic_jam(_11954,_12770,_12566).
not_late(_12542,_12560,_12566) :- copy_term([_12542],[_12622]),late_star1(_12622,_12560,_12634),copy_term([_12542],[_12758]),late_star2(_12758,_12634,_12770),copy_term([_12542],[_12994]),late_star3(_12994,_12770,_12566).

:- table overslept_ab/2.
overslept_ab(_13276,[sleep_late(_13276)]).

overslept(_13506,_13512,_13518) :- overslept_ab(_13506,_13578),produce_context(_13518,_13512,_13578).
overslept_star1(_13640,_13752,_13752) :- [_13640]\=[_13276].
overslept_star1(_13276,_13658,_13664) :- not_sleep_late(_13276,_13658,_13664).
not_overslept(_13640,_13658,_13664) :- overslept_star1(_13640,_13658,_13664).

:- table treat_ab/3.
treat_ab(_13962,_13964,_14198) :- sick(_13964,[healthy(_13962)],_14198).

treat(_14286,_14292,_14298,_14304) :- treat_ab(_14286,_14292,_14380),produce_context(_14304,_14298,_14380).
treat_star1(_14450,_14456,_14590,_14590) :- [_14450,_14456]\=[_13962,_13964].
treat_star1(_13962,_14456,_14474,_14480) :- not_healthy(_13962,_14474,_14480).
treat_star1(_13962,_13964,_14474,_14480) :- healthy(_13962,_14474,_14844),not_sick(_13964,_14844,_14480).
not_treat(_14450,_14456,_14474,_14480) :- treat_star1(_14450,_14456,_14474,_14480).

doctor_star1(_15050,_15162,_15162) :- [_15050]\=[_14992].
doctor_star1(_14992,_15068,_15074) :- not_treat(_14992,_15004,_15068,_15074).
doctor_star1(_14992,_15068,_15074) :- treat(_14992,_15004,_15068,_15406),not_sick(_15004,_15406,_15074).
not_doctor(_15050,_15068,_15074) :- doctor_star1(_15050,_15068,_15074).

:- table death_ab/3.
death_ab(s(_15570),s(_15570,_15576),_15810) :- sick(_15570,[healthy(_15576)],_15810).

death(_15898,_15904,_15910,_15916) :- death_ab(_15898,_15904,_15992),produce_context(_15916,_15910,_15992).
death_star1(_16062,_16068,_16202,_16202) :- [_16062,_16068]\=[s(_15570),s(_15570,_15576)].
death_star1(s(_15570),s(_15570,_15576),_16086,_16092) :- not_sick(_15570,_16086,_16092).
death_star1(s(_15570),s(_15570,_15576),_16086,_16092) :- sick(_15570,_16086,_16504),not_healthy(_15576,_16504,_16092).
not_death(_16062,_16068,_16086,_16092) :- death_star1(_16062,_16068,_16086,_16092).

:- table false_ab/1.
false_star1(_16760,_16766) :- not_healthy(_16648,_16760,_16766).
not_false(_16760,_16766) :- false_star1(_16760,_16766).

:- table doctor_ab/2.
doctor_ab(_17066,_17240) :- treat(_17066,_17078,[],_17188),sick(_17078,_17188,_17240).

doctor(_17314,_17320,_17326) :- doctor_ab(_17314,_17386),produce_context(_17326,_17320,_17386).

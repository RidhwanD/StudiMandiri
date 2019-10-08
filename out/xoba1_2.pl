alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_6120,_6136,_6136) :- alive(_6120).
not_alive(_6120,_6192,_6192) :- not alive(_6120).
sick(_6264,_6280,_6280) :- sick(_6264).
not_sick(_6264,_6336,_6336) :- not sick(_6264).
healthy(_7680,_7696,_7702) :- insert_abducible(healthy(_7680),_7696,_7702).
not_healthy(_7782,_7810,_7816) :- insert_abducible(not healthy(_7782),_7810,_7816).
lucky(_7896,_7912,_7918) :- insert_abducible(lucky(_7896),_7912,_7918).
not_lucky(_7998,_8026,_8032) :- insert_abducible(not lucky(_7998),_8026,_8032).
study_hard(_8112,_8128,_8134) :- insert_abducible(study_hard(_8112),_8128,_8134).
not_study_hard(_8214,_8242,_8248) :- insert_abducible(not study_hard(_8214),_8242,_8248).
traffic_jam(_8328,_8344,_8350) :- insert_abducible(traffic_jam(_8328),_8344,_8350).
not_traffic_jam(_8430,_8458,_8464) :- insert_abducible(not traffic_jam(_8430),_8458,_8464).
sleep_late(_8544,_8560,_8566) :- insert_abducible(sleep_late(_8544),_8560,_8566).
not_sleep_late(_8646,_8674,_8680) :- insert_abducible(not sleep_late(_8646),_8674,_8680).
:- table always_present_ab/2.
always_present_ab(_8832,[healthy(_8832)]).

always_present_ab(_8812,[lucky(_8812)]).

always_present(_9188,_9194,_9200) :- always_present_ab(_9188,_9260),produce_context(_9200,_9194,_9260).
always_present_star1(_9322,_9476,_9476) :- [_9322]\=[_8832].
always_present_star1(_8832,_9340,_9346) :- not_healthy(_8832,_9340,_9346).
always_present_star2(_9322,_9712,_9712) :- [_9322]\=[_8812].
always_present_star2(_8812,_9414,_9346) :- not_lucky(_8812,_9414,_9346).
not_always_present(_9322,_9340,_9346) :- copy_term([_9322],[_9402]),always_present_star1(_9402,_9340,_9414),copy_term([_9322],[_9638]),always_present_star2(_9638,_9414,_9346).

:- table good_grades_ab/2.
good_grades_ab(_9946,[study_hard(_9946)]).

good_grades_ab(_9916,_10284) :- always_present(_9916,[lucky(_9916)],_10284).

good_grades(_10358,_10364,_10370) :- good_grades_ab(_10358,_10430),produce_context(_10370,_10364,_10430).
good_grades_star1(_10492,_10646,_10646) :- [_10492]\=[_9946].
good_grades_star1(_9946,_10510,_10516) :- not_study_hard(_9946,_10510,_10516).
good_grades_star2(_10492,_10882,_10882) :- [_10492]\=[_9916].
good_grades_star2(_9916,_10584,_10516) :- not_always_present(_9916,_10584,_10516).
good_grades_star2(_9916,_10584,_10516) :- always_present(_9916,_10584,_11100),not_lucky(_9916,_11100,_10516).
not_good_grades(_10492,_10510,_10516) :- copy_term([_10492],[_10572]),good_grades_star1(_10572,_10510,_10584),copy_term([_10492],[_10808]),good_grades_star2(_10808,_10584,_10516).

:- table late_ab/2.
late_ab(1,[]).

late_ab(_11268,_11502) :- overslept(_11268,[],_11502).

late_ab(_11248,[traffic_jam(_11248)]).

late(_11702,_11708,_11714) :- late_ab(_11702,_11774),produce_context(_11714,_11708,_11774).
late_star1(_11836,_11990,_11990) :- [_11836]\=[1].
late_star2(_11836,_12126,_12126) :- [_11836]\=[_11268].
late_star2(_11268,_11928,_11860) :- not_overslept(_11268,_11928,_11860).
late_star3(_11836,_12362,_12362) :- [_11836]\=[_11248].
late_star3(_11248,_12064,_11860) :- not_traffic_jam(_11248,_12064,_11860).
not_late(_11836,_11854,_11860) :- copy_term([_11836],[_11916]),late_star1(_11916,_11854,_11928),copy_term([_11836],[_12052]),late_star2(_12052,_11928,_12064),copy_term([_11836],[_12288]),late_star3(_12288,_12064,_11860).

:- table overslept_ab/2.
overslept_ab(_12570,[sleep_late(_12570)]).

overslept(_12800,_12806,_12812) :- overslept_ab(_12800,_12872),produce_context(_12812,_12806,_12872).
overslept_star1(_12934,_13046,_13046) :- [_12934]\=[_12570].
overslept_star1(_12570,_12952,_12958) :- not_sleep_late(_12570,_12952,_12958).
not_overslept(_12934,_12952,_12958) :- overslept_star1(_12934,_12952,_12958).

:- table treat_ab/3.
treat_ab(_13256,_13258,_13492) :- sick(_13258,[healthy(_13256)],_13492).

treat(_13580,_13586,_13592,_13598) :- treat_ab(_13580,_13586,_13674),produce_context(_13598,_13592,_13674).
treat_star1(_13744,_13750,_13884,_13884) :- [_13744,_13750]\=[_13256,_13258].
treat_star1(_13256,_13750,_13768,_13774) :- not_healthy(_13256,_13768,_13774).
treat_star1(_13256,_13258,_13768,_13774) :- healthy(_13256,_13768,_14138),not_sick(_13258,_14138,_13774).
not_treat(_13744,_13750,_13768,_13774) :- treat_star1(_13744,_13750,_13768,_13774).

doctor_star1(_14344,_14456,_14456) :- [_14344]\=[_14286].
doctor_star1(_14286,_14362,_14368) :- not_treat(_14286,_14298,_14362,_14368).
doctor_star1(_14286,_14362,_14368) :- treat(_14286,_14298,_14362,_14700),not_sick(_14298,_14700,_14368).
not_doctor(_14344,_14362,_14368) :- doctor_star1(_14344,_14362,_14368).

:- table death_ab/3.
death_ab(s(_14864),s(_14864,_14870),_15104) :- sick(_14864,[healthy(_14870)],_15104).

death(_15192,_15198,_15204,_15210) :- death_ab(_15192,_15198,_15286),produce_context(_15210,_15204,_15286).
death_star1(_15356,_15362,_15496,_15496) :- [_15356,_15362]\=[s(_14864),s(_14864,_14870)].
death_star1(s(_14864),s(_14864,_14870),_15380,_15386) :- not_sick(_14864,_15380,_15386).
death_star1(s(_14864),s(_14864,_14870),_15380,_15386) :- sick(_14864,_15380,_15798),not_healthy(_14870,_15798,_15386).
not_death(_15356,_15362,_15380,_15386) :- death_star1(_15356,_15362,_15380,_15386).

:- table false_ab/1.
false_star1(_16054,_16060) :- not_healthy(_15942,_16054,_16060).
not_false(_16054,_16060) :- false_star1(_16054,_16060).

:- table doctor_ab/2.
doctor_ab(_16360,_16534) :- treat(_16360,_16372,[],_16482),sick(_16372,_16482,_16534).

doctor(_16608,_16614,_16620) :- doctor_ab(_16608,_16680),produce_context(_16620,_16614,_16680).

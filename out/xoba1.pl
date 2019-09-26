alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_1018,_1034,_1034) :- alive(_1018).
not_alive(_1018,_1090,_1090) :- not alive(_1018).
sick(_1130,_1146,_1146) :- sick(_1130).
not_sick(_1130,_1202,_1202) :- not sick(_1130).
healthy(_2416,_2432,_2438) :- insert_abducible(healthy(_2416),_2432,_2438).
not_healthy(_2518,_2546,_2552) :- insert_abducible(not healthy(_2518),_2546,_2552).
lucky(_2632,_2648,_2654) :- insert_abducible(lucky(_2632),_2648,_2654).
not_lucky(_2734,_2762,_2768) :- insert_abducible(not lucky(_2734),_2762,_2768).
study_hard(_2848,_2864,_2870) :- insert_abducible(study_hard(_2848),_2864,_2870).
not_study_hard(_2950,_2978,_2984) :- insert_abducible(not study_hard(_2950),_2978,_2984).
traffic_jam(_3064,_3080,_3086) :- insert_abducible(traffic_jam(_3064),_3080,_3086).
not_traffic_jam(_3166,_3194,_3200) :- insert_abducible(not traffic_jam(_3166),_3194,_3200).
sleep_late(_3280,_3296,_3302) :- insert_abducible(sleep_late(_3280),_3296,_3302).
not_sleep_late(_3382,_3410,_3416) :- insert_abducible(not sleep_late(_3382),_3410,_3416).
always_present(_3582,_3588,_3594) :- transformApost(always_present(_3582)),!,always_present(_3582,_3588,_3594).
always_present(_3582,_3588,_3594) :- always_present_ab(_3582,_3654),produce_context(_3594,_3588,_3654).
always_present_star1(_3754,_3908,_3908) :- [_3754]\=[_3568].
always_present_star1(_3568,_3772,_3778) :- not_healthy(_3568,_3772,_3778).
always_present_star2(_3754,_4144,_4144) :- [_3754]\=[_3548].
always_present_star2(_3548,_3846,_3778) :- not_lucky(_3548,_3846,_3778).
not_always_present(_3754,_3772,_3778) :- copy_term([_3754],[_3834]),always_present_star1(_3834,_3772,_3846),copy_term([_3754],[_4070]),always_present_star2(_4070,_3846,_3778).

good_grades(_4392,_4398,_4404) :- transformApost(good_grades(_4392)),!,good_grades(_4392,_4398,_4404).
good_grades(_4392,_4398,_4404) :- good_grades_ab(_4392,_4464),produce_context(_4404,_4398,_4464).
good_grades_star1(_4564,_4718,_4718) :- [_4564]\=[_4378].
good_grades_star1(_4378,_4582,_4588) :- not_study_hard(_4378,_4582,_4588).
good_grades_star2(_4564,_4954,_4954) :- [_4564]\=[_4348].
good_grades_star2(_4348,_4656,_4588) :- not_always_present(_4348,_4656,_4588).
good_grades_star2(_4348,_4656,_4588) :- always_present(_4348,_4656,_5172),not_lucky(_4348,_5172,_4588).
not_good_grades(_4564,_4582,_4588) :- copy_term([_4564],[_4644]),good_grades_star1(_4644,_4582,_4656),copy_term([_4564],[_4880]),good_grades_star2(_4880,_4656,_4588).

late(_5370,_5376,_5382) :- transformApost(late(_5370)),!,late(_5370,_5376,_5382).
late(_5370,_5376,_5382) :- late_ab(_5370,_5442),produce_context(_5382,_5376,_5442).
late_star1(_5542,_5696,_5696) :- [_5542]\=[1].
late_star2(_5542,_5832,_5832) :- [_5542]\=[_5340].
late_star2(_5340,_5634,_5566) :- not_overslept(_5340,_5634,_5566).
late_star3(_5542,_6068,_6068) :- [_5542]\=[_5320].
late_star3(_5320,_5770,_5566) :- not_traffic_jam(_5320,_5770,_5566).
not_late(_5542,_5560,_5566) :- copy_term([_5542],[_5622]),late_star1(_5622,_5560,_5634),copy_term([_5542],[_5758]),late_star2(_5758,_5634,_5770),copy_term([_5542],[_5994]),late_star3(_5994,_5770,_5566).

overslept(_6290,_6296,_6302) :- transformApost(overslept(_6290)),!,overslept(_6290,_6296,_6302).
overslept(_6290,_6296,_6302) :- overslept_ab(_6290,_6362),produce_context(_6302,_6296,_6362).
overslept_star1(_6462,_6574,_6574) :- [_6462]\=[_6276].
overslept_star1(_6276,_6480,_6486) :- not_sleep_late(_6276,_6480,_6486).
not_overslept(_6462,_6480,_6486) :- overslept_star1(_6462,_6480,_6486).

treat(_6810,_6816,_6822,_6828) :- transformApost(treat(_6810,_6816)),!,treat(_6810,_6816,_6822,_6828).
treat(_6810,_6816,_6822,_6828) :- treat_ab(_6810,_6816,_6904),produce_context(_6828,_6822,_6904).
treat_star1(_7014,_7020,_7154,_7154) :- [_7014,_7020]\=[_6784,_6786].
treat_star1(_6784,_7020,_7038,_7044) :- not_healthy(_6784,_7038,_7044).
treat_star1(_6784,_6786,_7038,_7044) :- healthy(_6784,_7038,_7408),not_sick(_6786,_7408,_7044).
not_treat(_7014,_7020,_7038,_7044) :- treat_star1(_7014,_7020,_7038,_7044).

doctor(_7582,_7588,_7594) :- transformApost(doctor(_7582)),!,doctor(_7582,_7588,_7594).
doctor(_7582,_7588,_7594) :- doctor_ab(_7582,_7654),produce_context(_7594,_7588,_7654).
doctor_star1(_7754,_7866,_7866) :- [_7754]\=[_7556].
doctor_star1(_7556,_7772,_7778) :- not_treat(_7556,_7568,_7772,_7778).
doctor_star1(_7556,_7772,_7778) :- treat(_7556,_7568,_7772,_8110),not_sick(_7568,_8110,_7778).
not_doctor(_7754,_7772,_7778) :- doctor_star1(_7754,_7772,_7778).

death(_8284,_8290,_8296) :- transformApost(death(_8284)),!,death(_8284,_8290,_8296).
death(_8284,_8290,_8296) :- death_ab(_8284,_8356),produce_context(_8296,_8290,_8356).
death_star1(_8456,_8568,_8568) :- [_8456]\=[s(_8270)].
death_star1(s(_8270),_8474,_8480) :- not_sick(_8270,_8474,_8480).
not_death(_8456,_8474,_8480) :- death_star1(_8456,_8474,_8480).

false_star1(_8802,_8808) :- not_healthy(_8780,_8802,_8808).
not_false(_8802,_8808) :- false_star1(_8802,_8808).


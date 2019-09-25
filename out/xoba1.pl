alive(1).
alive(2).
alive(5).
sick(3).
sick(4).
alive(_4874,_4890,_4890) :- alive(_4874).
not_alive(_4874,_4946,_4946) :- not alive(_4874).
sick(_4986,_5002,_5002) :- sick(_4986).
not_sick(_4986,_5058,_5058) :- not sick(_4986).
healthy(_6212,_6228,_6234) :- insert_abducible(healthy(_6212),_6228,_6234).
not_healthy(_6314,_6342,_6348) :- insert_abducible(not healthy(_6314),_6342,_6348).
lucky(_6428,_6444,_6450) :- insert_abducible(lucky(_6428),_6444,_6450).
not_lucky(_6530,_6558,_6564) :- insert_abducible(not lucky(_6530),_6558,_6564).
study_hard(_6644,_6660,_6666) :- insert_abducible(study_hard(_6644),_6660,_6666).
not_study_hard(_6746,_6774,_6780) :- insert_abducible(not study_hard(_6746),_6774,_6780).
traffic_jam(_6860,_6876,_6882) :- insert_abducible(traffic_jam(_6860),_6876,_6882).
not_traffic_jam(_6962,_6990,_6996) :- insert_abducible(not traffic_jam(_6962),_6990,_6996).
sleep_late(_7076,_7092,_7098) :- insert_abducible(sleep_late(_7076),_7092,_7098).
not_sleep_late(_7178,_7206,_7212) :- insert_abducible(not sleep_late(_7178),_7206,_7212).
always_present(_7378,_7384,_7390) :- transformApost(always_present(_7378)),!,always_present(_7378,_7384,_7390).
always_present(_7378,_7384,_7390) :- always_present_ab(_7378,_7450),produce_context(_7390,_7384,_7450).
always_present_star1(_7550,_7704,_7704) :- [_7550]\=[_7364].
always_present_star1(_7364,_7568,_7574) :- not_healthy(_7364,_7568,_7574).
always_present_star2(_7550,_7928,_7928) :- [_7550]\=[_7344].
always_present_star2(_7344,_7642,_7574) :- not_lucky(_7344,_7642,_7574).
not_always_present(_7550,_7568,_7574) :- copy_term([_7550],[_7630]),always_present_star1(_7630,_7568,_7642),copy_term([_7550],[_7854]),always_present_star2(_7854,_7642,_7574).

good_grades(_8164,_8170,_8176) :- transformApost(good_grades(_8164)),!,good_grades(_8164,_8170,_8176).
good_grades(_8164,_8170,_8176) :- good_grades_ab(_8164,_8236),produce_context(_8176,_8170,_8236).
good_grades_star1(_8336,_8490,_8490) :- [_8336]\=[_8150].
good_grades_star1(_8150,_8354,_8360) :- not_study_hard(_8150,_8354,_8360).
good_grades_star2(_8336,_8714,_8714) :- [_8336]\=[_8120].
good_grades_star2(_8120,_8428,_8360) :- not_always_present(_8120,_8428,_8360).
good_grades_star2(_8120,_8428,_8360) :- not_lucky(_8120,_8428,_8360).
not_good_grades(_8336,_8354,_8360) :- copy_term([_8336],[_8416]),good_grades_star1(_8416,_8354,_8428),copy_term([_8336],[_8640]),good_grades_star2(_8640,_8428,_8360).

late(_9050,_9056,_9062) :- transformApost(late(_9050)),!,late(_9050,_9056,_9062).
late(_9050,_9056,_9062) :- late_ab(_9050,_9122),produce_context(_9062,_9056,_9122).
late_star1(_9222,_9376,_9376) :- [_9222]\=[1].
late_star2(_9222,_9512,_9512) :- [_9222]\=[_9020].
late_star2(_9020,_9314,_9246) :- not_overslept(_9020,_9314,_9246).
late_star3(_9222,_9736,_9736) :- [_9222]\=[_9000].
late_star3(_9000,_9450,_9246) :- not_traffic_jam(_9000,_9450,_9246).
not_late(_9222,_9240,_9246) :- copy_term([_9222],[_9302]),late_star1(_9302,_9240,_9314),copy_term([_9222],[_9438]),late_star2(_9438,_9314,_9450),copy_term([_9222],[_9662]),late_star3(_9662,_9450,_9246).

overslept(_9946,_9952,_9958) :- transformApost(overslept(_9946)),!,overslept(_9946,_9952,_9958).
overslept(_9946,_9952,_9958) :- overslept_ab(_9946,_10018),produce_context(_9958,_9952,_10018).
overslept_star1(_10118,_10230,_10230) :- [_10118]\=[_9932].
overslept_star1(_9932,_10136,_10142) :- not_sleep_late(_9932,_10136,_10142).
not_overslept(_10118,_10136,_10142) :- overslept_star1(_10118,_10136,_10142).

treat(_10454,_10460,_10466,_10472) :- transformApost(treat(_10454,_10460)),!,treat(_10454,_10460,_10466,_10472).
treat(_10454,_10460,_10466,_10472) :- treat_ab(_10454,_10460,_10548),produce_context(_10472,_10466,_10548).
treat_star1(_10658,_10664,_10798,_10798) :- [_10658,_10664]\=[_10428,_10430].
treat_star1(_10428,_10664,_10682,_10688) :- not_healthy(_10428,_10682,_10688).
treat_star1(_10658,_10430,_10682,_10688) :- not_sick(_10430,_10682,_10688).
not_treat(_10658,_10664,_10682,_10688) :- treat_star1(_10658,_10664,_10682,_10688).

death(_11138,_11144,_11150) :- transformApost(death(_11138)),!,death(_11138,_11144,_11150).
death(_11138,_11144,_11150) :- death_ab(_11138,_11210),produce_context(_11150,_11144,_11210).
death_star1(_11310,_11422,_11422) :- [_11310]\=[s(_11124)].
death_star1(_11310,_11328,_11334) :- not_sick(_11124,_11328,_11334).
not_death(_11310,_11328,_11334) :- death_star1(_11310,_11328,_11334).

false_star1(_11644,_11650) :- not_treat(_11616,_11618,_11644,_11650).
false_star1(_11644,_11650) :- not_healthy(_11618,_11644,_11650).
not_false(_11644,_11650) :- false_star1(_11644,_11650).


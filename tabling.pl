:- table good_grades_ab/1.
good_grades_ab(_998,[study_hard(_998)]).
good_grades_ab(_968,_1258) :- always_present(_968,[lucky(_968)],_1258).
:- table always_present_ab/1.
always_present_ab(_2232,[healthy(_2232)]).
always_present_ab(_2212,[lucky(_2212)]).

:- table late_ab/1.
late_ab(1,[]).
late_ab(_990,_1122) :- overslept(_990,[],_1122).
late_ab(_970,[traffic_jam(_970)]).
:- table overslept_ab/1.
overslept_ab(_2208,[sleep_late(_2208)]).

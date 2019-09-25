:- table late_ab/1.
late_ab(1,[]).
late_ab(_4828,_4960) :- overslept(_4828,[],_4960).
late_ab(_4808,[traffic_jam(_4808)]).
:- table overslept_ab/1.
overslept_ab(_6018,[sleep_late(_6018)]).
:- table always_present_ab/1.
always_present_ab(_5110,[healthy(_5110)]).
always_present_ab(_5090,[lucky(_5090)]).

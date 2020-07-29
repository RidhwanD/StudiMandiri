q(_8906,_8922,_8928) :- insert_abducible(q(_8906),_8922,_8928).
not_q(_9008,_9036,_9042) :- insert_abducible(not q(_9008),_9036,_9042).
r(_9122,_9138,_9144) :- insert_abducible(r(_9122),_9138,_9144).
not_r(_9224,_9252,_9258) :- insert_abducible(not r(_9224),_9252,_9258).
p_ab([q(0),not q(1)]).

:- table p_ab/1.
p(_9536,_9542) :- p_ab(_9584),produce_context(_9542,_9536,_9584).
p_star1(_9650,_9656) :- not_q(0,_9650,_9656).
p_star1(_9650,_9656) :- q(0,_9650,_9904),q(1,_9904,_9656).
not_p(_9650,_9656) :- p_star1(_9650,_9656).

false_star1 :- true,assertICs([q(_10042),r(_10042)]).

not_false :- false_star1.
:- not_false.

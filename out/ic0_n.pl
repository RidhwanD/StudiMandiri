a(_14936,_14952,_14958) :- insert_abducible(a(_14936),_14952,_14958).
not_a(_15038,_15066,_15072) :- insert_abducible(not a(_15038),_15066,_15072).
b(_15152,_15168,_15174) :- insert_abducible(b(_15152),_15168,_15174).
not_b(_15254,_15282,_15288) :- insert_abducible(not b(_15254),_15282,_15288).
c(_15368,_15384,_15390) :- insert_abducible(c(_15368),_15384,_15390).
not_c(_15470,_15498,_15504) :- insert_abducible(not c(_15470),_15498,_15504).
p_ab(_15636,[a(_15636)]).

:- table p_ab/2.
p(_15764,_15770,_15776) :- p_ab(_15764,_15836),produce_context(_15776,_15770,_15836).
p_star1(_15898,_16010,_16010) :- [_15898]\=[_15636].
p_star1(_15636,_15916,_15922) :- not_a(_15636,_15916,_15922).
not_p(_15898,_15916,_15922) :- p_star1(_15898,_15916,_15922).

r_ab(_16250) :- p(1,[],_16250).

:- table r_ab/1.
r(_16322,_16328) :- r_ab(_16370),produce_context(_16328,_16322,_16370).
r_star1(_16436,_16442) :- not_p(1,_16436,_16442).
not_r(_16436,_16442) :- r_star1(_16436,_16442).


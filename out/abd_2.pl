q(_6196,_6212,_6218) :- insert_abducible(q(_6196),_6212,_6218).
not_q(_6298,_6326,_6332) :- insert_abducible(not q(_6298),_6326,_6332).
r(_6412,_6428,_6434) :- insert_abducible(r(_6412),_6428,_6434).
not_r(_6514,_6542,_6548) :- insert_abducible(not r(_6514),_6542,_6548).
:- table p_ab/2.
p_ab(1,[]).

p_ab(_6696,[q(_6696)]).

p_ab(_6676,[r(_6676)]).

p(_7032,_7038,_7044) :- p_ab(_7032,_7104),produce_context(_7044,_7038,_7104).
p_star1(_7166,_7320,_7320) :- [_7166]\=[1].
p_star2(_7166,_7456,_7456) :- [_7166]\=[_6696].
p_star2(_6696,_7258,_7190) :- not_q(_6696,_7258,_7190).
p_star3(_7166,_7692,_7692) :- [_7166]\=[_6676].
p_star3(_6676,_7394,_7190) :- not_r(_6676,_7394,_7190).
not_p(_7166,_7184,_7190) :- copy_term([_7166],[_7246]),p_star1(_7246,_7184,_7258),copy_term([_7166],[_7382]),p_star2(_7382,_7258,_7394),copy_term([_7166],[_7618]),p_star3(_7618,_7394,_7190).

:- table false_ab/1.
false_star1(_7968,_7974) :- not_q(_7892,_7968,_7974).
not_false(_7968,_7974) :- false_star1(_7968,_7974).


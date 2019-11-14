q(_4960,_4976,_4982) :- insert_abducible(q(_4960),_4976,_4982).
not_q(_5062,_5090,_5096) :- insert_abducible(not q(_5062),_5090,_5096).
r(_5176,_5192,_5198) :- insert_abducible(r(_5176),_5192,_5198).
not_r(_5278,_5306,_5312) :- insert_abducible(not r(_5278),_5306,_5312).
false_star1(_5468,_5474) :- q(_5442,[],_5722),r(_5442,_5722,_5472),validate_negation(_5472,_5468,_5474).
not_false(_5468,_5474) :- false_star1(_5468,_5474).

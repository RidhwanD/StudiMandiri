p(_4784,_4790) :- transformApost(p),!,p(_4784,_4790).
p(_4784,_4790) :- p_ab(_4832),produce_context(_4790,_4784,_4832).
p_star1(_4932,_4938) :- not_q(_4932,_4938).
not_p(_4932,_4938) :- p_star1(_4932,_4938).

q(_5154,_5160) :- transformApost(q),!,q(_5154,_5160).
q(_5154,_5160) :- q_ab(_5202),produce_context(_5160,_5154,_5202).
q_star1(_5302,_5308) :- not_p(_5302,_5308).
not_q(_5302,_5308) :- q_star1(_5302,_5308).


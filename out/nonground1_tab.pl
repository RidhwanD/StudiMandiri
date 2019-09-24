false_star_1(A,A) :- 
    false.
false_star_1(B,C) :- 
    dual(1,false,B,C).
not_false(B,C) :- 
    true,false_star_1(B,C).

r_ab(D,[a(D)]).
:- table r_ab/2.
r(E,F,G) :- 
    r_ab(E,H),produce_context(G,F,H).
r_star_1(E,I,I) :- 
    [E]\=[D].
r_star_1(J,K,L) :- 
    dual(1,r(J),K,L).
not_r(E,K,L) :- 
    copy_term([E],[J]),r_star_1(J,K,L).

q_ab(1,[]).
:- table q_ab/2.
q(M,N,O) :- 
    q_ab(M,P),produce_context(O,N,P).
q_star_1(M,Q,Q) :- 
    [M]\=[1].
not_q(M,R,S) :- 
    copy_term([M],[T]),q_star_1(T,R,S).

a(U,V,W) :- 
    insert_abducible(a(U),V,W).
a_star(X,Y,Z) :- 
    insert_abducible(not a(X),Y,Z).

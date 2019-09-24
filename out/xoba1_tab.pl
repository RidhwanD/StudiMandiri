good_grades_ab(A,[study_hard(A)]).
good_grades_ab(B,C) :- 
    always_present(B,[lucky(B)],C).
:- table good_grades_ab/2.
good_grades(D,E,F) :- 
    good_grades_ab(D,G),produce_context(F,E,G).
good_grades_star_1(D,H,H) :- 
    [D]\=[A].
good_grades_star_1(I,J,K) :- 
    dual(1,good_grades(I),J,K).
good_grades_star_2(D,L,L) :- 
    [D]\=[B].
good_grades_star_2(M,K,N) :- 
    dual(2,good_grades(M),K,N).
not_good_grades(D,J,N) :- 
    copy_term([D],[I]),good_grades_star_1(I,J,K),copy_term([D],[M]),good_grades_star_2(M,K,N).

always_present_ab(O,[healthy(O)]).
:- table always_present_ab/2.
always_present(P,Q,R) :- 
    always_present_ab(P,S),produce_context(R,Q,S).
always_present_star_1(P,T,T) :- 
    [P]\=[O].
always_present_star_1(U,V,W) :- 
    dual(1,always_present(U),V,W).
not_always_present(P,V,W) :- 
    copy_term([P],[U]),always_present_star_1(U,V,W).

alive_ab(X,[]).
:- table alive_ab/2.
alive(Y,Z,A1) :- 
    alive_ab(Y,B1),produce_context(A1,Z,B1).
alive_star_1(Y,C1,C1) :- 
    [Y]\=[X].
not_alive(Y,D1,E1) :- 
    copy_term([Y],[F1]),alive_star_1(F1,D1,E1).

not_false(G1,G1).

healthy(H1,I1,J1) :- 
    insert_abducible(healthy(H1),I1,J1).
healthy_star(K1,L1,M1) :- 
    insert_abducible(not healthy(K1),L1,M1).
lucky(N1,O1,P1) :- 
    insert_abducible(lucky(N1),O1,P1).
lucky_star(Q1,R1,S1) :- 
    insert_abducible(not lucky(Q1),R1,S1).
study_hard(T1,U1,V1) :- 
    insert_abducible(study_hard(T1),U1,V1).
study_hard_star(W1,X1,Y1) :- 
    insert_abducible(not study_hard(W1),X1,Y1).

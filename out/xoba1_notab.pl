good_grades_ab(A,[study_hard(A)]).
good_grades_ab(B,C) :- 
    always_present(B,[lucky(B)],C).
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
always_present(P,Q,R) :- 
    always_present_ab(P,S),produce_context(R,Q,S).
always_present_star_1(P,T,T) :- 
    [P]\=[O].
always_present_star_1(U,V,W) :- 
    dual(1,always_present(U),V,W).
not_always_present(P,V,W) :- 
    copy_term([P],[U]),always_present_star_1(U,V,W).

not_false(X,X).

healthy(Y,Z,A1) :- 
    insert_abducible(healthy(Y),Z,A1).
healthy_star(B1,C1,D1) :- 
    insert_abducible(not healthy(B1),C1,D1).
lucky(E1,F1,G1) :- 
    insert_abducible(lucky(E1),F1,G1).
lucky_star(H1,I1,J1) :- 
    insert_abducible(not lucky(H1),I1,J1).
study_hard(K1,L1,M1) :- 
    insert_abducible(study_hard(K1),L1,M1).
study_hard_star(N1,O1,P1) :- 
    insert_abducible(not study_hard(N1),O1,P1).

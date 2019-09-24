getting_good_grades_ab(A) :- 
    studying_hard([],A).
getting_good_grades_ab(B) :- 
    always_present_in_class([getting_lucky],B).
:- table getting_good_grades_ab/1 as intern.
getting_good_grades(C,D) :- 
    (getting_good_grades_ab(E),produce_context(D,C,E)).
getting_good_grades_star_1(F,F) :- 
    false.
getting_good_grades_star_1(G,H) :- 
    dual(1,getting_good_grades,G,H).
getting_good_grades_star_2(I,I) :- 
    false.
getting_good_grades_star_2(H,J) :- 
    dual(2,getting_good_grades,H,J).
not_getting_good_grades(G,J) :- 
    (true,getting_good_grades_star_1(G,H),true,getting_good_grades_star_2(H,J)).

always_present_in_class_ab([healthy]).
:- table always_present_in_class_ab/1 as intern.
always_present_in_class(K,L) :- 
    (always_present_in_class_ab(M),produce_context(L,K,M)).
always_present_in_class_star_1(N,N) :- 
    false.
always_present_in_class_star_1(O,P) :- 
    dual(1,always_present_in_class,O,P).
not_always_present_in_class(O,P) :- 
    (true,always_present_in_class_star_1(O,P)).

studying_hard_ab([have_study_notes]).
:- table studying_hard_ab/1 as intern.
studying_hard(Q,R) :- 
    (studying_hard_ab(S),produce_context(R,Q,S)).
studying_hard_star_1(T,T) :- 
    false.
studying_hard_star_1(U,V) :- 
    dual(1,studying_hard,U,V).
not_studying_hard(U,V) :- 
    (true,studying_hard_star_1(U,V)).

not_false(W,W).

have_study_notes(X,Y) :- 
    insert_abducible(have_study_notes,X,Y).
have_study_notes_star(Z,A1) :- 
    insert_abducible(not have_study_notes,Z,A1).
healthy(B1,C1) :- 
    insert_abducible(healthy,B1,C1).
healthy_star(D1,E1) :- 
    insert_abducible(not healthy,D1,E1).
getting_lucky(F1,G1) :- 
    insert_abducible(getting_lucky,F1,G1).
getting_lucky_star(H1,I1) :- 
    insert_abducible(not getting_lucky,H1,I1).

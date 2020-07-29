drug_induced(_7318,_7320,_7322,_7350,_7356) :- insert_abducible(drug_induced(_7318,_7320,_7322),_7350,_7356).
not_drug_induced(_7452,_7454,_7456,_7496,_7502) :- insert_abducible(not drug_induced(_7452,_7454,_7456),_7496,_7502).
drug_inhibited(_7598,_7600,_7602,_7630,_7636) :- insert_abducible(drug_inhibited(_7598,_7600,_7602),_7630,_7636).
not_drug_inhibited(_7732,_7734,_7736,_7776,_7782) :- insert_abducible(not drug_inhibited(_7732,_7734,_7736),_7776,_7782).
false_star1(_8210,_8216) :- true,validate_negation([drug_induced(phase0,drug,_7952),drug_inhibited(phase0,drug,_7952)],_8210,_8216).

false_star2(_8422,_8428) :- true,validate_negation([drug_induced(phase0,drug,apoptosis)],_8422,_8428).

not_false(_7982,_7988) :- copy_term([],[]),false_star1(_7982,_8042),copy_term([],[]),false_star2(_8042,_7988).


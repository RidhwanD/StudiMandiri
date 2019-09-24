:- import intern_term/2 from machine.
exists(phase0,drug).
possible_drug_effect(A,inhibit,B).
possible_drug_effect(C,induce,D).
absent(calpain).
absent(bax).
absent(cytoc).
absent(erstress).
absent(caspase3).
absent(nFKB).
absent(bcl_xl).
reaction(rct(tNF_FasL_Trail,rIP1_TRAF2_CIAP_TRADD_FADD)).
reaction(rct(rIP1_TRAF2_CIAP_TRADD_FADD,nIK)).
reaction(rct(nIK,ikBA_nFKB)).
reaction(rct(ikBA_nFKB,nFKB)).
reaction(rct(nFKB,apoptosis)).
reaction(rct(rIP1_TRAF2_CIAP_TRADD_FADD,tAK1)).
reaction(rct(tAK1,iKKa_IKKb_iKKc)).
reaction(rct(iKKa_IKKb_iKKc,ikBA_nFKB)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase3)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase6)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase7)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase3)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase6)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase7)).
reaction(rct(erstress,ca2)).
reaction(rct(ca2,calpain)).
reaction(rct(calpain,caspase12)).
reaction(rct(caspase12,caspase9)).
reaction(rct(caspase9,caspase3)).
reaction(rct(caspase9,caspase6)).
reaction(rct(caspase9,caspase7)).
reaction(rct(apaf1_Caspase9,caspase3)).
reaction(rct(apaf1_Caspase9,caspase6)).
reaction(rct(apaf1_Caspase9,caspase7)).
reaction(rct(caspase7,caspase3)).
reaction(rct(caspase7,caspase6)).
reaction(rct(caspase3,rock)).
reaction(rct(caspase6,rock)).
reaction(rct(caspase7,rock)).
reaction(rct(rock,apoptosis)).
reaction(rct(caspase3,icad_cad)).
reaction(rct(caspase6,icad_cad)).
reaction(rct(caspase7,icad_cad)).
reaction(rct(icad_cad,cad)).
reaction(rct(cad,apoptosis)).
reaction(rct(fasl,traf2_rip_ciap_fadd_tradd)).
reaction(rct(traf2_rip_ciap_fadd_tradd,jnk)).
reaction(rct(jnk,p53)).
reaction(rct(jnk,cjun)).
reaction(rct(cjun,bim)).
reaction(rct(cellcycle,cdc2)).
reaction(rct(cdc2,bad)).
reaction(rct(foxo1,p53)).
reaction(rct(survival_factors,pl3k)).
reaction(rct(pl3k,akt)).
reaction(rct(akt,s1433)).
reaction(rct(pl3k,p70_s6k)).
reaction(rct(survival_factors,erk1_2)).
reaction(rct(erk1_2,p90rsk)).
reaction(rct(survival_factors,pkc)).
reaction(rct(pkc,p90rsk)).
reaction(rct(survival_factors,pka)).
reaction(rct(cancineurin,bad)).
reaction(rct(fasl,fas_cd95)).
reaction(rct(fas_cd95,traf2_rip_casp8_fadd_tradd)).
reaction(rct(fas_cd95,traf2_rip_casp10_fadd_tradd)).
reaction(rct(traf2_rip_casp10_fadd_tradd,bid)).
reaction(rct(bid,tbid)).
reaction(rct(tbid,bax)).
reaction(rct(bax,cytoc)).
reaction(rct(bax,arts)).
reaction(rct(bax,htra2)).
reaction(rct(bax,smacdiablo)).
reaction(rct(bax,aif)).
reaction(rct(bax,endo_g)).
reaction(rct(tbid,bak)).
reaction(rct(bak,cytoc)).
reaction(rct(bak,arts)).
reaction(rct(bak,htra2)).
reaction(rct(bak,smacdiablo)).
reaction(rct(bak,aif)).
reaction(rct(bak,endo_g)).
reaction(rct(bim_lc8,bim)).
reaction(rct(lc8_bmt,bcl2_bmt)).
reaction(rct(death_stimuli,jnk)).
reaction(rct(jnk,hrk_dp5)).
reaction(rct(jnk,bax)).
reaction(rct(dnadamage,caspase2_raiid_pidd)).
reaction(rct(dnadamage,ing2)).
reaction(rct(dnadamage,atm_atr)).
reaction(rct(caspase2_raiid_pidd,bax)).
reaction(rct(ing2,p53)).
reaction(rct(p53,caspase2_raiid_pidd)).
reaction(rct(p53,bax)).
reaction(rct(p53,noxa)).
reaction(rct(p53,mcl1_puma)).
reaction(rct(nad,sirt2)).
reaction(rct(endo_g,apoptosis)).
reaction(rct(aif,apoptosis)).
reaction(rct(cytoc,apaf1_Caspase9)).
reaction(rct(hsp60,caspase3)).
reaction(rct(hsp60,caspase6)).
reaction(rct(hsp60,caspase7)).
reaction(rct(caspase3,apoptosis)).
reaction(rct(caspase6,apoptosis)).
reaction(rct(caspase7,apoptosis)).
inhibitor(flip,itch).
inhibitor(traf2_rip_casp8_fadd_tradd,flip).
inhibitor(traf2_rip_casp10_fadd_tradd,flip).
inhibitor(bid,traf2_rip_casp8_fadd_tradd).
inhibitor(bid,traf2_rip_casp10_fadd_tradd).
inhibitor(p53,sir2).
inhibitor(foxo1,s1433).
inhibitor(s1433,jnk).
inhibitor(bad,p70_s6k).
inhibitor(bad,p90rsk).
inhibitor(bad,s1433).
inhibitor(bad,pka).
inhibitor(bcl_xl,bad).
inhibitor(apaf1_Caspase9,bcl_xl).
inhibitor(cytoc,bcl_xl).
inhibitor(arts,bcl_xl).
inhibitor(htra2,bcl_xl).
inhibitor(smacdiablo,bcl_xl).
inhibitor(aif,bcl_xl).
inhibitor(endo_g,bcl_xl).
inhibitor(bcl_xl,tbid).
inhibitor(mcl_1,mule).
inhibitor(bim,mcl_1).
inhibitor(bcl2_bmt,bim).
inhibitor(cytoc,bcl2_bmt).
inhibitor(arts,bcl2_bmt).
inhibitor(htra2,bcl2_bmt).
inhibitor(smacdiablo,bcl2_bmt).
inhibitor(aif,bcl2_bmt).
inhibitor(endo_g,bcl2_bmt).
inhibitor(caspase2_raiid_pidd,camkll).
inhibitor(bcl2,hrk_dp5).
inhibitor(cytoc,bcl2).
inhibitor(arts,bcl2).
inhibitor(htra2,bcl2).
inhibitor(smacdiablo,bcl2).
inhibitor(aif,bcl2).
inhibitor(endo_g,bcl2).
inhibitor(bax,bcl2).
inhibitor(bcl2,noxa).
inhibitor(bcl2,mcl1_puma).
inhibitor(mcl1_puma,mule).
inhibitor(p53,mule).
inhibitor(p53,sirt2).
inhibitor(xiap,smacdiablo).
inhibitor(caspase7,xiap).
inhibitor(caspase3,xiap).
inhibitor(caspase6,xiap).
inhibitor(xiap,htra2).
inhibitor(xiap,arts).
oncogene(pl3k).
oncogene(akt).
oncogene(tNF_FasL_Trail).
tumor_suppressor(bax).
tumor_suppressor(p53).
tumor_suppressor(bcl2).
tumor_suppressor(atm_atr).

exists(E,F,G,G) :- 
    exists(E,F).
not_exists(E,F,H,H) :- 
    not exists(E,F).
possible_drug_effect(I,J,K,L,L) :- 
    possible_drug_effect(I,J,K).
not_possible_drug_effect(I,J,K,M,M) :- 
    not possible_drug_effect(I,J,K).
absent(N,O,O) :- 
    absent(N).
not_absent(N,P,P) :- 
    not absent(N).
reaction(Q,R,R) :- 
    reaction(Q).
not_reaction(Q,S,S) :- 
    not reaction(Q).
inhibitor(T,U,V,V) :- 
    inhibitor(T,U).
not_inhibitor(T,U,W,W) :- 
    not inhibitor(T,U).
oncogene(X,Y,Y) :- 
    oncogene(X).
not_oncogene(X,Z,Z) :- 
    not oncogene(X).
tumor_suppressor(A1,B1,B1) :- 
    tumor_suppressor(A1).
not_tumor_suppressor(A1,C1,C1) :- 
    not tumor_suppressor(A1).

false_star_1(D1,D1) :- 
    false.
false_star_1(E1,F1) :- 
    dual(1,false,E1,F1).
false_star_2(G1,G1) :- 
    false.
false_star_2(F1,H1) :- 
    dual(2,false,F1,H1).
not_false(E1,H1) :- 
    (true,false_star_1(E1,F1),true,false_star_2(F1,H1)).

externally_inhibited_ab(I1,J1,K1) :- 
    (exists(I1,L1,[drug_inhibited(I1,L1,J1)],M1),possible_drug_effect(L1,inhibit,J1,M1,K1)).
:- table externally_inhibited_ab/3.
externally_inhibited(N1,O1,P1,Q1) :- 
    (externally_inhibited_ab(N1,O1,R1),produce_context(Q1,P1,R1)).
externally_inhibited_star_1(N1,O1,S1,S1) :- 
    [N1,O1] \= [I1,J1].
externally_inhibited_star_1(T1,U1,V1,W1) :- 
    dual(1,externally_inhibited(T1,U1),V1,W1).
not_externally_inhibited(N1,O1,V1,W1) :- 
    (copy_term([N1,O1],[T1,U1]),externally_inhibited_star_1(T1,U1,V1,W1)).

drug_active_ab(X1,Y1,Z1) :- 
    (exists(X1,A2,[drug_induced(X1,A2,Y1)],B2),possible_drug_effect(A2,induce,Y1,B2,Z1)).
:- table drug_active_ab/3.
drug_active(C2,D2,E2,F2) :- 
    (drug_active_ab(C2,D2,G2),produce_context(F2,E2,G2)).
drug_active_star_1(C2,D2,H2,H2) :- 
    [C2,D2] \= [X1,Y1].
drug_active_star_1(I2,J2,K2,L2) :- 
    dual(1,drug_active(I2,J2),K2,L2).
not_drug_active(C2,D2,K2,L2) :- 
    (copy_term([C2,D2],[I2,J2]),drug_active_star_1(I2,J2,K2,L2)).

externally_induced_ab(M2,N2,O2) :- 
    drug_active(M2,N2,[],O2).
:- table externally_induced_ab/3.
externally_induced(P2,Q2,R2,S2) :- 
    (externally_induced_ab(P2,Q2,T2),produce_context(S2,R2,T2)).
externally_induced_star_1(P2,Q2,U2,U2) :- 
    [P2,Q2] \= [M2,N2].
externally_induced_star_1(V2,W2,X2,Y2) :- 
    dual(1,externally_induced(V2,W2),X2,Y2).
not_externally_induced(P2,Q2,X2,Y2) :- 
    (copy_term([P2,Q2],[V2,W2]),externally_induced_star_1(V2,W2,X2,Y2)).

inactive_ab(Z2,A3,B3) :- 
    inhibited(Z2,A3,[],B3).
inactive_ab(C3,D3,E3) :- 
    (not_active(C3,D3,[],F3),reaction(rct(G3,D3),F3,H3),inactive(C3,G3,H3,E3)).
:- table inactive_ab/3.
inactive(I3,J3,K3,L3) :- 
    (inactive_ab(I3,J3,M3),produce_context(L3,K3,M3)).
inactive_star_1(I3,J3,N3,N3) :- 
    [I3,J3] \= [Z2,A3].
inactive_star_1(O3,P3,Q3,R3) :- 
    dual(1,inactive(O3,P3),Q3,R3).
inactive_star_2(I3,J3,S3,S3) :- 
    [I3,J3] \= [C3,D3].
inactive_star_2(T3,U3,R3,V3) :- 
    dual(2,inactive(T3,U3),R3,V3).
not_inactive(I3,J3,Q3,V3) :- 
    (copy_term([I3,J3],[O3,P3]),inactive_star_1(O3,P3,Q3,R3),copy_term([I3,J3],[T3,U3]),inactive_star_2(T3,U3,R3,V3)).

normally_inhibited_ab(W3,X3,Y3) :- 
    (not_absent(X3,[],Z3),inhibitor(X3,A4,Z3,B4),active(W3,A4,B4,Y3)).
:- table normally_inhibited_ab/3.
normally_inhibited(C4,D4,E4,F4) :- 
    (normally_inhibited_ab(C4,D4,G4),produce_context(F4,E4,G4)).
normally_inhibited_star_1(C4,D4,H4,H4) :- 
    [C4,D4] \= [W3,X3].
normally_inhibited_star_1(I4,J4,K4,L4) :- 
    dual(1,normally_inhibited(I4,J4),K4,L4).
not_normally_inhibited(C4,D4,K4,L4) :- 
    (copy_term([C4,D4],[I4,J4]),normally_inhibited_star_1(I4,J4,K4,L4)).

inhibited_ab(M4,N4,O4) :- 
    (not_absent(N4,[],P4),normally_inhibited(M4,N4,P4,O4)).
inhibited_ab(Q4,R4,S4) :- 
    (not_absent(R4,[],T4),externally_inhibited(Q4,R4,T4,S4)).
:- table inhibited_ab/3.
inhibited(U4,V4,W4,X4) :- 
    (inhibited_ab(U4,V4,Y4),produce_context(X4,W4,Y4)).
inhibited_star_1(U4,V4,Z4,Z4) :- 
    [U4,V4] \= [M4,N4].
inhibited_star_1(A5,B5,C5,D5) :- 
    dual(1,inhibited(A5,B5),C5,D5).
inhibited_star_2(U4,V4,E5,E5) :- 
    [U4,V4] \= [Q4,R4].
inhibited_star_2(F5,G5,D5,H5) :- 
    dual(2,inhibited(F5,G5),D5,H5).
not_inhibited(U4,V4,C5,H5) :- 
    (copy_term([U4,V4],[A5,B5]),inhibited_star_1(A5,B5,C5,D5),copy_term([U4,V4],[F5,G5]),inhibited_star_2(F5,G5,D5,H5)).

normally_active_ab(I5,J5,K5) :- 
    (not_absent(J5,[],L5),reaction(rct(M5,J5),L5,N5),active(I5,M5,N5,K5)).
:- table normally_active_ab/3.
normally_active(O5,P5,Q5,R5) :- 
    (normally_active_ab(O5,P5,S5),produce_context(R5,Q5,S5)).
normally_active_star_1(O5,P5,T5,T5) :- 
    [O5,P5] \= [I5,J5].
normally_active_star_1(U5,V5,W5,X5) :- 
    dual(1,normally_active(U5,V5),W5,X5).
not_normally_active(O5,P5,W5,X5) :- 
    (copy_term([O5,P5],[U5,V5]),normally_active_star_1(U5,V5,W5,X5)).

active_ab(Y5,Z5,A6) :- 
    (not_absent(Z5,[],B6),not_inhibited(Y5,Z5,B6,C6),normally_active(Y5,Z5,C6,A6)).
active_ab(D6,E6,F6) :- 
    (not_absent(E6,[],G6),externally_induced(D6,E6,G6,F6)).
:- table active_ab/3.
active(H6,I6,J6,K6) :- 
    (active_ab(H6,I6,L6),produce_context(K6,J6,L6)).
active_star_1(H6,I6,M6,M6) :- 
    [H6,I6] \= [Y5,Z5].
active_star_1(N6,O6,P6,Q6) :- 
    dual(1,active(N6,O6),P6,Q6).
active_star_2(H6,I6,R6,R6) :- 
    [H6,I6] \= [D6,E6].
active_star_2(S6,T6,Q6,U6) :- 
    dual(2,active(S6,T6),Q6,U6).
not_active(H6,I6,P6,U6) :- 
    (copy_term([H6,I6],[N6,O6]),active_star_1(N6,O6,P6,Q6),copy_term([H6,I6],[S6,T6]),active_star_2(S6,T6,Q6,U6)).

not_not(V6,W6,W6).
not_reaction(X6,Y6,Y6).
not_inhibitor(Z6,A7,B7,B7).
not_exists(C7,D7,E7,E7).
not_possible_drug_effect(F7,G7,H7,I7,I7).
drug_induced(J7,K7,L7,M7,N7) :- 
    insert_abducible(drug_induced(J7,K7,L7),M7,N7).
drug_induced_star(O7,P7,Q7,R7,S7) :- 
    insert_abducible(not drug_induced(O7,P7,Q7),R7,S7).
drug_inhibited(T7,U7,V7,W7,X7) :- 
    insert_abducible(drug_inhibited(T7,U7,V7),W7,X7).
drug_inhibited_star(Y7,Z7,A8,B8,C8) :- 
    insert_abducible(not drug_inhibited(Y7,Z7,A8),B8,C8).

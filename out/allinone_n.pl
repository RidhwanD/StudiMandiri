exists(phase0,drug).
possible_drug_effect(_4714,inhibit,_4718).
possible_drug_effect(_4788,induce,_4792).
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
exists(_7256,_7258,_7280,_7280) :- exists(_7256,_7258).
not_exists(_7256,_7258,_7350,_7350) :- not exists(_7256,_7258).
possible_drug_effect(_7444,_7446,_7448,_7476,_7476) :- possible_drug_effect(_7444,_7446,_7448).
not_possible_drug_effect(_7444,_7446,_7448,_7560,_7560) :- not possible_drug_effect(_7444,_7446,_7448).
absent(_7676,_7692,_7692) :- absent(_7676).
not_absent(_7676,_7748,_7748) :- not absent(_7676).
reaction(_7820,_7836,_7836) :- reaction(_7820).
not_reaction(_7820,_7892,_7892) :- not reaction(_7820).
inhibitor(_7964,_7966,_7988,_7988) :- inhibitor(_7964,_7966).
not_inhibitor(_7964,_7966,_8058,_8058) :- not inhibitor(_7964,_7966).
oncogene(_8152,_8168,_8168) :- oncogene(_8152).
not_oncogene(_8152,_8224,_8224) :- not oncogene(_8152).
tumor_suppressor(_8296,_8312,_8312) :- tumor_suppressor(_8296).
not_tumor_suppressor(_8296,_8368,_8368) :- not tumor_suppressor(_8296).
drug_induced(_9826,_9828,_9830,_9858,_9864) :- insert_abducible(drug_induced(_9826,_9828,_9830),_9858,_9864).
not_drug_induced(_9960,_9962,_9964,_10004,_10010) :- insert_abducible(not drug_induced(_9960,_9962,_9964),_10004,_10010).
drug_inhibited(_10106,_10108,_10110,_10138,_10144) :- insert_abducible(drug_inhibited(_10106,_10108,_10110),_10138,_10144).
not_drug_inhibited(_10240,_10242,_10244,_10284,_10290) :- insert_abducible(not drug_inhibited(_10240,_10242,_10244),_10284,_10290).
active_ab(_10478,_10480,_10788) :- not_absent(_10480,[],_10632),not_inhibited(_10478,_10480,_10632,_10730),normally_active(_10478,_10480,_10730,_10788).

active_ab(_10440,_10442,_11022) :- not_absent(_10442,[],_10972),externally_induced(_10440,_10442,_10972,_11022).

:- table active_ab/3.
active(_11130,_11136,_11142,_11148) :- active_ab(_11130,_11136,_11224),produce_context(_11148,_11142,_11224).
active_star1(_11294,_11300,_11482,_11482) :- [_11294,_11300]\=[_10478,_10480].
active_star1(_11294,_11300,_11318,_11324) :- dual(1,active_star1(_11294,_11300),_11318,_11324).
active_star2(_11294,_11300,_11732,_11732) :- [_11294,_11300]\=[_10440,_10442].
active_star2(_11294,_11300,_11406,_11324) :- dual(2,active_star2(_11294,_11300),_11406,_11324).
not_active(_11294,_11300,_11318,_11324) :- copy_term([_11294,_11300],[_11388,_11394]),active_star1(_11388,_11394,_11318,_11406),copy_term([_11294,_11300],[_11638,_11644]),active_star2(_11638,_11644,_11406,_11324).

normally_active_ab(_11936,_11938,_12190) :- not_absent(_11938,[],_12090),reaction(rct(_11966,_11938),_12090,_12140),active(_11936,_11966,_12140,_12190).

:- table normally_active_ab/3.
normally_active(_12298,_12304,_12310,_12316) :- normally_active_ab(_12298,_12304,_12392),produce_context(_12316,_12310,_12392).
normally_active_star1(_12462,_12468,_12602,_12602) :- [_12462,_12468]\=[_11936,_11938].
normally_active_star1(_12462,_12468,_12486,_12492) :- dual(1,normally_active_star1(_12462,_12468),_12486,_12492).
not_normally_active(_12462,_12468,_12486,_12492) :- normally_active_star1(_12462,_12468,_12486,_12492).

inhibited_ab(_12844,_12846,_13014) :- not_absent(_12846,[],_12964),normally_inhibited(_12844,_12846,_12964,_13014).

inhibited_ab(_12806,_12808,_13248) :- not_absent(_12808,[],_13198),externally_inhibited(_12806,_12808,_13198,_13248).

:- table inhibited_ab/3.
inhibited(_13356,_13362,_13368,_13374) :- inhibited_ab(_13356,_13362,_13450),produce_context(_13374,_13368,_13450).
inhibited_star1(_13520,_13526,_13708,_13708) :- [_13520,_13526]\=[_12844,_12846].
inhibited_star1(_13520,_13526,_13544,_13550) :- dual(1,inhibited_star1(_13520,_13526),_13544,_13550).
inhibited_star2(_13520,_13526,_13958,_13958) :- [_13520,_13526]\=[_12806,_12808].
inhibited_star2(_13520,_13526,_13632,_13550) :- dual(2,inhibited_star2(_13520,_13526),_13632,_13550).
not_inhibited(_13520,_13526,_13544,_13550) :- copy_term([_13520,_13526],[_13614,_13620]),inhibited_star1(_13614,_13620,_13544,_13632),copy_term([_13520,_13526],[_13864,_13870]),inhibited_star2(_13864,_13870,_13632,_13550).

normally_inhibited_ab(_14162,_14164,_14426) :- not_absent(_14164,[],_14312),inhibitor(_14164,_14190,_14312,_14368),active(_14162,_14190,_14368,_14426).

:- table normally_inhibited_ab/3.
normally_inhibited(_14534,_14540,_14546,_14552) :- normally_inhibited_ab(_14534,_14540,_14628),produce_context(_14552,_14546,_14628).
normally_inhibited_star1(_14698,_14704,_14838,_14838) :- [_14698,_14704]\=[_14162,_14164].
normally_inhibited_star1(_14698,_14704,_14722,_14728) :- dual(1,normally_inhibited_star1(_14698,_14704),_14722,_14728).
not_normally_inhibited(_14698,_14704,_14722,_14728) :- normally_inhibited_star1(_14698,_14704,_14722,_14728).

inactive_ab(_15098,_15100,_15152) :- inhibited(_15098,_15100,[],_15152).

inactive_ab(_15042,_15044,_15476) :- not_active(_15042,_15044,[],_15368),reaction(rct(_15074,_15044),_15368,_15426),inactive(_15042,_15074,_15426,_15476).

:- table inactive_ab/3.
inactive(_15584,_15590,_15596,_15602) :- inactive_ab(_15584,_15590,_15678),produce_context(_15602,_15596,_15678).
inactive_star1(_15748,_15754,_15936,_15936) :- [_15748,_15754]\=[_15098,_15100].
inactive_star1(_15748,_15754,_15772,_15778) :- dual(1,inactive_star1(_15748,_15754),_15772,_15778).
inactive_star2(_15748,_15754,_16186,_16186) :- [_15748,_15754]\=[_15042,_15044].
inactive_star2(_15748,_15754,_15860,_15778) :- dual(2,inactive_star2(_15748,_15754),_15860,_15778).
not_inactive(_15748,_15754,_15772,_15778) :- copy_term([_15748,_15754],[_15842,_15848]),inactive_star1(_15842,_15848,_15772,_15860),copy_term([_15748,_15754],[_16092,_16098]),inactive_star2(_16092,_16098,_15860,_15778).

externally_induced_ab(_16390,_16392,_16444) :- drug_active(_16390,_16392,[],_16444).

:- table externally_induced_ab/3.
externally_induced(_16552,_16558,_16564,_16570) :- externally_induced_ab(_16552,_16558,_16646),produce_context(_16570,_16564,_16646).
externally_induced_star1(_16716,_16722,_16856,_16856) :- [_16716,_16722]\=[_16390,_16392].
externally_induced_star1(_16716,_16722,_16740,_16746) :- dual(1,externally_induced_star1(_16716,_16722),_16740,_16746).
not_externally_induced(_16716,_16722,_16740,_16746) :- externally_induced_star1(_16716,_16722,_16740,_16746).

drug_active_ab(_17060,_17062,_17272) :- exists(_17060,_17074,[drug_induced(_17060,_17074,_17062)],_17208),possible_drug_effect(_17074,induce,_17062,_17208,_17272).

:- table drug_active_ab/3.
drug_active(_17388,_17394,_17400,_17406) :- drug_active_ab(_17388,_17394,_17482),produce_context(_17406,_17400,_17482).
drug_active_star1(_17552,_17558,_17692,_17692) :- [_17552,_17558]\=[_17060,_17062].
drug_active_star1(_17552,_17558,_17576,_17582) :- dual(1,drug_active_star1(_17552,_17558),_17576,_17582).
not_drug_active(_17552,_17558,_17576,_17582) :- drug_active_star1(_17552,_17558,_17576,_17582).

externally_inhibited_ab(_17896,_17898,_18108) :- exists(_17896,_17910,[drug_inhibited(_17896,_17910,_17898)],_18044),possible_drug_effect(_17910,inhibit,_17898,_18044,_18108).

:- table externally_inhibited_ab/3.
externally_inhibited(_18224,_18230,_18236,_18242) :- externally_inhibited_ab(_18224,_18230,_18318),produce_context(_18242,_18236,_18318).
externally_inhibited_star1(_18388,_18394,_18528,_18528) :- [_18388,_18394]\=[_17896,_17898].
externally_inhibited_star1(_18388,_18394,_18412,_18418) :- dual(1,externally_inhibited_star1(_18388,_18394),_18412,_18418).
not_externally_inhibited(_18388,_18394,_18412,_18418) :- externally_inhibited_star1(_18388,_18394,_18412,_18418).

false_star1(_18782,_18788) :- dual(1,false_star1,_18782,_18788).
false_star2(_18842,_18788) :- dual(2,false_star2,_18842,_18788).
not_false(_18782,_18788) :- copy_term([],[]),false_star1(_18782,_18842),copy_term([],[]),false_star2(_18842,_18788).


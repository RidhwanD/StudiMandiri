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
drug_induced(_11130,_11132,_11134,_11162,_11168) :- insert_abducible(drug_induced(_11130,_11132,_11134),_11162,_11168).
not_drug_induced(_11264,_11266,_11268,_11308,_11314) :- insert_abducible(not drug_induced(_11264,_11266,_11268),_11308,_11314).
drug_inhibited(_11410,_11412,_11414,_11442,_11448) :- insert_abducible(drug_inhibited(_11410,_11412,_11414),_11442,_11448).
not_drug_inhibited(_11544,_11546,_11548,_11588,_11594) :- insert_abducible(not drug_inhibited(_11544,_11546,_11548),_11588,_11594).
not_false(_11740,_11746).

externally_inhibited(_11830,_11836,_11842,_11848) :- externally_inhibited_ab(_11830,_11836,_11924),produce_context(_11848,_11842,_11924).
not_externally_inhibited(_11994,_12000,_12018,_12024).

drug_active(_12124,_12130,_12136,_12142) :- drug_active_ab(_12124,_12130,_12218),produce_context(_12142,_12136,_12218).
not_drug_active(_12288,_12294,_12312,_12318).

externally_induced(_12418,_12424,_12430,_12436) :- externally_induced_ab(_12418,_12424,_12512),produce_context(_12436,_12430,_12512).
not_externally_induced(_12582,_12588,_12606,_12612).

inactive(_12712,_12718,_12724,_12730) :- inactive_ab(_12712,_12718,_12806),produce_context(_12730,_12724,_12806).
not_inactive(_12876,_12882,_12900,_12906).

normally_inhibited(_13006,_13012,_13018,_13024) :- normally_inhibited_ab(_13006,_13012,_13100),produce_context(_13024,_13018,_13100).
not_normally_inhibited(_13170,_13176,_13194,_13200).

inhibited(_13300,_13306,_13312,_13318) :- inhibited_ab(_13300,_13306,_13394),produce_context(_13318,_13312,_13394).
not_inhibited(_13464,_13470,_13488,_13494).

normally_active(_13594,_13600,_13606,_13612) :- normally_active_ab(_13594,_13600,_13688),produce_context(_13612,_13606,_13688).
not_normally_active(_13758,_13764,_13782,_13788).

active(_13888,_13894,_13900,_13906) :- active_ab(_13888,_13894,_13982),produce_context(_13906,_13900,_13982).
not_active(_14052,_14058,_14076,_14082).

not_false(_14174,_14174).



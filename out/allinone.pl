exists(phase0,drug).
possible_drug_effect(_4720,inhibit,_4724).
possible_drug_effect(_4794,induce,_4798).
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
exists(_7262,_7264,_7286,_7286) :- exists(_7262,_7264).
not_exists(_7262,_7264,_7356,_7356) :- not exists(_7262,_7264).
possible_drug_effect(_7450,_7452,_7454,_7482,_7482) :- possible_drug_effect(_7450,_7452,_7454).
not_possible_drug_effect(_7450,_7452,_7454,_7566,_7566) :- not possible_drug_effect(_7450,_7452,_7454).
absent(_7682,_7698,_7698) :- absent(_7682).
not_absent(_7682,_7754,_7754) :- not absent(_7682).
reaction(_7826,_7842,_7842) :- reaction(_7826).
not_reaction(_7826,_7898,_7898) :- not reaction(_7826).
inhibitor(_7970,_7972,_7994,_7994) :- inhibitor(_7970,_7972).
not_inhibitor(_7970,_7972,_8064,_8064) :- not inhibitor(_7970,_7972).
oncogene(_8158,_8174,_8174) :- oncogene(_8158).
not_oncogene(_8158,_8230,_8230) :- not oncogene(_8158).
tumor_suppressor(_8302,_8318,_8318) :- tumor_suppressor(_8302).
not_tumor_suppressor(_8302,_8374,_8374) :- not tumor_suppressor(_8302).
drug_induced(_9832,_9834,_9836,_9864,_9870) :- insert_abducible(drug_induced(_9832,_9834,_9836),_9864,_9870).
not_drug_induced(_9966,_9968,_9970,_10010,_10016) :- insert_abducible(not drug_induced(_9966,_9968,_9970),_10010,_10016).
drug_inhibited(_10112,_10114,_10116,_10144,_10150) :- insert_abducible(drug_inhibited(_10112,_10114,_10116),_10144,_10150).
not_drug_inhibited(_10246,_10248,_10250,_10290,_10296) :- insert_abducible(not drug_inhibited(_10246,_10248,_10250),_10290,_10296).
active_ab(_10484,_10486,_10794) :- not_absent(_10486,[],_10638),not_inhibited(_10484,_10486,_10638,_10736),normally_active(_10484,_10486,_10736,_10794).

active_ab(_10446,_10448,_11028) :- not_absent(_10448,[],_10978),externally_induced(_10446,_10448,_10978,_11028).

:- table active_ab/3.
active(_11136,_11142,_11148,_11154) :- active_ab(_11136,_11142,_11230),produce_context(_11154,_11148,_11230).
active_star1(_11300,_11306,_11488,_11488) :- [_11300,_11306]\=[_10484,_10486].
active_star1(_11300,_10486,_11324,_11330) :- absent(_10486,_11324,_11330).
active_star1(_10484,_10486,_11324,_11330) :- inhibited(_10484,_10486,_11324,_11330).
active_star1(_10484,_10486,_11324,_11330) :- not_normally_active(_10484,_10486,_11324,_11330).
active_star2(_11300,_11306,_12082,_12082) :- [_11300,_11306]\=[_10446,_10448].
active_star2(_11300,_10448,_11412,_11330) :- absent(_10448,_11412,_11330).
active_star2(_10446,_10448,_11412,_11330) :- not_externally_induced(_10446,_10448,_11412,_11330).
not_active(_11300,_11306,_11324,_11330) :- copy_term([_11300,_11306],[_11394,_11400]),active_star1(_11394,_11400,_11324,_11412),copy_term([_11300,_11306],[_11988,_11994]),active_star2(_11988,_11994,_11412,_11330).

normally_active_ab(_12460,_12462,_12714) :- not_absent(_12462,[],_12614),reaction(rct(_12490,_12462),_12614,_12664),active(_12460,_12490,_12664,_12714).

:- table normally_active_ab/3.
normally_active(_12822,_12828,_12834,_12840) :- normally_active_ab(_12822,_12828,_12916),produce_context(_12840,_12834,_12916).
normally_active_star1(_12986,_12992,_13126,_13126) :- [_12986,_12992]\=[_12460,_12462].
normally_active_star1(_12986,_12462,_13010,_13016) :- absent(_12462,_13010,_13016).
normally_active_star1(_12986,_12462,_13010,_13016) :- not_reaction(rct(_12490,_12462),_13010,_13016).
normally_active_star1(_12460,_12462,_13010,_13016) :- reaction(rct(_12490,_12462),_13010,_13536),not_active(_12460,_12490,_13536,_13016).
not_normally_active(_12986,_12992,_13010,_13016) :- normally_active_star1(_12986,_12992,_13010,_13016).

inhibited_ab(_13742,_13744,_13912) :- not_absent(_13744,[],_13862),normally_inhibited(_13742,_13744,_13862,_13912).

inhibited_ab(_13704,_13706,_14146) :- not_absent(_13706,[],_14096),externally_inhibited(_13704,_13706,_14096,_14146).

:- table inhibited_ab/3.
inhibited(_14254,_14260,_14266,_14272) :- inhibited_ab(_14254,_14260,_14348),produce_context(_14272,_14266,_14348).
inhibited_star1(_14418,_14424,_14606,_14606) :- [_14418,_14424]\=[_13742,_13744].
inhibited_star1(_14418,_13744,_14442,_14448) :- absent(_13744,_14442,_14448).
inhibited_star1(_13742,_13744,_14442,_14448) :- not_normally_inhibited(_13742,_13744,_14442,_14448).
inhibited_star2(_14418,_14424,_15030,_15030) :- [_14418,_14424]\=[_13704,_13706].
inhibited_star2(_14418,_13706,_14530,_14448) :- absent(_13706,_14530,_14448).
inhibited_star2(_13704,_13706,_14530,_14448) :- not_externally_inhibited(_13704,_13706,_14530,_14448).
not_inhibited(_14418,_14424,_14442,_14448) :- copy_term([_14418,_14424],[_14512,_14518]),inhibited_star1(_14512,_14518,_14442,_14530),copy_term([_14418,_14424],[_14936,_14942]),inhibited_star2(_14936,_14942,_14530,_14448).

normally_inhibited_ab(_15408,_15410,_15672) :- not_absent(_15410,[],_15558),inhibitor(_15410,_15436,_15558,_15614),active(_15408,_15436,_15614,_15672).

:- table normally_inhibited_ab/3.
normally_inhibited(_15780,_15786,_15792,_15798) :- normally_inhibited_ab(_15780,_15786,_15874),produce_context(_15798,_15792,_15874).
normally_inhibited_star1(_15944,_15950,_16084,_16084) :- [_15944,_15950]\=[_15408,_15410].
normally_inhibited_star1(_15944,_15410,_15968,_15974) :- absent(_15410,_15968,_15974).
normally_inhibited_star1(_15944,_15410,_15968,_15974) :- not_inhibitor(_15410,_15436,_15968,_15974).
normally_inhibited_star1(_15408,_15410,_15968,_15974) :- inhibitor(_15410,_15436,_15968,_16502),not_active(_15408,_15436,_16502,_15974).
not_normally_inhibited(_15944,_15950,_15968,_15974) :- normally_inhibited_star1(_15944,_15950,_15968,_15974).

inactive_ab(_16734,_16736,_16788) :- inhibited(_16734,_16736,[],_16788).

inactive_ab(_16678,_16680,_17112) :- not_active(_16678,_16680,[],_17004),reaction(rct(_16710,_16680),_17004,_17062),inactive(_16678,_16710,_17062,_17112).

:- table inactive_ab/3.
inactive(_17220,_17226,_17232,_17238) :- inactive_ab(_17220,_17226,_17314),produce_context(_17238,_17232,_17314).
inactive_star1(_17384,_17390,_17572,_17572) :- [_17384,_17390]\=[_16734,_16736].
inactive_star1(_16734,_16736,_17408,_17414) :- not_inhibited(_16734,_16736,_17408,_17414).
inactive_star2(_17384,_17390,_17870,_17870) :- [_17384,_17390]\=[_16678,_16680].
inactive_star2(_16678,_16680,_17496,_17414) :- active(_16678,_16680,_17496,_17414).
inactive_star2(_16678,_16680,_17496,_17414) :- not_reaction(rct(_16710,_16680),_17496,_17414).
inactive_star2(_16678,_16680,_17496,_17414) :- reaction(rct(_16710,_16680),_17496,_18318),not_inactive(_16678,_16710,_18318,_17414).
not_inactive(_17384,_17390,_17408,_17414) :- copy_term([_17384,_17390],[_17478,_17484]),inactive_star1(_17478,_17484,_17408,_17496),copy_term([_17384,_17390],[_17776,_17782]),inactive_star2(_17776,_17782,_17496,_17414).

externally_induced_ab(_18486,_18488,_18540) :- drug_active(_18486,_18488,[],_18540).

:- table externally_induced_ab/3.
externally_induced(_18648,_18654,_18660,_18666) :- externally_induced_ab(_18648,_18654,_18742),produce_context(_18666,_18660,_18742).
externally_induced_star1(_18812,_18818,_18952,_18952) :- [_18812,_18818]\=[_18486,_18488].
externally_induced_star1(_18486,_18488,_18836,_18842) :- not_drug_active(_18486,_18488,_18836,_18842).
not_externally_induced(_18812,_18818,_18836,_18842) :- externally_induced_star1(_18812,_18818,_18836,_18842).

drug_active_ab(_19204,_19206,_19416) :- exists(_19204,_19218,[drug_induced(_19204,_19218,_19206)],_19352),possible_drug_effect(_19218,induce,_19206,_19352,_19416).

:- table drug_active_ab/3.
drug_active(_19532,_19538,_19544,_19550) :- drug_active_ab(_19532,_19538,_19626),produce_context(_19550,_19544,_19626).
drug_active_star1(_19696,_19702,_19836,_19836) :- [_19696,_19702]\=[_19204,_19206].
drug_active_star1(_19204,_19702,_19720,_19726) :- not_exists(_19204,_19218,_19720,_19726).
drug_active_star1(_19204,_19206,_19720,_19726) :- exists(_19204,_19218,_19720,_20134),not_possible_drug_effect(_19218,induce,_19206,_20134,_19726).
drug_active_star1(_19204,_19206,_19720,_19726) :- exists(_19204,_19218,_19720,_20370),possible_drug_effect(_19218,induce,_19206,_20370,_20440),not_drug_induced(_19204,_19218,_19206,_20440,_19726).
not_drug_active(_19696,_19702,_19720,_19726) :- drug_active_star1(_19696,_19702,_19720,_19726).

externally_inhibited_ab(_20638,_20640,_20850) :- exists(_20638,_20652,[drug_inhibited(_20638,_20652,_20640)],_20786),possible_drug_effect(_20652,inhibit,_20640,_20786,_20850).

:- table externally_inhibited_ab/3.
externally_inhibited(_20966,_20972,_20978,_20984) :- externally_inhibited_ab(_20966,_20972,_21060),produce_context(_20984,_20978,_21060).
externally_inhibited_star1(_21130,_21136,_21270,_21270) :- [_21130,_21136]\=[_20638,_20640].
externally_inhibited_star1(_20638,_21136,_21154,_21160) :- not_exists(_20638,_20652,_21154,_21160).
externally_inhibited_star1(_20638,_20640,_21154,_21160) :- exists(_20638,_20652,_21154,_21568),not_possible_drug_effect(_20652,inhibit,_20640,_21568,_21160).
externally_inhibited_star1(_20638,_20640,_21154,_21160) :- exists(_20638,_20652,_21154,_21804),possible_drug_effect(_20652,inhibit,_20640,_21804,_21874),not_drug_inhibited(_20638,_20652,_20640,_21874,_21160).
not_externally_inhibited(_21130,_21136,_21154,_21160) :- externally_inhibited_star1(_21130,_21136,_21154,_21160).

false_star1(_22122,_22128) :- not_drug_induced(phase0,drug,_22092,_22122,_22128).
false_star1(_22122,_22128) :- drug_induced(phase0,drug,_22092,_22122,_22476),not_drug_inhibited(phase0,drug,_22092,_22476,_22128).
false_star2(_22182,_22128) :- not_drug_induced(phase0,drug,apoptosis,_22182,_22128).
not_false(_22122,_22128) :- copy_term([],[]),false_star1(_22122,_22182),copy_term([],[]),false_star2(_22182,_22128).


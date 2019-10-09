exists(phase0,drug).
possible_drug_effect(_4706,inhibit,_4710).
possible_drug_effect(_4780,induce,_4784).
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
exists(_7248,_7250,_7272,_7272) :- exists(_7248,_7250).
not_exists(_7248,_7250,_7342,_7342) :- not exists(_7248,_7250).
possible_drug_effect(_7436,_7438,_7440,_7468,_7468) :- possible_drug_effect(_7436,_7438,_7440).
not_possible_drug_effect(_7436,_7438,_7440,_7552,_7552) :- not possible_drug_effect(_7436,_7438,_7440).
absent(_7668,_7684,_7684) :- absent(_7668).
not_absent(_7668,_7740,_7740) :- not absent(_7668).
reaction(_7812,_7828,_7828) :- reaction(_7812).
not_reaction(_7812,_7884,_7884) :- not reaction(_7812).
inhibitor(_7956,_7958,_7980,_7980) :- inhibitor(_7956,_7958).
not_inhibitor(_7956,_7958,_8050,_8050) :- not inhibitor(_7956,_7958).
oncogene(_8144,_8160,_8160) :- oncogene(_8144).
not_oncogene(_8144,_8216,_8216) :- not oncogene(_8144).
tumor_suppressor(_8288,_8304,_8304) :- tumor_suppressor(_8288).
not_tumor_suppressor(_8288,_8360,_8360) :- not tumor_suppressor(_8288).
drug_induced(_9818,_9820,_9822,_9850,_9856) :- insert_abducible(drug_induced(_9818,_9820,_9822),_9850,_9856).
not_drug_induced(_9952,_9954,_9956,_9996,_10002) :- insert_abducible(not drug_induced(_9952,_9954,_9956),_9996,_10002).
drug_inhibited(_10098,_10100,_10102,_10130,_10136) :- insert_abducible(drug_inhibited(_10098,_10100,_10102),_10130,_10136).
not_drug_inhibited(_10232,_10234,_10236,_10276,_10282) :- insert_abducible(not drug_inhibited(_10232,_10234,_10236),_10276,_10282).
:- table active_ab/3.
active_ab(_10470,_10472,_10804) :- not_absent(_10472,[[],[]],_10648),not_inhibited(_10470,_10472,_10648,_10746),normally_active(_10470,_10472,_10746,_10804).

active_ab(_10432,_10434,_11050) :- not_absent(_10434,[[],[]],_11000),externally_induced(_10432,_10434,_11000,_11050).

active(_11146,_11152,_11158,_11164) :- active_ab(_11146,_11152,_11240),produce_context(_11164,_11158,_11240).
active_star1(_11310,_11316,_11498,_11498) :- [_11310,_11316]\=[_10470,_10472].
active_star1(_11310,_11316,_11334,_11340) :- absent(_10472,_11334,_11340).
active_star1(_11310,_11316,_11334,_11340) :- not absent(_10472,_11334,_11744),inhibited(_10470,_10472,_11744,_11340).
active_star1(_10470,_10472,_11334,_11340) :- not absent(_10472,_11334,_11938),not inhibited(_10470,_10472,_11938,_11998),not_normally_active(_10470,_10472,_11998,_11340).
active_star2(_11310,_11316,_12220,_12220) :- [_11310,_11316]\=[_10432,_10434].
active_star2(_11310,_11316,_11422,_11340) :- absent(_10434,_11422,_11340).
active_star2(_10432,_10434,_11422,_11340) :- not absent(_10434,_11422,_12472),not_externally_induced(_10432,_10434,_12472,_11340).
not_active(_11310,_11316,_11334,_11340) :- copy_term([_11310,_11316],[_11404,_11410]),active_star1(_11404,_11410,_11334,_11422),copy_term([_11310,_11316],[_12126,_12132]),active_star2(_12126,_12132,_11422,_11340).

:- table normally_active_ab/3.
normally_active_ab(_12640,_12642,_12918) :- not_absent(_12642,[[],[]],_12818),reaction(rct(_12670,_12642),_12818,_12868),active(_12640,_12670,_12868,_12918).

normally_active(_13014,_13020,_13026,_13032) :- normally_active_ab(_13014,_13020,_13108),produce_context(_13032,_13026,_13108).
normally_active_star1(_13178,_13184,_13318,_13318) :- [_13178,_13184]\=[_12640,_12642].
normally_active_star1(_13178,_13184,_13202,_13208) :- absent(_12642,_13202,_13208).
normally_active_star1(_13178,_13184,_13202,_13208) :- not absent(_12642,_13202,_13564),not_reaction(rct(_12670,_12642),_13564,_13208).
normally_active_star1(_12640,_13184,_13202,_13208) :- not absent(_12642,_13202,_13756),reaction(rct(_12670,_12642),_13756,_13806),not_active(_12640,_12670,_13806,_13208).
not_normally_active(_13178,_13184,_13202,_13208) :- normally_active_star1(_13178,_13184,_13202,_13208).

:- table inhibited_ab/3.
inhibited_ab(_14012,_14014,_14206) :- not_absent(_14014,[[],[]],_14156),normally_inhibited(_14012,_14014,_14156,_14206).

inhibited_ab(_13974,_13976,_14452) :- not_absent(_13976,[[],[]],_14402),externally_inhibited(_13974,_13976,_14402,_14452).

inhibited(_14548,_14554,_14560,_14566) :- inhibited_ab(_14548,_14554,_14642),produce_context(_14566,_14560,_14642).
inhibited_star1(_14712,_14718,_14900,_14900) :- [_14712,_14718]\=[_14012,_14014].
inhibited_star1(_14712,_14718,_14736,_14742) :- absent(_14014,_14736,_14742).
inhibited_star1(_14012,_14014,_14736,_14742) :- not absent(_14014,_14736,_15152),not_normally_inhibited(_14012,_14014,_15152,_14742).
inhibited_star2(_14712,_14718,_15366,_15366) :- [_14712,_14718]\=[_13974,_13976].
inhibited_star2(_14712,_14718,_14824,_14742) :- absent(_13976,_14824,_14742).
inhibited_star2(_13974,_13976,_14824,_14742) :- not absent(_13976,_14824,_15618),not_externally_inhibited(_13974,_13976,_15618,_14742).
not_inhibited(_14712,_14718,_14736,_14742) :- copy_term([_14712,_14718],[_14806,_14812]),inhibited_star1(_14806,_14812,_14736,_14824),copy_term([_14712,_14718],[_15272,_15278]),inhibited_star2(_15272,_15278,_14824,_14742).

:- table normally_inhibited_ab/3.
normally_inhibited_ab(_15786,_15788,_16074) :- not_absent(_15788,[[],[]],_15960),inhibitor(_15788,_15814,_15960,_16016),active(_15786,_15814,_16016,_16074).

normally_inhibited(_16170,_16176,_16182,_16188) :- normally_inhibited_ab(_16170,_16176,_16264),produce_context(_16188,_16182,_16264).
normally_inhibited_star1(_16334,_16340,_16474,_16474) :- [_16334,_16340]\=[_15786,_15788].
normally_inhibited_star1(_16334,_16340,_16358,_16364) :- absent(_15788,_16358,_16364).
normally_inhibited_star1(_16334,_15788,_16358,_16364) :- not absent(_15788,_16358,_16726),not_inhibitor(_15788,_15814,_16726,_16364).
normally_inhibited_star1(_15786,_15788,_16358,_16364) :- not absent(_15788,_16358,_16932),inhibitor(_15788,_15814,_16932,_16988),not_active(_15786,_15814,_16988,_16364).
not_normally_inhibited(_16334,_16340,_16358,_16364) :- normally_inhibited_star1(_16334,_16340,_16358,_16364).

:- table inactive_ab/3.
inactive_ab(_17220,_17222,_17298) :- inhibited(_17220,_17222,[[],[]],_17298).

inactive_ab(_17164,_17166,_17634) :- not_active(_17164,_17166,[[],[]],_17526),reaction(rct(_17196,_17166),_17526,_17584),inactive(_17164,_17196,_17584,_17634).

inactive(_17730,_17736,_17742,_17748) :- inactive_ab(_17730,_17736,_17824),produce_context(_17748,_17742,_17824).
inactive_star1(_17894,_17900,_18082,_18082) :- [_17894,_17900]\=[_17220,_17222].
inactive_star1(_17220,_17222,_17918,_17924) :- not_inhibited(_17220,_17222,_17918,_17924).
inactive_star2(_17894,_17900,_18380,_18380) :- [_17894,_17900]\=[_17164,_17166].
inactive_star2(_17894,_17900,_18006,_17924) :- active(_17164,_17166,_18006,_17924).
inactive_star2(_17894,_17900,_18006,_17924) :- not active(_17164,_17166,_18006,_18646),not_reaction(rct(_17196,_17166),_18646,_17924).
inactive_star2(_17164,_17900,_18006,_17924) :- not active(_17164,_17166,_18006,_18852),reaction(rct(_17196,_17166),_18852,_18910),not_inactive(_17164,_17196,_18910,_17924).
not_inactive(_17894,_17900,_17918,_17924) :- copy_term([_17894,_17900],[_17988,_17994]),inactive_star1(_17988,_17994,_17918,_18006),copy_term([_17894,_17900],[_18286,_18292]),inactive_star2(_18286,_18292,_18006,_17924).

:- table externally_induced_ab/3.
externally_induced_ab(_19078,_19080,_19156) :- drug_active(_19078,_19080,[[],[]],_19156).

externally_induced(_19252,_19258,_19264,_19270) :- externally_induced_ab(_19252,_19258,_19346),produce_context(_19270,_19264,_19346).
externally_induced_star1(_19416,_19422,_19556,_19556) :- [_19416,_19422]\=[_19078,_19080].
externally_induced_star1(_19078,_19080,_19440,_19446) :- not_drug_active(_19078,_19080,_19440,_19446).
not_externally_induced(_19416,_19422,_19440,_19446) :- externally_induced_star1(_19416,_19422,_19440,_19446).

:- table drug_active_ab/3.
drug_active_ab(_19808,_19810,_20050) :- exists(_19808,_19822,[[drug_induced(_19808,_19822,_19810)],[]],_19986),possible_drug_effect(_19822,induce,_19810,_19986,_20050).

drug_active(_20154,_20160,_20166,_20172) :- drug_active_ab(_20154,_20160,_20248),produce_context(_20172,_20166,_20248).
drug_active_star1(_20318,_20324,_20458,_20458) :- [_20318,_20324]\=[_19808,_19810].
drug_active_star1(_19808,_20324,_20342,_20348) :- not_exists(_19808,_19822,_20342,_20348).
drug_active_star1(_19808,_20324,_20342,_20348) :- exists(_19808,_19822,_20342,_20750),not_possible_drug_effect(_19822,induce,_19810,_20750,_20348).
drug_active_star1(_19808,_19810,_20342,_20348) :- exists(_19808,_19822,_20342,_20986),possible_drug_effect(_19822,induce,_19810,_20986,_21056),not_drug_induced(_19808,_19822,_19810,_21056,_20348).
not_drug_active(_20318,_20324,_20342,_20348) :- drug_active_star1(_20318,_20324,_20342,_20348).

:- table externally_inhibited_ab/3.
externally_inhibited_ab(_21254,_21256,_21496) :- exists(_21254,_21268,[[drug_inhibited(_21254,_21268,_21256)],[]],_21432),possible_drug_effect(_21268,inhibit,_21256,_21432,_21496).

externally_inhibited(_21600,_21606,_21612,_21618) :- externally_inhibited_ab(_21600,_21606,_21694),produce_context(_21618,_21612,_21694).
externally_inhibited_star1(_21764,_21770,_21904,_21904) :- [_21764,_21770]\=[_21254,_21256].
externally_inhibited_star1(_21254,_21770,_21788,_21794) :- not_exists(_21254,_21268,_21788,_21794).
externally_inhibited_star1(_21254,_21770,_21788,_21794) :- exists(_21254,_21268,_21788,_22196),not_possible_drug_effect(_21268,inhibit,_21256,_22196,_21794).
externally_inhibited_star1(_21254,_21256,_21788,_21794) :- exists(_21254,_21268,_21788,_22432),possible_drug_effect(_21268,inhibit,_21256,_22432,_22502),not_drug_inhibited(_21254,_21268,_21256,_22502,_21794).
not_externally_inhibited(_21764,_21770,_21788,_21794) :- externally_inhibited_star1(_21764,_21770,_21788,_21794).

false_star1(_22750,_22756) :- not_drug_induced(phase0,drug,_22720,_22750,_22756).
false_star1(_22750,_22756) :- drug_induced(phase0,drug,_22720,_22750,_23104),not_drug_inhibited(phase0,drug,_22720,_23104,_22756).
false_star2(_22810,_22756) :- not_drug_induced(phase0,drug,apoptosis,_22810,_22756).
not_false(_22750,_22756) :- copy_term([],[]),false_star1(_22750,_22810),copy_term([],[]),false_star2(_22810,_22756).


exists(phase0,drug).
possible_drug_effect(_4838,inhibit,_4842).
possible_drug_effect(_4912,induce,_4916).
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
exists(_7380,_7382,_7404,_7404) :- exists(_7380,_7382).
not_exists(_7380,_7382,_7474,_7474) :- not exists(_7380,_7382).
possible_drug_effect(_7568,_7570,_7572,_7600,_7600) :- possible_drug_effect(_7568,_7570,_7572).
not_possible_drug_effect(_7568,_7570,_7572,_7684,_7684) :- not possible_drug_effect(_7568,_7570,_7572).
absent(_7800,_7816,_7816) :- absent(_7800).
not_absent(_7800,_7872,_7872) :- not absent(_7800).
reaction(_7944,_7960,_7960) :- reaction(_7944).
not_reaction(_7944,_8016,_8016) :- not reaction(_7944).
inhibitor(_8088,_8090,_8112,_8112) :- inhibitor(_8088,_8090).
not_inhibitor(_8088,_8090,_8182,_8182) :- not inhibitor(_8088,_8090).
oncogene(_8276,_8292,_8292) :- oncogene(_8276).
not_oncogene(_8276,_8348,_8348) :- not oncogene(_8276).
tumor_suppressor(_8420,_8436,_8436) :- tumor_suppressor(_8420).
not_tumor_suppressor(_8420,_8492,_8492) :- not tumor_suppressor(_8420).
drug_induced(_9950,_9952,_9954,_9982,_9988) :- insert_abducible(drug_induced(_9950,_9952,_9954),_9982,_9988).
not_drug_induced(_10084,_10086,_10088,_10128,_10134) :- insert_abducible(not drug_induced(_10084,_10086,_10088),_10128,_10134).
drug_inhibited(_10230,_10232,_10234,_10262,_10268) :- insert_abducible(drug_inhibited(_10230,_10232,_10234),_10262,_10268).
not_drug_inhibited(_10364,_10366,_10368,_10408,_10414) :- insert_abducible(not drug_inhibited(_10364,_10366,_10368),_10408,_10414).
:- table active_ab/3.
active_ab(_10602,_10604,_10924) :- not_absent(_10604,[],_10768),not_inhibited(_10602,_10604,_10768,_10866),normally_active(_10602,_10604,_10866,_10924).

active_ab(_10564,_10566,_11158) :- not_absent(_10566,[],_11108),externally_induced(_10564,_10566,_11108,_11158).

active(_11254,_11260,_11266,_11272) :- active_ab(_11254,_11260,_11348),produce_context(_11272,_11266,_11348).
active_star1(_11418,_11424,_11606,_11606) :- [_11418,_11424]\=[_10602,_10604].
active_star1(_11418,_11424,_11442,_11448) :- absent(_10604,_11442,_11448).
active_star1(_11418,_11424,_11442,_11448) :- not absent(_10604,_11442,_11852),inhibited(_10602,_10604,_11852,_11448).
active_star1(_10602,_10604,_11442,_11448) :- not absent(_10604,_11442,_12046),not inhibited(_10602,_10604,_12046,_12106),not_normally_active(_10602,_10604,_12106,_11448).
active_star2(_11418,_11424,_12328,_12328) :- [_11418,_11424]\=[_10564,_10566].
active_star2(_11418,_11424,_11530,_11448) :- absent(_10566,_11530,_11448).
active_star2(_10564,_10566,_11530,_11448) :- not absent(_10566,_11530,_12580),not_externally_induced(_10564,_10566,_12580,_11448).
not_active(_11418,_11424,_11442,_11448) :- copy_term([_11418,_11424],[_11512,_11518]),active_star1(_11512,_11518,_11442,_11530),copy_term([_11418,_11424],[_12234,_12240]),active_star2(_12234,_12240,_11530,_11448).

:- table normally_active_ab/3.
normally_active_ab(_12748,_12750,_13014) :- not_absent(_12750,[],_12914),reaction(rct(_12778,_12750),_12914,_12964),active(_12748,_12778,_12964,_13014).

normally_active(_13110,_13116,_13122,_13128) :- normally_active_ab(_13110,_13116,_13204),produce_context(_13128,_13122,_13204).
normally_active_star1(_13274,_13280,_13414,_13414) :- [_13274,_13280]\=[_12748,_12750].
normally_active_star1(_13274,_13280,_13298,_13304) :- absent(_12750,_13298,_13304).
normally_active_star1(_13274,_13280,_13298,_13304) :- not absent(_12750,_13298,_13660),not_reaction(rct(_12778,_12750),_13660,_13304).
normally_active_star1(_12748,_13280,_13298,_13304) :- not absent(_12750,_13298,_13852),reaction(rct(_12778,_12750),_13852,_13902),not_active(_12748,_12778,_13902,_13304).
not_normally_active(_13274,_13280,_13298,_13304) :- normally_active_star1(_13274,_13280,_13298,_13304).

:- table inhibited_ab/3.
inhibited_ab(_14108,_14110,_14290) :- not_absent(_14110,[],_14240),normally_inhibited(_14108,_14110,_14240,_14290).

inhibited_ab(_14070,_14072,_14524) :- not_absent(_14072,[],_14474),externally_inhibited(_14070,_14072,_14474,_14524).

inhibited(_14620,_14626,_14632,_14638) :- inhibited_ab(_14620,_14626,_14714),produce_context(_14638,_14632,_14714).
inhibited_star1(_14784,_14790,_14972,_14972) :- [_14784,_14790]\=[_14108,_14110].
inhibited_star1(_14784,_14790,_14808,_14814) :- absent(_14110,_14808,_14814).
inhibited_star1(_14108,_14110,_14808,_14814) :- not absent(_14110,_14808,_15224),not_normally_inhibited(_14108,_14110,_15224,_14814).
inhibited_star2(_14784,_14790,_15438,_15438) :- [_14784,_14790]\=[_14070,_14072].
inhibited_star2(_14784,_14790,_14896,_14814) :- absent(_14072,_14896,_14814).
inhibited_star2(_14070,_14072,_14896,_14814) :- not absent(_14072,_14896,_15690),not_externally_inhibited(_14070,_14072,_15690,_14814).
not_inhibited(_14784,_14790,_14808,_14814) :- copy_term([_14784,_14790],[_14878,_14884]),inhibited_star1(_14878,_14884,_14808,_14896),copy_term([_14784,_14790],[_15344,_15350]),inhibited_star2(_15344,_15350,_14896,_14814).

:- table normally_inhibited_ab/3.
normally_inhibited_ab(_15858,_15860,_16134) :- not_absent(_15860,[],_16020),inhibitor(_15860,_15886,_16020,_16076),active(_15858,_15886,_16076,_16134).

normally_inhibited(_16230,_16236,_16242,_16248) :- normally_inhibited_ab(_16230,_16236,_16324),produce_context(_16248,_16242,_16324).
normally_inhibited_star1(_16394,_16400,_16534,_16534) :- [_16394,_16400]\=[_15858,_15860].
normally_inhibited_star1(_16394,_16400,_16418,_16424) :- absent(_15860,_16418,_16424).
normally_inhibited_star1(_16394,_15860,_16418,_16424) :- not absent(_15860,_16418,_16786),not_inhibitor(_15860,_15886,_16786,_16424).
normally_inhibited_star1(_15858,_15860,_16418,_16424) :- not absent(_15860,_16418,_16992),inhibitor(_15860,_15886,_16992,_17048),not_active(_15858,_15886,_17048,_16424).
not_normally_inhibited(_16394,_16400,_16418,_16424) :- normally_inhibited_star1(_16394,_16400,_16418,_16424).

:- table inactive_ab/3.
inactive_ab(_17280,_17282,_17346) :- inhibited(_17280,_17282,[],_17346).

inactive_ab(_17224,_17226,_17670) :- not_active(_17224,_17226,[],_17562),reaction(rct(_17256,_17226),_17562,_17620),inactive(_17224,_17256,_17620,_17670).

inactive(_17766,_17772,_17778,_17784) :- inactive_ab(_17766,_17772,_17860),produce_context(_17784,_17778,_17860).
inactive_star1(_17930,_17936,_18118,_18118) :- [_17930,_17936]\=[_17280,_17282].
inactive_star1(_17280,_17282,_17954,_17960) :- not_inhibited(_17280,_17282,_17954,_17960).
inactive_star2(_17930,_17936,_18416,_18416) :- [_17930,_17936]\=[_17224,_17226].
inactive_star2(_17930,_17936,_18042,_17960) :- active(_17224,_17226,_18042,_17960).
inactive_star2(_17930,_17936,_18042,_17960) :- not active(_17224,_17226,_18042,_18682),not_reaction(rct(_17256,_17226),_18682,_17960).
inactive_star2(_17224,_17936,_18042,_17960) :- not active(_17224,_17226,_18042,_18888),reaction(rct(_17256,_17226),_18888,_18946),not_inactive(_17224,_17256,_18946,_17960).
not_inactive(_17930,_17936,_17954,_17960) :- copy_term([_17930,_17936],[_18024,_18030]),inactive_star1(_18024,_18030,_17954,_18042),copy_term([_17930,_17936],[_18322,_18328]),inactive_star2(_18322,_18328,_18042,_17960).

:- table externally_induced_ab/3.
externally_induced_ab(_19114,_19116,_19180) :- drug_active(_19114,_19116,[],_19180).

externally_induced(_19276,_19282,_19288,_19294) :- externally_induced_ab(_19276,_19282,_19370),produce_context(_19294,_19288,_19370).
externally_induced_star1(_19440,_19446,_19580,_19580) :- [_19440,_19446]\=[_19114,_19116].
externally_induced_star1(_19114,_19116,_19464,_19470) :- not_drug_active(_19114,_19116,_19464,_19470).
not_externally_induced(_19440,_19446,_19464,_19470) :- externally_induced_star1(_19440,_19446,_19464,_19470).

:- table drug_active_ab/3.
drug_active_ab(_19832,_19834,_20056) :- exists(_19832,_19846,[drug_induced(_19832,_19846,_19834)],_19992),possible_drug_effect(_19846,induce,_19834,_19992,_20056).

drug_active(_20160,_20166,_20172,_20178) :- drug_active_ab(_20160,_20166,_20254),produce_context(_20178,_20172,_20254).
drug_active_star1(_20324,_20330,_20464,_20464) :- [_20324,_20330]\=[_19832,_19834].
drug_active_star1(_19832,_20330,_20348,_20354) :- not_exists(_19832,_19846,_20348,_20354).
drug_active_star1(_19832,_20330,_20348,_20354) :- exists(_19832,_19846,_20348,_20756),not_possible_drug_effect(_19846,induce,_19834,_20756,_20354).
drug_active_star1(_19832,_19834,_20348,_20354) :- exists(_19832,_19846,_20348,_20992),possible_drug_effect(_19846,induce,_19834,_20992,_21062),not_drug_induced(_19832,_19846,_19834,_21062,_20354).
not_drug_active(_20324,_20330,_20348,_20354) :- drug_active_star1(_20324,_20330,_20348,_20354).

:- table externally_inhibited_ab/3.
externally_inhibited_ab(_21260,_21262,_21484) :- exists(_21260,_21274,[drug_inhibited(_21260,_21274,_21262)],_21420),possible_drug_effect(_21274,inhibit,_21262,_21420,_21484).

externally_inhibited(_21588,_21594,_21600,_21606) :- externally_inhibited_ab(_21588,_21594,_21682),produce_context(_21606,_21600,_21682).
externally_inhibited_star1(_21752,_21758,_21892,_21892) :- [_21752,_21758]\=[_21260,_21262].
externally_inhibited_star1(_21260,_21758,_21776,_21782) :- not_exists(_21260,_21274,_21776,_21782).
externally_inhibited_star1(_21260,_21758,_21776,_21782) :- exists(_21260,_21274,_21776,_22184),not_possible_drug_effect(_21274,inhibit,_21262,_22184,_21782).
externally_inhibited_star1(_21260,_21262,_21776,_21782) :- exists(_21260,_21274,_21776,_22420),possible_drug_effect(_21274,inhibit,_21262,_22420,_22490),not_drug_inhibited(_21260,_21274,_21262,_22490,_21782).
not_externally_inhibited(_21752,_21758,_21776,_21782) :- externally_inhibited_star1(_21752,_21758,_21776,_21782).

:- table false_ab/1.
false_star1(_22750,_22756) :- not_drug_induced(phase0,drug,_22708,_22750,_22756).
false_star1(_22750,_22756) :- drug_induced(phase0,drug,_22708,_22750,_23104),not_drug_inhibited(phase0,drug,_22708,_23104,_22756).
false_star2(_22810,_22756) :- not_drug_induced(phase0,drug,apoptosis,_22810,_22756).
not_false(_22750,_22756) :- copy_term([],[]),false_star1(_22750,_22810),copy_term([],[]),false_star2(_22810,_22756).


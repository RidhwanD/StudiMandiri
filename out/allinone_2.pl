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
active_star1(_10696,_10702,_10884,_10884) :- [_10696,_10702]\=[_10602,_10604].
active_star1(_10696,_10702,_10720,_10726) :- absent(_10604,_10720,_10726).
active_star1(_10696,_10702,_10720,_10726) :- not absent(_10604,_10720,_11130),inhibited(_10602,_10604,_11130,_10726).
active_star1(_10602,_10604,_10720,_10726) :- not absent(_10604,_10720,_11324),not inhibited(_10602,_10604,_11324,_11384),not_normally_active(_10602,_10604,_11384,_10726).
active_star2(_10696,_10702,_11606,_11606) :- [_10696,_10702]\=[_10564,_10566].
active_star2(_10696,_10702,_10808,_10726) :- absent(_10566,_10808,_10726).
active_star2(_10564,_10566,_10808,_10726) :- not absent(_10566,_10808,_11858),not_externally_induced(_10564,_10566,_11858,_10726).
not_active(_10696,_10702,_10720,_10726) :- copy_term([_10696,_10702],[_10790,_10796]),active_star1(_10790,_10796,_10720,_10808),copy_term([_10696,_10702],[_11512,_11518]),active_star2(_11512,_11518,_10808,_10726).

normally_active_star1(_12120,_12126,_12260,_12260) :- [_12120,_12126]\=[_12026,_12028].
normally_active_star1(_12120,_12126,_12144,_12150) :- absent(_12028,_12144,_12150).
normally_active_star1(_12120,_12126,_12144,_12150) :- not absent(_12028,_12144,_12506),not_reaction(rct(_12056,_12028),_12506,_12150).
normally_active_star1(_12026,_12126,_12144,_12150) :- not absent(_12028,_12144,_12698),reaction(rct(_12056,_12028),_12698,_12748),not_active(_12026,_12056,_12748,_12150).
not_normally_active(_12120,_12126,_12144,_12150) :- normally_active_star1(_12120,_12126,_12144,_12150).

inhibited_star1(_13032,_13038,_13220,_13220) :- [_13032,_13038]\=[_12954,_12956].
inhibited_star1(_13032,_13038,_13056,_13062) :- absent(_12956,_13056,_13062).
inhibited_star1(_12954,_12956,_13056,_13062) :- not absent(_12956,_13056,_13472),not_normally_inhibited(_12954,_12956,_13472,_13062).
inhibited_star2(_13032,_13038,_13686,_13686) :- [_13032,_13038]\=[_12916,_12918].
inhibited_star2(_13032,_13038,_13144,_13062) :- absent(_12918,_13144,_13062).
inhibited_star2(_12916,_12918,_13144,_13062) :- not absent(_12918,_13144,_13938),not_externally_inhibited(_12916,_12918,_13938,_13062).
not_inhibited(_13032,_13038,_13056,_13062) :- copy_term([_13032,_13038],[_13126,_13132]),inhibited_star1(_13126,_13132,_13056,_13144),copy_term([_13032,_13038],[_13592,_13598]),inhibited_star2(_13592,_13598,_13144,_13062).

normally_inhibited_star1(_14196,_14202,_14336,_14336) :- [_14196,_14202]\=[_14106,_14108].
normally_inhibited_star1(_14196,_14202,_14220,_14226) :- absent(_14108,_14220,_14226).
normally_inhibited_star1(_14196,_14108,_14220,_14226) :- not absent(_14108,_14220,_14588),not_inhibitor(_14108,_14134,_14588,_14226).
normally_inhibited_star1(_14106,_14108,_14220,_14226) :- not absent(_14108,_14220,_14794),inhibitor(_14108,_14134,_14794,_14850),not_active(_14106,_14134,_14850,_14226).
not_normally_inhibited(_14196,_14202,_14220,_14226) :- normally_inhibited_star1(_14196,_14202,_14220,_14226).

inactive_star1(_15146,_15152,_15334,_15334) :- [_15146,_15152]\=[_15082,_15084].
inactive_star1(_15082,_15084,_15170,_15176) :- not_inhibited(_15082,_15084,_15170,_15176).
inactive_star2(_15146,_15152,_15632,_15632) :- [_15146,_15152]\=[_15026,_15028].
inactive_star2(_15146,_15152,_15258,_15176) :- active(_15026,_15028,_15258,_15176).
inactive_star2(_15146,_15152,_15258,_15176) :- not active(_15026,_15028,_15258,_15898),not_reaction(rct(_15058,_15028),_15898,_15176).
inactive_star2(_15026,_15152,_15258,_15176) :- not active(_15026,_15028,_15258,_16104),reaction(rct(_15058,_15028),_16104,_16162),not_inactive(_15026,_15058,_16162,_15176).
not_inactive(_15146,_15152,_15170,_15176) :- copy_term([_15146,_15152],[_15240,_15246]),inactive_star1(_15240,_15246,_15170,_15258),copy_term([_15146,_15152],[_15538,_15544]),inactive_star2(_15538,_15544,_15258,_15176).

externally_induced_star1(_16394,_16400,_16534,_16534) :- [_16394,_16400]\=[_16330,_16332].
externally_induced_star1(_16330,_16332,_16418,_16424) :- not_drug_active(_16330,_16332,_16418,_16424).
not_externally_induced(_16394,_16400,_16418,_16424) :- externally_induced_star1(_16394,_16400,_16418,_16424).

:- table drug_active_ab/3.
drug_active_ab(_16786,_16788,_17076) :- exists(_16786,_16800,[drug_induced(_16786,_16800,_16788)],_17012),possible_drug_effect(_16800,induce,_16788,_17012,_17076).

drug_active(_17180,_17186,_17192,_17198) :- drug_active_ab(_17180,_17186,_17274),produce_context(_17198,_17192,_17274).
drug_active_star1(_17344,_17350,_17484,_17484) :- [_17344,_17350]\=[_16786,_16788].
drug_active_star1(_16786,_17350,_17368,_17374) :- not_exists(_16786,_16800,_17368,_17374).
drug_active_star1(_16786,_17350,_17368,_17374) :- exists(_16786,_16800,_17368,_17776),not_possible_drug_effect(_16800,induce,_16788,_17776,_17374).
drug_active_star1(_16786,_16788,_17368,_17374) :- exists(_16786,_16800,_17368,_18012),possible_drug_effect(_16800,induce,_16788,_18012,_18082),not_drug_induced(_16786,_16800,_16788,_18082,_17374).
not_drug_active(_17344,_17350,_17368,_17374) :- drug_active_star1(_17344,_17350,_17368,_17374).

:- table externally_inhibited_ab/3.
externally_inhibited_ab(_18280,_18282,_18570) :- exists(_18280,_18294,[drug_inhibited(_18280,_18294,_18282)],_18506),possible_drug_effect(_18294,inhibit,_18282,_18506,_18570).

externally_inhibited(_18674,_18680,_18686,_18692) :- externally_inhibited_ab(_18674,_18680,_18768),produce_context(_18692,_18686,_18768).
externally_inhibited_star1(_18838,_18844,_18978,_18978) :- [_18838,_18844]\=[_18280,_18282].
externally_inhibited_star1(_18280,_18844,_18862,_18868) :- not_exists(_18280,_18294,_18862,_18868).
externally_inhibited_star1(_18280,_18844,_18862,_18868) :- exists(_18280,_18294,_18862,_19270),not_possible_drug_effect(_18294,inhibit,_18282,_19270,_18868).
externally_inhibited_star1(_18280,_18282,_18862,_18868) :- exists(_18280,_18294,_18862,_19506),possible_drug_effect(_18294,inhibit,_18282,_19506,_19576),not_drug_inhibited(_18280,_18294,_18282,_19576,_18868).
not_externally_inhibited(_18838,_18844,_18862,_18868) :- externally_inhibited_star1(_18838,_18844,_18862,_18868).

:- table false_ab/1.
false_star1(_19920,_19926) :- not_drug_induced(phase0,drug,_19794,_19920,_19926).
false_star1(_19920,_19926) :- drug_induced(phase0,drug,_19794,_19920,_20274),not_drug_inhibited(phase0,drug,_19794,_20274,_19926).
false_star2(_19980,_19926) :- not_drug_induced(phase0,drug,apoptosis,_19980,_19926).
not_false(_19920,_19926) :- copy_term([],[]),false_star1(_19920,_19980),copy_term([],[]),false_star2(_19980,_19926).

:- table externally_induced_ab/3.
externally_induced_ab(_21588,_21590,_21672) :- drug_active(_21588,_21590,[],_21672).

externally_induced(_21768,_21774,_21780,_21786) :- externally_induced_ab(_21768,_21774,_21862),produce_context(_21786,_21780,_21862).
active(_22042,_22044) :- not absent(_22044),not inhibited(_22042,_22044),normally_active(_22042,_22044).
active(_22004,_22006) :- not absent(_22006),externally_induced(_22004,_22006).
active(_21940,_21942,_22108,_22108) :- active(_21940,_21942).
normally_active(_22216,_22218) :- not absent(_22218),reaction(rct(_22246,_22218)),active(_22216,_22246).
normally_active(_22152,_22154,_22282,_22282) :- normally_active(_22152,_22154).
inhibited(_22428,_22430) :- not absent(_22430),normally_inhibited(_22428,_22430).
inhibited(_22390,_22392) :- not absent(_22392),externally_inhibited(_22390,_22392).
inhibited(_22326,_22328,_22478,_22478) :- inhibited(_22326,_22328).
normally_inhibited(_22586,_22588) :- not absent(_22588),inhibitor(_22588,_22614),active(_22586,_22614).
normally_inhibited(_22522,_22524,_22648,_22648) :- normally_inhibited(_22522,_22524).
inactive(_22812,_22814) :- inhibited(_22812,_22814).
inactive(_22756,_22758) :- not active(_22756,_22758),reaction(rct(_22788,_22758)),inactive(_22756,_22788).
inactive(_22692,_22694,_22848,_22848) :- inactive(_22692,_22694).

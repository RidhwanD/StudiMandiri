exists(phase0,drug).
possible_drug_effect(_630,inhibit,_634).
possible_drug_effect(_704,induce,_708).
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
exists(_3172,_3174,_3196,_3196) :- exists(_3172,_3174).
not_exists(_3172,_3174,_3266,_3266) :- not exists(_3172,_3174).
possible_drug_effect(_3360,_3362,_3364,_3392,_3392) :- possible_drug_effect(_3360,_3362,_3364).
not_possible_drug_effect(_3360,_3362,_3364,_3476,_3476) :- not possible_drug_effect(_3360,_3362,_3364).
absent(_3592,_3608,_3608) :- absent(_3592).
not_absent(_3592,_3664,_3664) :- not absent(_3592).
reaction(_3736,_3752,_3752) :- reaction(_3736).
not_reaction(_3736,_3808,_3808) :- not reaction(_3736).
inhibitor(_3880,_3882,_3904,_3904) :- inhibitor(_3880,_3882).
not_inhibitor(_3880,_3882,_3974,_3974) :- not inhibitor(_3880,_3882).
oncogene(_4068,_4084,_4084) :- oncogene(_4068).
not_oncogene(_4068,_4140,_4140) :- not oncogene(_4068).
tumor_suppressor(_4212,_4228,_4228) :- tumor_suppressor(_4212).
not_tumor_suppressor(_4212,_4284,_4284) :- not tumor_suppressor(_4212).
drug_induced(_5742,_5744,_5746,_5774,_5780) :- insert_abducible(drug_induced(_5742,_5744,_5746),_5774,_5780).
not_drug_induced(_5876,_5878,_5880,_5920,_5926) :- insert_abducible(not drug_induced(_5876,_5878,_5880),_5920,_5926).
drug_inhibited(_6022,_6024,_6026,_6054,_6060) :- insert_abducible(drug_inhibited(_6022,_6024,_6026),_6054,_6060).
not_drug_inhibited(_6156,_6158,_6160,_6200,_6206) :- insert_abducible(not drug_inhibited(_6156,_6158,_6160),_6200,_6206).
active_ab(_6394,_6396,_6704) :- not_absent(_6396,[],_6548),not_inhibited(_6394,_6396,_6548,_6646),normally_active(_6394,_6396,_6646,_6704).

active_ab(_6356,_6358,_6938) :- not_absent(_6358,[],_6888),externally_induced(_6356,_6358,_6888,_6938).

:- table active_ab/3.
active(_7046,_7052,_7058,_7064) :- active_ab(_7046,_7052,_7140),produce_context(_7064,_7058,_7140).
active_star1(_7210,_7216,_7398,_7398) :- [_7210,_7216]\=[_6394,_6396].
active_star1(_7210,_6396,_7234,_7240) :- absent(_6396,_7234,_7240).
active_star1(_6394,_6396,_7234,_7240) :- inhibited(_6394,_6396,_7234,_7240).
active_star1(_6394,_6396,_7234,_7240) :- not_normally_active(_6394,_6396,_7234,_7240).
active_star2(_7210,_7216,_7992,_7992) :- [_7210,_7216]\=[_6356,_6358].
active_star2(_7210,_6358,_7322,_7240) :- absent(_6358,_7322,_7240).
active_star2(_6356,_6358,_7322,_7240) :- not_externally_induced(_6356,_6358,_7322,_7240).
not_active(_7210,_7216,_7234,_7240) :- copy_term([_7210,_7216],[_7304,_7310]),active_star1(_7304,_7310,_7234,_7322),copy_term([_7210,_7216],[_7898,_7904]),active_star2(_7898,_7904,_7322,_7240).

normally_active_ab(_8370,_8372,_8624) :- not_absent(_8372,[],_8524),reaction(rct(_8400,_8372),_8524,_8574),active(_8370,_8400,_8574,_8624).

:- table normally_active_ab/3.
normally_active(_8732,_8738,_8744,_8750) :- normally_active_ab(_8732,_8738,_8826),produce_context(_8750,_8744,_8826).
normally_active_star1(_8896,_8902,_9036,_9036) :- [_8896,_8902]\=[_8370,_8372].
normally_active_star1(_8896,_8372,_8920,_8926) :- absent(_8372,_8920,_8926).
normally_active_star1(_8896,_8372,_8920,_8926) :- not_reaction(rct(_8400,_8372),_8920,_8926).
normally_active_star1(_8370,_8372,_8920,_8926) :- reaction(rct(_8400,_8372),_8920,_9446),not_active(_8370,_8400,_9446,_8926).
not_normally_active(_8896,_8902,_8920,_8926) :- normally_active_star1(_8896,_8902,_8920,_8926).

inhibited_ab(_9652,_9654,_9822) :- not_absent(_9654,[],_9772),normally_inhibited(_9652,_9654,_9772,_9822).

inhibited_ab(_9614,_9616,_10056) :- not_absent(_9616,[],_10006),externally_inhibited(_9614,_9616,_10006,_10056).

:- table inhibited_ab/3.
inhibited(_10164,_10170,_10176,_10182) :- inhibited_ab(_10164,_10170,_10258),produce_context(_10182,_10176,_10258).
inhibited_star1(_10328,_10334,_10516,_10516) :- [_10328,_10334]\=[_9652,_9654].
inhibited_star1(_10328,_9654,_10352,_10358) :- absent(_9654,_10352,_10358).
inhibited_star1(_9652,_9654,_10352,_10358) :- not_normally_inhibited(_9652,_9654,_10352,_10358).
inhibited_star2(_10328,_10334,_10940,_10940) :- [_10328,_10334]\=[_9614,_9616].
inhibited_star2(_10328,_9616,_10440,_10358) :- absent(_9616,_10440,_10358).
inhibited_star2(_9614,_9616,_10440,_10358) :- not_externally_inhibited(_9614,_9616,_10440,_10358).
not_inhibited(_10328,_10334,_10352,_10358) :- copy_term([_10328,_10334],[_10422,_10428]),inhibited_star1(_10422,_10428,_10352,_10440),copy_term([_10328,_10334],[_10846,_10852]),inhibited_star2(_10846,_10852,_10440,_10358).

normally_inhibited_ab(_11318,_11320,_11582) :- not_absent(_11320,[],_11468),inhibitor(_11320,_11346,_11468,_11524),active(_11318,_11346,_11524,_11582).

:- table normally_inhibited_ab/3.
normally_inhibited(_11690,_11696,_11702,_11708) :- normally_inhibited_ab(_11690,_11696,_11784),produce_context(_11708,_11702,_11784).
normally_inhibited_star1(_11854,_11860,_11994,_11994) :- [_11854,_11860]\=[_11318,_11320].
normally_inhibited_star1(_11854,_11320,_11878,_11884) :- absent(_11320,_11878,_11884).
normally_inhibited_star1(_11854,_11320,_11878,_11884) :- not_inhibitor(_11320,_11346,_11878,_11884).
normally_inhibited_star1(_11318,_11320,_11878,_11884) :- inhibitor(_11320,_11346,_11878,_12412),not_active(_11318,_11346,_12412,_11884).
not_normally_inhibited(_11854,_11860,_11878,_11884) :- normally_inhibited_star1(_11854,_11860,_11878,_11884).

inactive_ab(_12644,_12646,_12698) :- inhibited(_12644,_12646,[],_12698).

inactive_ab(_12588,_12590,_13022) :- not_active(_12588,_12590,[],_12914),reaction(rct(_12620,_12590),_12914,_12972),inactive(_12588,_12620,_12972,_13022).

:- table inactive_ab/3.
inactive(_13130,_13136,_13142,_13148) :- inactive_ab(_13130,_13136,_13224),produce_context(_13148,_13142,_13224).
inactive_star1(_13294,_13300,_13482,_13482) :- [_13294,_13300]\=[_12644,_12646].
inactive_star1(_12644,_12646,_13318,_13324) :- not_inhibited(_12644,_12646,_13318,_13324).
inactive_star2(_13294,_13300,_13780,_13780) :- [_13294,_13300]\=[_12588,_12590].
inactive_star2(_12588,_12590,_13406,_13324) :- active(_12588,_12590,_13406,_13324).
inactive_star2(_12588,_12590,_13406,_13324) :- not_reaction(rct(_12620,_12590),_13406,_13324).
inactive_star2(_12588,_12590,_13406,_13324) :- reaction(rct(_12620,_12590),_13406,_14228),not_inactive(_12588,_12620,_14228,_13324).
not_inactive(_13294,_13300,_13318,_13324) :- copy_term([_13294,_13300],[_13388,_13394]),inactive_star1(_13388,_13394,_13318,_13406),copy_term([_13294,_13300],[_13686,_13692]),inactive_star2(_13686,_13692,_13406,_13324).

externally_induced_ab(_14396,_14398,_14450) :- drug_active(_14396,_14398,[],_14450).

:- table externally_induced_ab/3.
externally_induced(_14558,_14564,_14570,_14576) :- externally_induced_ab(_14558,_14564,_14652),produce_context(_14576,_14570,_14652).
externally_induced_star1(_14722,_14728,_14862,_14862) :- [_14722,_14728]\=[_14396,_14398].
externally_induced_star1(_14396,_14398,_14746,_14752) :- not_drug_active(_14396,_14398,_14746,_14752).
not_externally_induced(_14722,_14728,_14746,_14752) :- externally_induced_star1(_14722,_14728,_14746,_14752).

drug_active_ab(_15114,_15116,_15326) :- exists(_15114,_15128,[drug_induced(_15114,_15128,_15116)],_15262),possible_drug_effect(_15128,induce,_15116,_15262,_15326).

:- table drug_active_ab/3.
drug_active(_15442,_15448,_15454,_15460) :- drug_active_ab(_15442,_15448,_15536),produce_context(_15460,_15454,_15536).
drug_active_star1(_15606,_15612,_15746,_15746) :- [_15606,_15612]\=[_15114,_15116].
drug_active_star1(_15114,_15612,_15630,_15636) :- not_exists(_15114,_15128,_15630,_15636).
drug_active_star1(_15114,_15116,_15630,_15636) :- exists(_15114,_15128,_15630,_16044),not_possible_drug_effect(_15128,induce,_15116,_16044,_15636).
drug_active_star1(_15114,_15116,_15630,_15636) :- exists(_15114,_15128,_15630,_16280),possible_drug_effect(_15128,induce,_15116,_16280,_16350),not_drug_induced(_15114,_15128,_15116,_16350,_15636).
not_drug_active(_15606,_15612,_15630,_15636) :- drug_active_star1(_15606,_15612,_15630,_15636).

externally_inhibited_ab(_16548,_16550,_16760) :- exists(_16548,_16562,[drug_inhibited(_16548,_16562,_16550)],_16696),possible_drug_effect(_16562,inhibit,_16550,_16696,_16760).

:- table externally_inhibited_ab/3.
externally_inhibited(_16876,_16882,_16888,_16894) :- externally_inhibited_ab(_16876,_16882,_16970),produce_context(_16894,_16888,_16970).
externally_inhibited_star1(_17040,_17046,_17180,_17180) :- [_17040,_17046]\=[_16548,_16550].
externally_inhibited_star1(_16548,_17046,_17064,_17070) :- not_exists(_16548,_16562,_17064,_17070).
externally_inhibited_star1(_16548,_16550,_17064,_17070) :- exists(_16548,_16562,_17064,_17478),not_possible_drug_effect(_16562,inhibit,_16550,_17478,_17070).
externally_inhibited_star1(_16548,_16550,_17064,_17070) :- exists(_16548,_16562,_17064,_17714),possible_drug_effect(_16562,inhibit,_16550,_17714,_17784),not_drug_inhibited(_16548,_16562,_16550,_17784,_17070).
not_externally_inhibited(_17040,_17046,_17064,_17070) :- externally_inhibited_star1(_17040,_17046,_17064,_17070).

false_star1(_18032,_18038) :- not_drug_induced(phase0,drug,_18002,_18032,_18038).
false_star1(_18032,_18038) :- drug_induced(phase0,drug,_18002,_18032,_18386),not_drug_inhibited(phase0,drug,_18002,_18386,_18038).
false_star2(_18092,_18038) :- not_drug_induced(phase0,drug,apoptosis,_18092,_18038).
not_false(_18032,_18038) :- copy_term([],[]),false_star1(_18032,_18092),copy_term([],[]),false_star2(_18092,_18038).


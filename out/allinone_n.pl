exists(phase0,drug).
possible_drug_effect(_4710,inhibit,_4714).
possible_drug_effect(_4784,induce,_4788).
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
exists(_7252,_7254,_7276,_7276) :- exists(_7252,_7254).
not_exists(_7252,_7254,_7346,_7346) :- not exists(_7252,_7254).
possible_drug_effect(_7440,_7442,_7444,_7472,_7472) :- possible_drug_effect(_7440,_7442,_7444).
not_possible_drug_effect(_7440,_7442,_7444,_7556,_7556) :- not possible_drug_effect(_7440,_7442,_7444).
absent(_7672,_7688,_7688) :- absent(_7672).
not_absent(_7672,_7744,_7744) :- not absent(_7672).
reaction(_7816,_7832,_7832) :- reaction(_7816).
not_reaction(_7816,_7888,_7888) :- not reaction(_7816).
inhibitor(_7960,_7962,_7984,_7984) :- inhibitor(_7960,_7962).
not_inhibitor(_7960,_7962,_8054,_8054) :- not inhibitor(_7960,_7962).
oncogene(_8148,_8164,_8164) :- oncogene(_8148).
not_oncogene(_8148,_8220,_8220) :- not oncogene(_8148).
tumor_suppressor(_8292,_8308,_8308) :- tumor_suppressor(_8292).
not_tumor_suppressor(_8292,_8364,_8364) :- not tumor_suppressor(_8292).
drug_induced(_9822,_9824,_9826,_9854,_9860) :- insert_abducible(drug_induced(_9822,_9824,_9826),_9854,_9860).
not_drug_induced(_9956,_9958,_9960,_10000,_10006) :- insert_abducible(not drug_induced(_9956,_9958,_9960),_10000,_10006).
drug_inhibited(_10102,_10104,_10106,_10134,_10140) :- insert_abducible(drug_inhibited(_10102,_10104,_10106),_10134,_10140).
not_drug_inhibited(_10236,_10238,_10240,_10280,_10286) :- insert_abducible(not drug_inhibited(_10236,_10238,_10240),_10280,_10286).
active_ab(_10474,_10476,_10784) :- not_absent(_10476,[],_10628),not_inhibited(_10474,_10476,_10628,_10726),normally_active(_10474,_10476,_10726,_10784).

active_ab(_10436,_10438,_11018) :- not_absent(_10438,[],_10968),externally_induced(_10436,_10438,_10968,_11018).

:- table active_ab/3.
active(_11126,_11132,_11138,_11144) :- active_ab(_11126,_11132,_11220),produce_context(_11144,_11138,_11220).
active_star1(_11290,_11296,_11478,_11478) :- [_11290,_11296]\=[_10474,_10476].
active_star1(_11290,_10476,_11314,_11320) :- absent(_10476,_11314,_11320).
active_star1(_10474,_10476,_11314,_11320) :- inhibited(_10474,_10476,_11314,_11320).
active_star1(_10474,_10476,_11314,_11320) :- not_normally_active(_10474,_10476,_11314,_11320).
active_star2(_11290,_11296,_12072,_12072) :- [_11290,_11296]\=[_10436,_10438].
active_star2(_11290,_10438,_11402,_11320) :- absent(_10438,_11402,_11320).
active_star2(_10436,_10438,_11402,_11320) :- not_externally_induced(_10436,_10438,_11402,_11320).
not_active(_11290,_11296,_11314,_11320) :- copy_term([_11290,_11296],[_11384,_11390]),active_star1(_11384,_11390,_11314,_11402),copy_term([_11290,_11296],[_11978,_11984]),active_star2(_11978,_11984,_11402,_11320).

normally_active_ab(_12450,_12452,_12704) :- not_absent(_12452,[],_12604),reaction(rct(_12480,_12452),_12604,_12654),active(_12450,_12480,_12654,_12704).

:- table normally_active_ab/3.
normally_active(_12812,_12818,_12824,_12830) :- normally_active_ab(_12812,_12818,_12906),produce_context(_12830,_12824,_12906).
normally_active_star1(_12976,_12982,_13116,_13116) :- [_12976,_12982]\=[_12450,_12452].
normally_active_star1(_12976,_12452,_13000,_13006) :- absent(_12452,_13000,_13006).
normally_active_star1(_12976,_12452,_13000,_13006) :- not_reaction(rct(_12480,_12452),_13000,_13006).
normally_active_star1(_12450,_12452,_13000,_13006) :- reaction(rct(_12480,_12452),_13000,_13526),not_active(_12450,_12480,_13526,_13006).
not_normally_active(_12976,_12982,_13000,_13006) :- normally_active_star1(_12976,_12982,_13000,_13006).

inhibited_ab(_13732,_13734,_13902) :- not_absent(_13734,[],_13852),normally_inhibited(_13732,_13734,_13852,_13902).

inhibited_ab(_13694,_13696,_14136) :- not_absent(_13696,[],_14086),externally_inhibited(_13694,_13696,_14086,_14136).

:- table inhibited_ab/3.
inhibited(_14244,_14250,_14256,_14262) :- inhibited_ab(_14244,_14250,_14338),produce_context(_14262,_14256,_14338).
inhibited_star1(_14408,_14414,_14596,_14596) :- [_14408,_14414]\=[_13732,_13734].
inhibited_star1(_14408,_13734,_14432,_14438) :- absent(_13734,_14432,_14438).
inhibited_star1(_13732,_13734,_14432,_14438) :- not_normally_inhibited(_13732,_13734,_14432,_14438).
inhibited_star2(_14408,_14414,_15020,_15020) :- [_14408,_14414]\=[_13694,_13696].
inhibited_star2(_14408,_13696,_14520,_14438) :- absent(_13696,_14520,_14438).
inhibited_star2(_13694,_13696,_14520,_14438) :- not_externally_inhibited(_13694,_13696,_14520,_14438).
not_inhibited(_14408,_14414,_14432,_14438) :- copy_term([_14408,_14414],[_14502,_14508]),inhibited_star1(_14502,_14508,_14432,_14520),copy_term([_14408,_14414],[_14926,_14932]),inhibited_star2(_14926,_14932,_14520,_14438).

normally_inhibited_ab(_15398,_15400,_15662) :- not_absent(_15400,[],_15548),inhibitor(_15400,_15426,_15548,_15604),active(_15398,_15426,_15604,_15662).

:- table normally_inhibited_ab/3.
normally_inhibited(_15770,_15776,_15782,_15788) :- normally_inhibited_ab(_15770,_15776,_15864),produce_context(_15788,_15782,_15864).
normally_inhibited_star1(_15934,_15940,_16074,_16074) :- [_15934,_15940]\=[_15398,_15400].
normally_inhibited_star1(_15934,_15400,_15958,_15964) :- absent(_15400,_15958,_15964).
normally_inhibited_star1(_15934,_15400,_15958,_15964) :- not_inhibitor(_15400,_15426,_15958,_15964).
normally_inhibited_star1(_15398,_15400,_15958,_15964) :- inhibitor(_15400,_15426,_15958,_16492),not_active(_15398,_15426,_16492,_15964).
not_normally_inhibited(_15934,_15940,_15958,_15964) :- normally_inhibited_star1(_15934,_15940,_15958,_15964).

inactive_ab(_16724,_16726,_16778) :- inhibited(_16724,_16726,[],_16778).

inactive_ab(_16668,_16670,_17102) :- not_active(_16668,_16670,[],_16994),reaction(rct(_16700,_16670),_16994,_17052),inactive(_16668,_16700,_17052,_17102).

:- table inactive_ab/3.
inactive(_17210,_17216,_17222,_17228) :- inactive_ab(_17210,_17216,_17304),produce_context(_17228,_17222,_17304).
inactive_star1(_17374,_17380,_17562,_17562) :- [_17374,_17380]\=[_16724,_16726].
inactive_star1(_16724,_16726,_17398,_17404) :- not_inhibited(_16724,_16726,_17398,_17404).
inactive_star2(_17374,_17380,_17860,_17860) :- [_17374,_17380]\=[_16668,_16670].
inactive_star2(_16668,_16670,_17486,_17404) :- active(_16668,_16670,_17486,_17404).
inactive_star2(_16668,_16670,_17486,_17404) :- not_reaction(rct(_16700,_16670),_17486,_17404).
inactive_star2(_16668,_16670,_17486,_17404) :- reaction(rct(_16700,_16670),_17486,_18308),not_inactive(_16668,_16700,_18308,_17404).
not_inactive(_17374,_17380,_17398,_17404) :- copy_term([_17374,_17380],[_17468,_17474]),inactive_star1(_17468,_17474,_17398,_17486),copy_term([_17374,_17380],[_17766,_17772]),inactive_star2(_17766,_17772,_17486,_17404).

externally_induced_ab(_18476,_18478,_18530) :- drug_active(_18476,_18478,[],_18530).

:- table externally_induced_ab/3.
externally_induced(_18638,_18644,_18650,_18656) :- externally_induced_ab(_18638,_18644,_18732),produce_context(_18656,_18650,_18732).
externally_induced_star1(_18802,_18808,_18942,_18942) :- [_18802,_18808]\=[_18476,_18478].
externally_induced_star1(_18476,_18478,_18826,_18832) :- not_drug_active(_18476,_18478,_18826,_18832).
not_externally_induced(_18802,_18808,_18826,_18832) :- externally_induced_star1(_18802,_18808,_18826,_18832).

drug_active_ab(_19194,_19196,_19406) :- exists(_19194,_19208,[drug_induced(_19194,_19208,_19196)],_19342),possible_drug_effect(_19208,induce,_19196,_19342,_19406).

:- table drug_active_ab/3.
drug_active(_19522,_19528,_19534,_19540) :- drug_active_ab(_19522,_19528,_19616),produce_context(_19540,_19534,_19616).
drug_active_star1(_19686,_19692,_19826,_19826) :- [_19686,_19692]\=[_19194,_19196].
drug_active_star1(_19194,_19692,_19710,_19716) :- not_exists(_19194,_19208,_19710,_19716).
drug_active_star1(_19194,_19196,_19710,_19716) :- exists(_19194,_19208,_19710,_20124),not_possible_drug_effect(_19208,induce,_19196,_20124,_19716).
drug_active_star1(_19194,_19196,_19710,_19716) :- exists(_19194,_19208,_19710,_20360),possible_drug_effect(_19208,induce,_19196,_20360,_20430),not_drug_induced(_19194,_19208,_19196,_20430,_19716).
not_drug_active(_19686,_19692,_19710,_19716) :- drug_active_star1(_19686,_19692,_19710,_19716).

externally_inhibited_ab(_20628,_20630,_20840) :- exists(_20628,_20642,[drug_inhibited(_20628,_20642,_20630)],_20776),possible_drug_effect(_20642,inhibit,_20630,_20776,_20840).

:- table externally_inhibited_ab/3.
externally_inhibited(_20956,_20962,_20968,_20974) :- externally_inhibited_ab(_20956,_20962,_21050),produce_context(_20974,_20968,_21050).
externally_inhibited_star1(_21120,_21126,_21260,_21260) :- [_21120,_21126]\=[_20628,_20630].
externally_inhibited_star1(_20628,_21126,_21144,_21150) :- not_exists(_20628,_20642,_21144,_21150).
externally_inhibited_star1(_20628,_20630,_21144,_21150) :- exists(_20628,_20642,_21144,_21558),not_possible_drug_effect(_20642,inhibit,_20630,_21558,_21150).
externally_inhibited_star1(_20628,_20630,_21144,_21150) :- exists(_20628,_20642,_21144,_21794),possible_drug_effect(_20642,inhibit,_20630,_21794,_21864),not_drug_inhibited(_20628,_20642,_20630,_21864,_21150).
not_externally_inhibited(_21120,_21126,_21144,_21150) :- externally_inhibited_star1(_21120,_21126,_21144,_21150).

false_star1(_22340,_22346) :- true,validate_negation([drug_induced(phase0,drug,_22082),drug_inhibited(phase0,drug,_22082)],_22340,_22346).

false_star2(_22552,_22558) :- true,validate_negation([drug_induced(phase0,drug,apoptosis)],_22552,_22558).

not_false(_22112,_22118) :- copy_term([],[]),false_star1(_22112,_22172),copy_term([],[]),false_star2(_22172,_22118).


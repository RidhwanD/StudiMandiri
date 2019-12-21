exists(phase0,drug).
possible_drug_effect(_4716,inhibit,_4720).
possible_drug_effect(_4790,induce,_4794).
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
exists(_7258,_7260,_7282,_7282) :- exists(_7258,_7260).
not_exists(_7258,_7260,_7352,_7352) :- not exists(_7258,_7260).
possible_drug_effect(_7446,_7448,_7450,_7478,_7478) :- possible_drug_effect(_7446,_7448,_7450).
not_possible_drug_effect(_7446,_7448,_7450,_7562,_7562) :- not possible_drug_effect(_7446,_7448,_7450).
absent(_7678,_7694,_7694) :- absent(_7678).
not_absent(_7678,_7750,_7750) :- not absent(_7678).
reaction(_7822,_7838,_7838) :- reaction(_7822).
not_reaction(_7822,_7894,_7894) :- not reaction(_7822).
inhibitor(_7966,_7968,_7990,_7990) :- inhibitor(_7966,_7968).
not_inhibitor(_7966,_7968,_8060,_8060) :- not inhibitor(_7966,_7968).
oncogene(_8154,_8170,_8170) :- oncogene(_8154).
not_oncogene(_8154,_8226,_8226) :- not oncogene(_8154).
tumor_suppressor(_8298,_8314,_8314) :- tumor_suppressor(_8298).
not_tumor_suppressor(_8298,_8370,_8370) :- not tumor_suppressor(_8298).
drug_induced(_9828,_9830,_9832,_9860,_9866) :- insert_abducible(drug_induced(_9828,_9830,_9832),_9860,_9866).
not_drug_induced(_9962,_9964,_9966,_10006,_10012) :- insert_abducible(not drug_induced(_9962,_9964,_9966),_10006,_10012).
drug_inhibited(_10108,_10110,_10112,_10140,_10146) :- insert_abducible(drug_inhibited(_10108,_10110,_10112),_10140,_10146).
not_drug_inhibited(_10242,_10244,_10246,_10286,_10292) :- insert_abducible(not drug_inhibited(_10242,_10244,_10246),_10286,_10292).
active_ab(_10480,_10482,_10790) :- not_absent(_10482,[],_10634),not_inhibited(_10480,_10482,_10634,_10732),normally_active(_10480,_10482,_10732,_10790).

active_ab(_10442,_10444,_11024) :- not_absent(_10444,[],_10974),externally_induced(_10442,_10444,_10974,_11024).

:- table active_ab/3.
active(_11132,_11138,_11144,_11150) :- active_ab(_11132,_11138,_11226),produce_context(_11150,_11144,_11226).
active_star1(_11296,_11302,_11484,_11484) :- [_11296,_11302]\=[_10480,_10482].
active_star1(_11296,_10482,_11320,_11326) :- absent(_10482,_11320,_11326).
active_star1(_10480,_10482,_11320,_11326) :- inhibited(_10480,_10482,_11320,_11326).
active_star1(_10480,_10482,_11320,_11326) :- not_normally_active(_10480,_10482,_11320,_11326).
active_star2(_11296,_11302,_12078,_12078) :- [_11296,_11302]\=[_10442,_10444].
active_star2(_11296,_10444,_11408,_11326) :- absent(_10444,_11408,_11326).
active_star2(_10442,_10444,_11408,_11326) :- not_externally_induced(_10442,_10444,_11408,_11326).
not_active(_11296,_11302,_11320,_11326) :- copy_term([_11296,_11302],[_11390,_11396]),active_star1(_11390,_11396,_11320,_11408),copy_term([_11296,_11302],[_11984,_11990]),active_star2(_11984,_11990,_11408,_11326).

normally_active_ab(_12456,_12458,_12710) :- not_absent(_12458,[],_12610),reaction(rct(_12486,_12458),_12610,_12660),active(_12456,_12486,_12660,_12710).

:- table normally_active_ab/3.
normally_active(_12818,_12824,_12830,_12836) :- normally_active_ab(_12818,_12824,_12912),produce_context(_12836,_12830,_12912).
normally_active_star1(_12982,_12988,_13122,_13122) :- [_12982,_12988]\=[_12456,_12458].
normally_active_star1(_12982,_12458,_13006,_13012) :- absent(_12458,_13006,_13012).
normally_active_star1(_12982,_12458,_13006,_13012) :- not_reaction(rct(_12486,_12458),_13006,_13012).
normally_active_star1(_12456,_12458,_13006,_13012) :- reaction(rct(_12486,_12458),_13006,_13532),not_active(_12456,_12486,_13532,_13012).
not_normally_active(_12982,_12988,_13006,_13012) :- normally_active_star1(_12982,_12988,_13006,_13012).

inhibited_ab(_13738,_13740,_13908) :- not_absent(_13740,[],_13858),normally_inhibited(_13738,_13740,_13858,_13908).

inhibited_ab(_13700,_13702,_14142) :- not_absent(_13702,[],_14092),externally_inhibited(_13700,_13702,_14092,_14142).

:- table inhibited_ab/3.
inhibited(_14250,_14256,_14262,_14268) :- inhibited_ab(_14250,_14256,_14344),produce_context(_14268,_14262,_14344).
inhibited_star1(_14414,_14420,_14602,_14602) :- [_14414,_14420]\=[_13738,_13740].
inhibited_star1(_14414,_13740,_14438,_14444) :- absent(_13740,_14438,_14444).
inhibited_star1(_13738,_13740,_14438,_14444) :- not_normally_inhibited(_13738,_13740,_14438,_14444).
inhibited_star2(_14414,_14420,_15026,_15026) :- [_14414,_14420]\=[_13700,_13702].
inhibited_star2(_14414,_13702,_14526,_14444) :- absent(_13702,_14526,_14444).
inhibited_star2(_13700,_13702,_14526,_14444) :- not_externally_inhibited(_13700,_13702,_14526,_14444).
not_inhibited(_14414,_14420,_14438,_14444) :- copy_term([_14414,_14420],[_14508,_14514]),inhibited_star1(_14508,_14514,_14438,_14526),copy_term([_14414,_14420],[_14932,_14938]),inhibited_star2(_14932,_14938,_14526,_14444).

normally_inhibited_ab(_15404,_15406,_15668) :- not_absent(_15406,[],_15554),inhibitor(_15406,_15432,_15554,_15610),active(_15404,_15432,_15610,_15668).

:- table normally_inhibited_ab/3.
normally_inhibited(_15776,_15782,_15788,_15794) :- normally_inhibited_ab(_15776,_15782,_15870),produce_context(_15794,_15788,_15870).
normally_inhibited_star1(_15940,_15946,_16080,_16080) :- [_15940,_15946]\=[_15404,_15406].
normally_inhibited_star1(_15940,_15406,_15964,_15970) :- absent(_15406,_15964,_15970).
normally_inhibited_star1(_15940,_15406,_15964,_15970) :- not_inhibitor(_15406,_15432,_15964,_15970).
normally_inhibited_star1(_15404,_15406,_15964,_15970) :- inhibitor(_15406,_15432,_15964,_16498),not_active(_15404,_15432,_16498,_15970).
not_normally_inhibited(_15940,_15946,_15964,_15970) :- normally_inhibited_star1(_15940,_15946,_15964,_15970).

inactive_ab(_16730,_16732,_16784) :- inhibited(_16730,_16732,[],_16784).

inactive_ab(_16674,_16676,_17108) :- not_active(_16674,_16676,[],_17000),reaction(rct(_16706,_16676),_17000,_17058),inactive(_16674,_16706,_17058,_17108).

:- table inactive_ab/3.
inactive(_17216,_17222,_17228,_17234) :- inactive_ab(_17216,_17222,_17310),produce_context(_17234,_17228,_17310).
inactive_star1(_17380,_17386,_17568,_17568) :- [_17380,_17386]\=[_16730,_16732].
inactive_star1(_16730,_16732,_17404,_17410) :- not_inhibited(_16730,_16732,_17404,_17410).
inactive_star2(_17380,_17386,_17866,_17866) :- [_17380,_17386]\=[_16674,_16676].
inactive_star2(_16674,_16676,_17492,_17410) :- active(_16674,_16676,_17492,_17410).
inactive_star2(_16674,_16676,_17492,_17410) :- not_reaction(rct(_16706,_16676),_17492,_17410).
inactive_star2(_16674,_16676,_17492,_17410) :- reaction(rct(_16706,_16676),_17492,_18314),not_inactive(_16674,_16706,_18314,_17410).
not_inactive(_17380,_17386,_17404,_17410) :- copy_term([_17380,_17386],[_17474,_17480]),inactive_star1(_17474,_17480,_17404,_17492),copy_term([_17380,_17386],[_17772,_17778]),inactive_star2(_17772,_17778,_17492,_17410).

externally_induced_ab(_18482,_18484,_18536) :- drug_active(_18482,_18484,[],_18536).

:- table externally_induced_ab/3.
externally_induced(_18644,_18650,_18656,_18662) :- externally_induced_ab(_18644,_18650,_18738),produce_context(_18662,_18656,_18738).
externally_induced_star1(_18808,_18814,_18948,_18948) :- [_18808,_18814]\=[_18482,_18484].
externally_induced_star1(_18482,_18484,_18832,_18838) :- not_drug_active(_18482,_18484,_18832,_18838).
not_externally_induced(_18808,_18814,_18832,_18838) :- externally_induced_star1(_18808,_18814,_18832,_18838).

drug_active_ab(_19200,_19202,_19412) :- exists(_19200,_19214,[drug_induced(_19200,_19214,_19202)],_19348),possible_drug_effect(_19214,induce,_19202,_19348,_19412).

:- table drug_active_ab/3.
drug_active(_19528,_19534,_19540,_19546) :- drug_active_ab(_19528,_19534,_19622),produce_context(_19546,_19540,_19622).
drug_active_star1(_19692,_19698,_19832,_19832) :- [_19692,_19698]\=[_19200,_19202].
drug_active_star1(_19200,_19698,_19716,_19722) :- not_exists(_19200,_19214,_19716,_19722).
drug_active_star1(_19200,_19202,_19716,_19722) :- exists(_19200,_19214,_19716,_20130),not_possible_drug_effect(_19214,induce,_19202,_20130,_19722).
drug_active_star1(_19200,_19202,_19716,_19722) :- exists(_19200,_19214,_19716,_20366),possible_drug_effect(_19214,induce,_19202,_20366,_20436),not_drug_induced(_19200,_19214,_19202,_20436,_19722).
not_drug_active(_19692,_19698,_19716,_19722) :- drug_active_star1(_19692,_19698,_19716,_19722).

externally_inhibited_ab(_20634,_20636,_20846) :- exists(_20634,_20648,[drug_inhibited(_20634,_20648,_20636)],_20782),possible_drug_effect(_20648,inhibit,_20636,_20782,_20846).

:- table externally_inhibited_ab/3.
externally_inhibited(_20962,_20968,_20974,_20980) :- externally_inhibited_ab(_20962,_20968,_21056),produce_context(_20980,_20974,_21056).
externally_inhibited_star1(_21126,_21132,_21266,_21266) :- [_21126,_21132]\=[_20634,_20636].
externally_inhibited_star1(_20634,_21132,_21150,_21156) :- not_exists(_20634,_20648,_21150,_21156).
externally_inhibited_star1(_20634,_20636,_21150,_21156) :- exists(_20634,_20648,_21150,_21564),not_possible_drug_effect(_20648,inhibit,_20636,_21564,_21156).
externally_inhibited_star1(_20634,_20636,_21150,_21156) :- exists(_20634,_20648,_21150,_21800),possible_drug_effect(_20648,inhibit,_20636,_21800,_21870),not_drug_inhibited(_20634,_20648,_20636,_21870,_21156).
not_externally_inhibited(_21126,_21132,_21150,_21156) :- externally_inhibited_star1(_21126,_21132,_21150,_21156).

false_star1(_22154,_22256) :- not_drug_induced(phase0,drug,_22088,_22154,_22256).
false_star1(_22154,_22256) :- drug_induced(phase0,drug,_22088,_22154,_22448),not_drug_inhibited(phase0,drug,_22088,_22448,_22256).
false_star2(_22160,_22256) :- not_drug_induced(phase0,drug,apoptosis,_22160,_22256).
not_false :- copy_term([],[]),false_star1,copy_term([],[]),false_star2.
:- not_false.

exists(phase0,drug).
possible_drug_effect(_4728,inhibit,_4732).
possible_drug_effect(_4802,induce,_4806).
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
exists(_7270,_7272,_7294,_7294) :- exists(_7270,_7272).
not_exists(_7270,_7272,_7364,_7364) :- not exists(_7270,_7272).
possible_drug_effect(_7458,_7460,_7462,_7490,_7490) :- possible_drug_effect(_7458,_7460,_7462).
not_possible_drug_effect(_7458,_7460,_7462,_7574,_7574) :- not possible_drug_effect(_7458,_7460,_7462).
absent(_7690,_7706,_7706) :- absent(_7690).
not_absent(_7690,_7762,_7762) :- not absent(_7690).
reaction(_7834,_7850,_7850) :- reaction(_7834).
not_reaction(_7834,_7906,_7906) :- not reaction(_7834).
inhibitor(_7978,_7980,_8002,_8002) :- inhibitor(_7978,_7980).
not_inhibitor(_7978,_7980,_8072,_8072) :- not inhibitor(_7978,_7980).
oncogene(_8166,_8182,_8182) :- oncogene(_8166).
not_oncogene(_8166,_8238,_8238) :- not oncogene(_8166).
tumor_suppressor(_8310,_8326,_8326) :- tumor_suppressor(_8310).
not_tumor_suppressor(_8310,_8382,_8382) :- not tumor_suppressor(_8310).
drug_induced(_11066,_11068,_11070,_11098,_11104) :- insert_abducible(drug_induced(_11066,_11068,_11070),_11098,_11104).
not_drug_induced(_11200,_11202,_11204,_11244,_11250) :- insert_abducible(not drug_induced(_11200,_11202,_11204),_11244,_11250).
drug_inhibited(_11346,_11348,_11350,_11378,_11384) :- insert_abducible(drug_inhibited(_11346,_11348,_11350),_11378,_11384).
not_drug_inhibited(_11480,_11482,_11484,_11524,_11530) :- insert_abducible(not drug_inhibited(_11480,_11482,_11484),_11524,_11530).
false_star1(_11730,_11736) :- not_drug_induced(phase0,drug,_11700,_11730,_11736).
false_star1(_11730,_11736) :- drug_induced(phase0,drug,_11700,_11730,_12084),not_drug_inhibited(phase0,drug,_11700,_12084,_11736).
false_star2(_11790,_11736) :- not_drug_induced(phase0,drug,apoptosis,_11790,_11736).
not_false(_11730,_11736) :- copy_term([],[]),false_star1(_11730,_11790),copy_term([],[]),false_star2(_11790,_11736).

externally_inhibited_ab(_12516,_12518,_12728) :- exists(_12516,_12530,[drug_inhibited(_12516,_12530,_12518)],_12664),possible_drug_effect(_12530,inhibit,_12518,_12664,_12728).

:- table externally_inhibited_ab/3.
externally_inhibited(_12844,_12850,_12856,_12862) :- externally_inhibited_ab(_12844,_12850,_12938),produce_context(_12862,_12856,_12938).
externally_inhibited_star1(_13008,_13014,_13148,_13148) :- [_13008,_13014]\=[_12516,_12518].
externally_inhibited_star1(_12516,_13014,_13032,_13038) :- not_exists(_12516,_12530,_13032,_13038).
externally_inhibited_star1(_12516,_12518,_13032,_13038) :- exists(_12516,_12530,_13032,_13446),not_possible_drug_effect(_12530,inhibit,_12518,_13446,_13038).
externally_inhibited_star1(_12516,_12518,_13032,_13038) :- exists(_12516,_12530,_13032,_13682),possible_drug_effect(_12530,inhibit,_12518,_13682,_13752),not_drug_inhibited(_12516,_12530,_12518,_13752,_13038).
not_externally_inhibited(_13008,_13014,_13032,_13038) :- externally_inhibited_star1(_13008,_13014,_13032,_13038).

drug_active_ab(_13950,_13952,_14162) :- exists(_13950,_13964,[drug_induced(_13950,_13964,_13952)],_14098),possible_drug_effect(_13964,induce,_13952,_14098,_14162).

:- table drug_active_ab/3.
drug_active(_14278,_14284,_14290,_14296) :- drug_active_ab(_14278,_14284,_14372),produce_context(_14296,_14290,_14372).
drug_active_star1(_14442,_14448,_14582,_14582) :- [_14442,_14448]\=[_13950,_13952].
drug_active_star1(_13950,_14448,_14466,_14472) :- not_exists(_13950,_13964,_14466,_14472).
drug_active_star1(_13950,_13952,_14466,_14472) :- exists(_13950,_13964,_14466,_14880),not_possible_drug_effect(_13964,induce,_13952,_14880,_14472).
drug_active_star1(_13950,_13952,_14466,_14472) :- exists(_13950,_13964,_14466,_15116),possible_drug_effect(_13964,induce,_13952,_15116,_15186),not_drug_induced(_13950,_13964,_13952,_15186,_14472).
not_drug_active(_14442,_14448,_14466,_14472) :- drug_active_star1(_14442,_14448,_14466,_14472).

externally_induced_ab(_15384,_15386,_15438) :- drug_active(_15384,_15386,[],_15438).

:- table externally_induced_ab/3.
externally_induced(_15546,_15552,_15558,_15564) :- externally_induced_ab(_15546,_15552,_15640),produce_context(_15564,_15558,_15640).
externally_induced_star1(_15710,_15716,_15850,_15850) :- [_15710,_15716]\=[_15384,_15386].
externally_induced_star1(_15384,_15386,_15734,_15740) :- not_drug_active(_15384,_15386,_15734,_15740).
not_externally_induced(_15710,_15716,_15734,_15740) :- externally_induced_star1(_15710,_15716,_15734,_15740).

inactive_ab(_16158,_16160,_16212) :- inhibited(_16158,_16160,[],_16212).

inactive_ab(_16102,_16104,_16536) :- not_active(_16102,_16104,[],_16428),reaction(rct(_16134,_16104),_16428,_16486),inactive(_16102,_16134,_16486,_16536).

:- table inactive_ab/3.
inactive(_16644,_16650,_16656,_16662) :- inactive_ab(_16644,_16650,_16738),produce_context(_16662,_16656,_16738).
inactive_star1(_16808,_16814,_16996,_16996) :- [_16808,_16814]\=[_16158,_16160].
inactive_star1(_16158,_16160,_16832,_16838) :- not_inhibited(_16158,_16160,_16832,_16838).
inactive_star2(_16808,_16814,_17294,_17294) :- [_16808,_16814]\=[_16102,_16104].
inactive_star2(_16102,_16104,_16920,_16838) :- active(_16102,_16104,_16920,_16838).
inactive_star2(_16102,_16104,_16920,_16838) :- not_reaction(rct(_16134,_16104),_16920,_16838).
inactive_star2(_16102,_16104,_16920,_16838) :- reaction(rct(_16134,_16104),_16920,_17742),not_inactive(_16102,_16134,_17742,_16838).
not_inactive(_16808,_16814,_16832,_16838) :- copy_term([_16808,_16814],[_16902,_16908]),inactive_star1(_16902,_16908,_16832,_16920),copy_term([_16808,_16814],[_17200,_17206]),inactive_star2(_17200,_17206,_16920,_16838).

normally_inhibited_ab(_17910,_17912,_18174) :- not_absent(_17912,[],_18060),inhibitor(_17912,_17938,_18060,_18116),active(_17910,_17938,_18116,_18174).

:- table normally_inhibited_ab/3.
normally_inhibited(_18282,_18288,_18294,_18300) :- normally_inhibited_ab(_18282,_18288,_18376),produce_context(_18300,_18294,_18376).
normally_inhibited_star1(_18446,_18452,_18586,_18586) :- [_18446,_18452]\=[_17910,_17912].
normally_inhibited_star1(_18446,_17912,_18470,_18476) :- absent(_17912,_18470,_18476).
normally_inhibited_star1(_18446,_17912,_18470,_18476) :- not_inhibitor(_17912,_17938,_18470,_18476).
normally_inhibited_star1(_17910,_17912,_18470,_18476) :- inhibitor(_17912,_17938,_18470,_19004),not_active(_17910,_17938,_19004,_18476).
not_normally_inhibited(_18446,_18452,_18470,_18476) :- normally_inhibited_star1(_18446,_18452,_18470,_18476).

inhibited_ab(_19218,_19220,_19388) :- not_absent(_19220,[],_19338),normally_inhibited(_19218,_19220,_19338,_19388).

inhibited_ab(_19180,_19182,_19622) :- not_absent(_19182,[],_19572),externally_inhibited(_19180,_19182,_19572,_19622).

:- table inhibited_ab/3.
inhibited(_19730,_19736,_19742,_19748) :- inhibited_ab(_19730,_19736,_19824),produce_context(_19748,_19742,_19824).
inhibited_star1(_19894,_19900,_20082,_20082) :- [_19894,_19900]\=[_19218,_19220].
inhibited_star1(_19894,_19220,_19918,_19924) :- absent(_19220,_19918,_19924).
inhibited_star1(_19218,_19220,_19918,_19924) :- not_normally_inhibited(_19218,_19220,_19918,_19924).
inhibited_star2(_19894,_19900,_20506,_20506) :- [_19894,_19900]\=[_19180,_19182].
inhibited_star2(_19894,_19182,_20006,_19924) :- absent(_19182,_20006,_19924).
inhibited_star2(_19180,_19182,_20006,_19924) :- not_externally_inhibited(_19180,_19182,_20006,_19924).
not_inhibited(_19894,_19900,_19918,_19924) :- copy_term([_19894,_19900],[_19988,_19994]),inhibited_star1(_19988,_19994,_19918,_20006),copy_term([_19894,_19900],[_20412,_20418]),inhibited_star2(_20412,_20418,_20006,_19924).

normally_active_ab(_20884,_20886,_21138) :- not_absent(_20886,[],_21038),reaction(rct(_20914,_20886),_21038,_21088),active(_20884,_20914,_21088,_21138).

:- table normally_active_ab/3.
normally_active(_21246,_21252,_21258,_21264) :- normally_active_ab(_21246,_21252,_21340),produce_context(_21264,_21258,_21340).
normally_active_star1(_21410,_21416,_21550,_21550) :- [_21410,_21416]\=[_20884,_20886].
normally_active_star1(_21410,_20886,_21434,_21440) :- absent(_20886,_21434,_21440).
normally_active_star1(_21410,_20886,_21434,_21440) :- not_reaction(rct(_20914,_20886),_21434,_21440).
normally_active_star1(_20884,_20886,_21434,_21440) :- reaction(rct(_20914,_20886),_21434,_21960),not_active(_20884,_20914,_21960,_21440).
not_normally_active(_21410,_21416,_21434,_21440) :- normally_active_star1(_21410,_21416,_21434,_21440).

active_ab(_22166,_22168,_22476) :- not_absent(_22168,[],_22320),not_inhibited(_22166,_22168,_22320,_22418),normally_active(_22166,_22168,_22418,_22476).

active_ab(_22128,_22130,_22710) :- not_absent(_22130,[],_22660),externally_induced(_22128,_22130,_22660,_22710).

:- table active_ab/3.
active(_22818,_22824,_22830,_22836) :- active_ab(_22818,_22824,_22912),produce_context(_22836,_22830,_22912).
active_star1(_22982,_22988,_23170,_23170) :- [_22982,_22988]\=[_22166,_22168].
active_star1(_22982,_22168,_23006,_23012) :- absent(_22168,_23006,_23012).
active_star1(_22166,_22168,_23006,_23012) :- inhibited(_22166,_22168,_23006,_23012).
active_star1(_22166,_22168,_23006,_23012) :- not_normally_active(_22166,_22168,_23006,_23012).
active_star2(_22982,_22988,_23764,_23764) :- [_22982,_22988]\=[_22128,_22130].
active_star2(_22982,_22130,_23094,_23012) :- absent(_22130,_23094,_23012).
active_star2(_22128,_22130,_23094,_23012) :- not_externally_induced(_22128,_22130,_23094,_23012).
not_active(_22982,_22988,_23006,_23012) :- copy_term([_22982,_22988],[_23076,_23082]),active_star1(_23076,_23082,_23006,_23094),copy_term([_22982,_22988],[_23670,_23676]),active_star2(_23670,_23676,_23094,_23012).


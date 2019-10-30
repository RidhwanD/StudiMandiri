exists(phase0,drug).
possible_drug_effect(_14276,inhibit,_14280).
possible_drug_effect(_14350,induce,_14354).
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
exists(_16818,_16820,_16842,_16842) :- exists(_16818,_16820).
not_exists(_16818,_16820,_16912,_16912) :- not exists(_16818,_16820).
possible_drug_effect(_17006,_17008,_17010,_17038,_17038) :- possible_drug_effect(_17006,_17008,_17010).
not_possible_drug_effect(_17006,_17008,_17010,_17122,_17122) :- not possible_drug_effect(_17006,_17008,_17010).
absent(_17238,_17254,_17254) :- absent(_17238).
not_absent(_17238,_17310,_17310) :- not absent(_17238).
reaction(_17382,_17398,_17398) :- reaction(_17382).
not_reaction(_17382,_17454,_17454) :- not reaction(_17382).
inhibitor(_17526,_17528,_17550,_17550) :- inhibitor(_17526,_17528).
not_inhibitor(_17526,_17528,_17620,_17620) :- not inhibitor(_17526,_17528).
oncogene(_17714,_17730,_17730) :- oncogene(_17714).
not_oncogene(_17714,_17786,_17786) :- not oncogene(_17714).
tumor_suppressor(_17858,_17874,_17874) :- tumor_suppressor(_17858).
not_tumor_suppressor(_17858,_17930,_17930) :- not tumor_suppressor(_17858).
drug_induced(_20614,_20616,_20618,_20646,_20652) :- insert_abducible(drug_induced(_20614,_20616,_20618),_20646,_20652).
not_drug_induced(_20748,_20750,_20752,_20792,_20798) :- insert_abducible(not drug_induced(_20748,_20750,_20752),_20792,_20798).
drug_inhibited(_20894,_20896,_20898,_20926,_20932) :- insert_abducible(drug_inhibited(_20894,_20896,_20898),_20926,_20932).
not_drug_inhibited(_21028,_21030,_21032,_21072,_21078) :- insert_abducible(not drug_inhibited(_21028,_21030,_21032),_21072,_21078).
false_star1(_21278,_21284) :- dual(1,false_star1,_21278,_21284).
false_star2(_21338,_21284) :- dual(2,false_star2,_21338,_21284).
not_false(_21278,_21284) :- copy_term([],[]),false_star1(_21278,_21338),copy_term([],[]),false_star2(_21338,_21284).

externally_inhibited_ab(_21724,_21726,_21936) :- exists(_21724,_21738,[drug_inhibited(_21724,_21738,_21726)],_21872),possible_drug_effect(_21738,inhibit,_21726,_21872,_21936).

:- table externally_inhibited_ab/3.
externally_inhibited(_22052,_22058,_22064,_22070) :- externally_inhibited_ab(_22052,_22058,_22146),produce_context(_22070,_22064,_22146).
externally_inhibited_star1(_22216,_22222,_22356,_22356) :- [_22216,_22222]\=[_21724,_21726].
externally_inhibited_star1(_22216,_22222,_22240,_22246) :- dual(1,externally_inhibited_star1(_22216,_22222),_22240,_22246).
not_externally_inhibited(_22216,_22222,_22240,_22246) :- externally_inhibited_star1(_22216,_22222,_22240,_22246).

drug_active_ab(_22560,_22562,_22772) :- exists(_22560,_22574,[drug_induced(_22560,_22574,_22562)],_22708),possible_drug_effect(_22574,induce,_22562,_22708,_22772).

:- table drug_active_ab/3.
drug_active(_22888,_22894,_22900,_22906) :- drug_active_ab(_22888,_22894,_22982),produce_context(_22906,_22900,_22982).
drug_active_star1(_23052,_23058,_23192,_23192) :- [_23052,_23058]\=[_22560,_22562].
drug_active_star1(_23052,_23058,_23076,_23082) :- dual(1,drug_active_star1(_23052,_23058),_23076,_23082).
not_drug_active(_23052,_23058,_23076,_23082) :- drug_active_star1(_23052,_23058,_23076,_23082).

externally_induced_ab(_23396,_23398,_23450) :- drug_active(_23396,_23398,[],_23450).

:- table externally_induced_ab/3.
externally_induced(_23558,_23564,_23570,_23576) :- externally_induced_ab(_23558,_23564,_23652),produce_context(_23576,_23570,_23652).
externally_induced_star1(_23722,_23728,_23862,_23862) :- [_23722,_23728]\=[_23396,_23398].
externally_induced_star1(_23722,_23728,_23746,_23752) :- dual(1,externally_induced_star1(_23722,_23728),_23746,_23752).
not_externally_induced(_23722,_23728,_23746,_23752) :- externally_induced_star1(_23722,_23728,_23746,_23752).

inactive_ab(_24122,_24124,_24176) :- inhibited(_24122,_24124,[],_24176).

inactive_ab(_24066,_24068,_24500) :- not_active(_24066,_24068,[],_24392),reaction(rct(_24098,_24068),_24392,_24450),inactive(_24066,_24098,_24450,_24500).

:- table inactive_ab/3.
inactive(_24608,_24614,_24620,_24626) :- inactive_ab(_24608,_24614,_24702),produce_context(_24626,_24620,_24702).
inactive_star1(_24772,_24778,_24960,_24960) :- [_24772,_24778]\=[_24122,_24124].
inactive_star1(_24772,_24778,_24796,_24802) :- dual(1,inactive_star1(_24772,_24778),_24796,_24802).
inactive_star2(_24772,_24778,_25210,_25210) :- [_24772,_24778]\=[_24066,_24068].
inactive_star2(_24772,_24778,_24884,_24802) :- dual(2,inactive_star2(_24772,_24778),_24884,_24802).
not_inactive(_24772,_24778,_24796,_24802) :- copy_term([_24772,_24778],[_24866,_24872]),inactive_star1(_24866,_24872,_24796,_24884),copy_term([_24772,_24778],[_25116,_25122]),inactive_star2(_25116,_25122,_24884,_24802).

normally_inhibited_ab(_25414,_25416,_25678) :- not_absent(_25416,[],_25564),inhibitor(_25416,_25442,_25564,_25620),active(_25414,_25442,_25620,_25678).

:- table normally_inhibited_ab/3.
normally_inhibited(_25786,_25792,_25798,_25804) :- normally_inhibited_ab(_25786,_25792,_25880),produce_context(_25804,_25798,_25880).
normally_inhibited_star1(_25950,_25956,_26090,_26090) :- [_25950,_25956]\=[_25414,_25416].
normally_inhibited_star1(_25950,_25956,_25974,_25980) :- dual(1,normally_inhibited_star1(_25950,_25956),_25974,_25980).
not_normally_inhibited(_25950,_25956,_25974,_25980) :- normally_inhibited_star1(_25950,_25956,_25974,_25980).

inhibited_ab(_26332,_26334,_26502) :- not_absent(_26334,[],_26452),normally_inhibited(_26332,_26334,_26452,_26502).

inhibited_ab(_26294,_26296,_26736) :- not_absent(_26296,[],_26686),externally_inhibited(_26294,_26296,_26686,_26736).

:- table inhibited_ab/3.
inhibited(_26844,_26850,_26856,_26862) :- inhibited_ab(_26844,_26850,_26938),produce_context(_26862,_26856,_26938).
inhibited_star1(_27008,_27014,_27196,_27196) :- [_27008,_27014]\=[_26332,_26334].
inhibited_star1(_27008,_27014,_27032,_27038) :- dual(1,inhibited_star1(_27008,_27014),_27032,_27038).
inhibited_star2(_27008,_27014,_27446,_27446) :- [_27008,_27014]\=[_26294,_26296].
inhibited_star2(_27008,_27014,_27120,_27038) :- dual(2,inhibited_star2(_27008,_27014),_27120,_27038).
not_inhibited(_27008,_27014,_27032,_27038) :- copy_term([_27008,_27014],[_27102,_27108]),inhibited_star1(_27102,_27108,_27032,_27120),copy_term([_27008,_27014],[_27352,_27358]),inhibited_star2(_27352,_27358,_27120,_27038).

normally_active_ab(_27650,_27652,_27904) :- not_absent(_27652,[],_27804),reaction(rct(_27680,_27652),_27804,_27854),active(_27650,_27680,_27854,_27904).

:- table normally_active_ab/3.
normally_active(_28012,_28018,_28024,_28030) :- normally_active_ab(_28012,_28018,_28106),produce_context(_28030,_28024,_28106).
normally_active_star1(_28176,_28182,_28316,_28316) :- [_28176,_28182]\=[_27650,_27652].
normally_active_star1(_28176,_28182,_28200,_28206) :- dual(1,normally_active_star1(_28176,_28182),_28200,_28206).
not_normally_active(_28176,_28182,_28200,_28206) :- normally_active_star1(_28176,_28182,_28200,_28206).

active_ab(_28558,_28560,_28868) :- not_absent(_28560,[],_28712),not_inhibited(_28558,_28560,_28712,_28810),normally_active(_28558,_28560,_28810,_28868).

active_ab(_28520,_28522,_29102) :- not_absent(_28522,[],_29052),externally_induced(_28520,_28522,_29052,_29102).

:- table active_ab/3.
active(_29210,_29216,_29222,_29228) :- active_ab(_29210,_29216,_29304),produce_context(_29228,_29222,_29304).
active_star1(_29374,_29380,_29562,_29562) :- [_29374,_29380]\=[_28558,_28560].
active_star1(_29374,_29380,_29398,_29404) :- dual(1,active_star1(_29374,_29380),_29398,_29404).
active_star2(_29374,_29380,_29812,_29812) :- [_29374,_29380]\=[_28520,_28522].
active_star2(_29374,_29380,_29486,_29404) :- dual(2,active_star2(_29374,_29380),_29486,_29404).
not_active(_29374,_29380,_29398,_29404) :- copy_term([_29374,_29380],[_29468,_29474]),active_star1(_29468,_29474,_29398,_29486),copy_term([_29374,_29380],[_29718,_29724]),active_star2(_29718,_29724,_29486,_29404).


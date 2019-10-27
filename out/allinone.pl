exists(phase0,drug).
possible_drug_effect(_12384,inhibit,_12388).
possible_drug_effect(_12458,induce,_12462).
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
exists(_14926,_14928,_14950,_14950) :- exists(_14926,_14928).
not_exists(_14926,_14928,_15020,_15020) :- not exists(_14926,_14928).
possible_drug_effect(_15114,_15116,_15118,_15146,_15146) :- possible_drug_effect(_15114,_15116,_15118).
not_possible_drug_effect(_15114,_15116,_15118,_15230,_15230) :- not possible_drug_effect(_15114,_15116,_15118).
absent(_15346,_15362,_15362) :- absent(_15346).
not_absent(_15346,_15418,_15418) :- not absent(_15346).
reaction(_15490,_15506,_15506) :- reaction(_15490).
not_reaction(_15490,_15562,_15562) :- not reaction(_15490).
inhibitor(_15634,_15636,_15658,_15658) :- inhibitor(_15634,_15636).
not_inhibitor(_15634,_15636,_15728,_15728) :- not inhibitor(_15634,_15636).
oncogene(_15822,_15838,_15838) :- oncogene(_15822).
not_oncogene(_15822,_15894,_15894) :- not oncogene(_15822).
tumor_suppressor(_15966,_15982,_15982) :- tumor_suppressor(_15966).
not_tumor_suppressor(_15966,_16038,_16038) :- not tumor_suppressor(_15966).
drug_induced(_17496,_17498,_17500,_17528,_17534) :- insert_abducible(drug_induced(_17496,_17498,_17500),_17528,_17534).
not_drug_induced(_17630,_17632,_17634,_17674,_17680) :- insert_abducible(not drug_induced(_17630,_17632,_17634),_17674,_17680).
drug_inhibited(_17776,_17778,_17780,_17808,_17814) :- insert_abducible(drug_inhibited(_17776,_17778,_17780),_17808,_17814).
not_drug_inhibited(_17910,_17912,_17914,_17954,_17960) :- insert_abducible(not drug_inhibited(_17910,_17912,_17914),_17954,_17960).
active_ab(_18148,_18150,_18458) :- not_absent(_18150,[],_18302),not_inhibited(_18148,_18150,_18302,_18400),normally_active(_18148,_18150,_18400,_18458).

active_ab(_18110,_18112,_18692) :- not_absent(_18112,[],_18642),externally_induced(_18110,_18112,_18642,_18692).

:- table active_ab/3.
active(_18818,_18824,_18830,_18836) :- active_ab(_18818,_18824,_18912),produce_context(_18836,_18830,_18912).
active_star1(_18982,_18988,_19170,_19170) :- [_18982,_18988]\=[_18148,_18150].
active_star1(_18982,_18150,_19006,_19012) :- absent(_18150,_19006,_19012).
active_star1(_18148,_18150,_19006,_19012) :- inhibited(_18148,_18150,_19006,_19012).
active_star1(_18148,_18150,_19006,_19012) :- not_normally_active(_18148,_18150,_19006,_19012).
active_star2(_18982,_18988,_19764,_19764) :- [_18982,_18988]\=[_18110,_18112].
active_star2(_18982,_18112,_19094,_19012) :- absent(_18112,_19094,_19012).
active_star2(_18110,_18112,_19094,_19012) :- not_externally_induced(_18110,_18112,_19094,_19012).
not_active(_18982,_18988,_19006,_19012) :- copy_term([_18982,_18988],[_19076,_19082]),active_star1(_19076,_19082,_19006,_19094),copy_term([_18982,_18988],[_19670,_19676]),active_star2(_19670,_19676,_19094,_19012).

normally_active_ab(_20142,_20144,_20396) :- not_absent(_20144,[],_20296),reaction(rct(_20172,_20144),_20296,_20346),active(_20142,_20172,_20346,_20396).

:- table normally_active_ab/3.
normally_active(_20522,_20528,_20534,_20540) :- normally_active_ab(_20522,_20528,_20616),produce_context(_20540,_20534,_20616).
normally_active_star1(_20686,_20692,_20826,_20826) :- [_20686,_20692]\=[_20142,_20144].
normally_active_star1(_20686,_20144,_20710,_20716) :- absent(_20144,_20710,_20716).
normally_active_star1(_20686,_20144,_20710,_20716) :- not_reaction(rct(_20172,_20144),_20710,_20716).
normally_active_star1(_20142,_20144,_20710,_20716) :- reaction(rct(_20172,_20144),_20710,_21236),not_active(_20142,_20172,_21236,_20716).
not_normally_active(_20686,_20692,_20710,_20716) :- normally_active_star1(_20686,_20692,_20710,_20716).

inhibited_ab(_21442,_21444,_21612) :- not_absent(_21444,[],_21562),normally_inhibited(_21442,_21444,_21562,_21612).

inhibited_ab(_21404,_21406,_21846) :- not_absent(_21406,[],_21796),externally_inhibited(_21404,_21406,_21796,_21846).

:- table inhibited_ab/3.
inhibited(_21966,_21972,_21978,_21984) :- inhibited_ab(_21966,_21972,_22060),produce_context(_21984,_21978,_22060).
inhibited_star1(_22130,_22136,_22318,_22318) :- [_22130,_22136]\=[_21442,_21444].
inhibited_star1(_22130,_21444,_22154,_22160) :- absent(_21444,_22154,_22160).
inhibited_star1(_21442,_21444,_22154,_22160) :- not_normally_inhibited(_21442,_21444,_22154,_22160).
inhibited_star2(_22130,_22136,_22742,_22742) :- [_22130,_22136]\=[_21404,_21406].
inhibited_star2(_22130,_21406,_22242,_22160) :- absent(_21406,_22242,_22160).
inhibited_star2(_21404,_21406,_22242,_22160) :- not_externally_inhibited(_21404,_21406,_22242,_22160).
not_inhibited(_22130,_22136,_22154,_22160) :- copy_term([_22130,_22136],[_22224,_22230]),inhibited_star1(_22224,_22230,_22154,_22242),copy_term([_22130,_22136],[_22648,_22654]),inhibited_star2(_22648,_22654,_22242,_22160).

normally_inhibited_ab(_23120,_23122,_23384) :- not_absent(_23122,[],_23270),inhibitor(_23122,_23148,_23270,_23326),active(_23120,_23148,_23326,_23384).

:- table normally_inhibited_ab/3.
normally_inhibited(_23510,_23516,_23522,_23528) :- normally_inhibited_ab(_23510,_23516,_23604),produce_context(_23528,_23522,_23604).
normally_inhibited_star1(_23674,_23680,_23814,_23814) :- [_23674,_23680]\=[_23120,_23122].
normally_inhibited_star1(_23674,_23122,_23698,_23704) :- absent(_23122,_23698,_23704).
normally_inhibited_star1(_23674,_23122,_23698,_23704) :- not_inhibitor(_23122,_23148,_23698,_23704).
normally_inhibited_star1(_23120,_23122,_23698,_23704) :- inhibitor(_23122,_23148,_23698,_24232),not_active(_23120,_23148,_24232,_23704).
not_normally_inhibited(_23674,_23680,_23698,_23704) :- normally_inhibited_star1(_23674,_23680,_23698,_23704).

inactive_ab(_24464,_24466,_24518) :- inhibited(_24464,_24466,[],_24518).

inactive_ab(_24408,_24410,_24842) :- not_active(_24408,_24410,[],_24734),reaction(rct(_24440,_24410),_24734,_24792),inactive(_24408,_24440,_24792,_24842).

:- table inactive_ab/3.
inactive(_24956,_24962,_24968,_24974) :- inactive_ab(_24956,_24962,_25050),produce_context(_24974,_24968,_25050).
inactive_star1(_25120,_25126,_25308,_25308) :- [_25120,_25126]\=[_24464,_24466].
inactive_star1(_24464,_24466,_25144,_25150) :- not_inhibited(_24464,_24466,_25144,_25150).
inactive_star2(_25120,_25126,_25606,_25606) :- [_25120,_25126]\=[_24408,_24410].
inactive_star2(_24408,_24410,_25232,_25150) :- active(_24408,_24410,_25232,_25150).
inactive_star2(_24408,_24410,_25232,_25150) :- not_reaction(rct(_24440,_24410),_25232,_25150).
inactive_star2(_24408,_24410,_25232,_25150) :- reaction(rct(_24440,_24410),_25232,_26054),not_inactive(_24408,_24440,_26054,_25150).
not_inactive(_25120,_25126,_25144,_25150) :- copy_term([_25120,_25126],[_25214,_25220]),inactive_star1(_25214,_25220,_25144,_25232),copy_term([_25120,_25126],[_25512,_25518]),inactive_star2(_25512,_25518,_25232,_25150).

externally_induced_ab(_26222,_26224,_26276) :- drug_active(_26222,_26224,[],_26276).

:- table externally_induced_ab/3.
externally_induced(_26390,_26396,_26402,_26408) :- externally_induced_ab(_26390,_26396,_26484),produce_context(_26408,_26402,_26484).
externally_induced_star1(_26554,_26560,_26694,_26694) :- [_26554,_26560]\=[_26222,_26224].
externally_induced_star1(_26222,_26224,_26578,_26584) :- not_drug_active(_26222,_26224,_26578,_26584).
not_externally_induced(_26554,_26560,_26578,_26584) :- externally_induced_star1(_26554,_26560,_26578,_26584).

drug_active_ab(_26946,_26948,_27158) :- exists(_26946,_26960,[drug_induced(_26946,_26960,_26948)],_27094),possible_drug_effect(_26960,induce,_26948,_27094,_27158).

drug_active(_27408,_27414,_27420,_27426) :- drug_active_ab(_27408,_27414,_27502),produce_context(_27426,_27420,_27502).
drug_active_star1(_27572,_27578,_27712,_27712) :- [_27572,_27578]\=[_26946,_26948].
drug_active_star1(_26946,_27578,_27596,_27602) :- not_exists(_26946,_26960,_27596,_27602).
drug_active_star1(_26946,_26948,_27596,_27602) :- exists(_26946,_26960,_27596,_28010),not_possible_drug_effect(_26960,induce,_26948,_28010,_27602).
drug_active_star1(_26946,_26948,_27596,_27602) :- exists(_26946,_26960,_27596,_28246),possible_drug_effect(_26960,induce,_26948,_28246,_28316),not_drug_induced(_26946,_26960,_26948,_28316,_27602).
not_drug_active(_27572,_27578,_27596,_27602) :- drug_active_star1(_27572,_27578,_27596,_27602).

externally_inhibited_ab(_28514,_28516,_28726) :- exists(_28514,_28528,[drug_inhibited(_28514,_28528,_28516)],_28662),possible_drug_effect(_28528,inhibit,_28516,_28662,_28726).

externally_inhibited(_28976,_28982,_28988,_28994) :- externally_inhibited_ab(_28976,_28982,_29070),produce_context(_28994,_28988,_29070).
externally_inhibited_star1(_29140,_29146,_29280,_29280) :- [_29140,_29146]\=[_28514,_28516].
externally_inhibited_star1(_28514,_29146,_29164,_29170) :- not_exists(_28514,_28528,_29164,_29170).
externally_inhibited_star1(_28514,_28516,_29164,_29170) :- exists(_28514,_28528,_29164,_29578),not_possible_drug_effect(_28528,inhibit,_28516,_29578,_29170).
externally_inhibited_star1(_28514,_28516,_29164,_29170) :- exists(_28514,_28528,_29164,_29814),possible_drug_effect(_28528,inhibit,_28516,_29814,_29884),not_drug_inhibited(_28514,_28528,_28516,_29884,_29170).
not_externally_inhibited(_29140,_29146,_29164,_29170) :- externally_inhibited_star1(_29140,_29146,_29164,_29170).

false_star1(_30240,_30246) :- not_drug_induced(phase0,drug,_30102,_30240,_30246).
false_star1(_30240,_30246) :- drug_induced(phase0,drug,_30102,_30240,_30594),not_drug_inhibited(phase0,drug,_30102,_30594,_30246).
false_star2(_30300,_30246) :- not_drug_induced(phase0,drug,apoptosis,_30300,_30246).
not_false(_30240,_30246) :- copy_term([],[]),false_star1(_30240,_30300),copy_term([],[]),false_star2(_30300,_30246).


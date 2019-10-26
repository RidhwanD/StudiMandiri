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
active_ab(_10470,_10472,_10792) :- not_absent(_10472,[[],[]],_10636),not_inhibited(_10470,_10472,_10636,_10734),normally_active(_10470,_10472,_10734,_10792).

active_ab(_10432,_10434,_11038) :- not_absent(_10434,[[],[]],_10988),externally_induced(_10432,_10434,_10988,_11038).

:- table active_ab/3.
active(_11146,_11152,_11158,_11164) :- active_ab(_11146,_11152,_11240),produce_context(_11164,_11158,_11240).
active_star1(_11310,_11316,_11498,_11498) :- [_11310,_11316]\=[_10470,_10472].
active_star1(_11310,_10472,_11334,_11340) :- absent(_10472,_11334,_11340).
active_star1(_10470,_10472,_11334,_11340) :- inhibited(_10470,_10472,_11334,_11340).
active_star1(_10470,_10472,_11334,_11340) :- not_normally_active(_10470,_10472,_11334,_11340).
active_star2(_11310,_11316,_12092,_12092) :- [_11310,_11316]\=[_10432,_10434].
active_star2(_11310,_10434,_11422,_11340) :- absent(_10434,_11422,_11340).
active_star2(_10432,_10434,_11422,_11340) :- not_externally_induced(_10432,_10434,_11422,_11340).
not_active(_11310,_11316,_11334,_11340) :- copy_term([_11310,_11316],[_11404,_11410]),active_star1(_11404,_11410,_11334,_11422),copy_term([_11310,_11316],[_11998,_12004]),active_star2(_11998,_12004,_11422,_11340).

normally_active_ab(_12470,_12472,_12736) :- not_absent(_12472,[[],[]],_12636),reaction(rct(_12500,_12472),_12636,_12686),active(_12470,_12500,_12686,_12736).

:- table normally_active_ab/3.
normally_active(_12844,_12850,_12856,_12862) :- normally_active_ab(_12844,_12850,_12938),produce_context(_12862,_12856,_12938).
normally_active_star1(_13008,_13014,_13148,_13148) :- [_13008,_13014]\=[_12470,_12472].
normally_active_star1(_13008,_12472,_13032,_13038) :- absent(_12472,_13032,_13038).
normally_active_star1(_13008,_12472,_13032,_13038) :- not_reaction(rct(_12500,_12472),_13032,_13038).
normally_active_star1(_12470,_12472,_13032,_13038) :- reaction(rct(_12500,_12472),_13032,_13558),not_active(_12470,_12500,_13558,_13038).
not_normally_active(_13008,_13014,_13032,_13038) :- normally_active_star1(_13008,_13014,_13032,_13038).

inhibited_ab(_13764,_13766,_13946) :- not_absent(_13766,[[],[]],_13896),normally_inhibited(_13764,_13766,_13896,_13946).

inhibited_ab(_13726,_13728,_14192) :- not_absent(_13728,[[],[]],_14142),externally_inhibited(_13726,_13728,_14142,_14192).

:- table inhibited_ab/3.
inhibited(_14300,_14306,_14312,_14318) :- inhibited_ab(_14300,_14306,_14394),produce_context(_14318,_14312,_14394).
inhibited_star1(_14464,_14470,_14652,_14652) :- [_14464,_14470]\=[_13764,_13766].
inhibited_star1(_14464,_13766,_14488,_14494) :- absent(_13766,_14488,_14494).
inhibited_star1(_13764,_13766,_14488,_14494) :- not_normally_inhibited(_13764,_13766,_14488,_14494).
inhibited_star2(_14464,_14470,_15076,_15076) :- [_14464,_14470]\=[_13726,_13728].
inhibited_star2(_14464,_13728,_14576,_14494) :- absent(_13728,_14576,_14494).
inhibited_star2(_13726,_13728,_14576,_14494) :- not_externally_inhibited(_13726,_13728,_14576,_14494).
not_inhibited(_14464,_14470,_14488,_14494) :- copy_term([_14464,_14470],[_14558,_14564]),inhibited_star1(_14558,_14564,_14488,_14576),copy_term([_14464,_14470],[_14982,_14988]),inhibited_star2(_14982,_14988,_14576,_14494).

normally_inhibited_ab(_15454,_15456,_15730) :- not_absent(_15456,[[],[]],_15616),inhibitor(_15456,_15482,_15616,_15672),active(_15454,_15482,_15672,_15730).

:- table normally_inhibited_ab/3.
normally_inhibited(_15838,_15844,_15850,_15856) :- normally_inhibited_ab(_15838,_15844,_15932),produce_context(_15856,_15850,_15932).
normally_inhibited_star1(_16002,_16008,_16142,_16142) :- [_16002,_16008]\=[_15454,_15456].
normally_inhibited_star1(_16002,_15456,_16026,_16032) :- absent(_15456,_16026,_16032).
normally_inhibited_star1(_16002,_15456,_16026,_16032) :- not_inhibitor(_15456,_15482,_16026,_16032).
normally_inhibited_star1(_15454,_15456,_16026,_16032) :- inhibitor(_15456,_15482,_16026,_16560),not_active(_15454,_15482,_16560,_16032).
not_normally_inhibited(_16002,_16008,_16026,_16032) :- normally_inhibited_star1(_16002,_16008,_16026,_16032).

inactive_ab(_16792,_16794,_16858) :- inhibited(_16792,_16794,[[],[]],_16858).

inactive_ab(_16736,_16738,_17194) :- not_active(_16736,_16738,[[],[]],_17086),reaction(rct(_16768,_16738),_17086,_17144),inactive(_16736,_16768,_17144,_17194).

:- table inactive_ab/3.
inactive(_17302,_17308,_17314,_17320) :- inactive_ab(_17302,_17308,_17396),produce_context(_17320,_17314,_17396).
inactive_star1(_17466,_17472,_17654,_17654) :- [_17466,_17472]\=[_16792,_16794].
inactive_star1(_16792,_16794,_17490,_17496) :- not_inhibited(_16792,_16794,_17490,_17496).
inactive_star2(_17466,_17472,_17952,_17952) :- [_17466,_17472]\=[_16736,_16738].
inactive_star2(_16736,_16738,_17578,_17496) :- active(_16736,_16738,_17578,_17496).
inactive_star2(_16736,_16738,_17578,_17496) :- not_reaction(rct(_16768,_16738),_17578,_17496).
inactive_star2(_16736,_16738,_17578,_17496) :- reaction(rct(_16768,_16738),_17578,_18400),not_inactive(_16736,_16768,_18400,_17496).
not_inactive(_17466,_17472,_17490,_17496) :- copy_term([_17466,_17472],[_17560,_17566]),inactive_star1(_17560,_17566,_17490,_17578),copy_term([_17466,_17472],[_17858,_17864]),inactive_star2(_17858,_17864,_17578,_17496).

externally_induced_ab(_18568,_18570,_18634) :- drug_active(_18568,_18570,[[],[]],_18634).

:- table externally_induced_ab/3.
externally_induced(_18742,_18748,_18754,_18760) :- externally_induced_ab(_18742,_18748,_18836),produce_context(_18760,_18754,_18836).
externally_induced_star1(_18906,_18912,_19046,_19046) :- [_18906,_18912]\=[_18568,_18570].
externally_induced_star1(_18568,_18570,_18930,_18936) :- not_drug_active(_18568,_18570,_18930,_18936).
not_externally_induced(_18906,_18912,_18930,_18936) :- externally_induced_star1(_18906,_18912,_18930,_18936).

drug_active_ab(_19298,_19300,_19528) :- exists(_19298,_19312,[[drug_induced(_19298,_19312,_19300)],[]],_19464),possible_drug_effect(_19312,induce,_19300,_19464,_19528).

:- table drug_active_ab/3.
drug_active(_19644,_19650,_19656,_19662) :- drug_active_ab(_19644,_19650,_19738),produce_context(_19662,_19656,_19738).
drug_active_star1(_19808,_19814,_19948,_19948) :- [_19808,_19814]\=[_19298,_19300].
drug_active_star1(_19298,_19814,_19832,_19838) :- not_exists(_19298,_19312,_19832,_19838).
drug_active_star1(_19298,_19300,_19832,_19838) :- exists(_19298,_19312,_19832,_20246),not_possible_drug_effect(_19312,induce,_19300,_20246,_19838).
drug_active_star1(_19298,_19300,_19832,_19838) :- exists(_19298,_19312,_19832,_20482),possible_drug_effect(_19312,induce,_19300,_20482,_20552),not_drug_induced(_19298,_19312,_19300,_20552,_19838).
not_drug_active(_19808,_19814,_19832,_19838) :- drug_active_star1(_19808,_19814,_19832,_19838).

externally_inhibited_ab(_20750,_20752,_20980) :- exists(_20750,_20764,[[drug_inhibited(_20750,_20764,_20752)],[]],_20916),possible_drug_effect(_20764,inhibit,_20752,_20916,_20980).

:- table externally_inhibited_ab/3.
externally_inhibited(_21096,_21102,_21108,_21114) :- externally_inhibited_ab(_21096,_21102,_21190),produce_context(_21114,_21108,_21190).
externally_inhibited_star1(_21260,_21266,_21400,_21400) :- [_21260,_21266]\=[_20750,_20752].
externally_inhibited_star1(_20750,_21266,_21284,_21290) :- not_exists(_20750,_20764,_21284,_21290).
externally_inhibited_star1(_20750,_20752,_21284,_21290) :- exists(_20750,_20764,_21284,_21698),not_possible_drug_effect(_20764,inhibit,_20752,_21698,_21290).
externally_inhibited_star1(_20750,_20752,_21284,_21290) :- exists(_20750,_20764,_21284,_21934),possible_drug_effect(_20764,inhibit,_20752,_21934,_22004),not_drug_inhibited(_20750,_20764,_20752,_22004,_21290).
not_externally_inhibited(_21260,_21266,_21284,_21290) :- externally_inhibited_star1(_21260,_21266,_21284,_21290).

false_star1(_22252,_22258) :- not_drug_induced(phase0,drug,_22222,_22252,_22258).
false_star1(_22252,_22258) :- drug_induced(phase0,drug,_22222,_22252,_22606),not_drug_inhibited(phase0,drug,_22222,_22606,_22258).
false_star2(_22312,_22258) :- not_drug_induced(phase0,drug,apoptosis,_22312,_22258).
not_false(_22252,_22258) :- copy_term([],[]),false_star1(_22252,_22312),copy_term([],[]),false_star2(_22312,_22258).


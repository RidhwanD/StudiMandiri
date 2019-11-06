exists(phase0,drug).
possible_drug_effect(_4722,inhibit,_4726).
possible_drug_effect(_4796,induce,_4800).
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
exists(_7264,_7266,_7288,_7288) :- exists(_7264,_7266).
not_exists(_7264,_7266,_7358,_7358) :- not exists(_7264,_7266).
possible_drug_effect(_7452,_7454,_7456,_7484,_7484) :- possible_drug_effect(_7452,_7454,_7456).
not_possible_drug_effect(_7452,_7454,_7456,_7568,_7568) :- not possible_drug_effect(_7452,_7454,_7456).
absent(_7684,_7700,_7700) :- absent(_7684).
not_absent(_7684,_7756,_7756) :- not absent(_7684).
reaction(_7828,_7844,_7844) :- reaction(_7828).
not_reaction(_7828,_7900,_7900) :- not reaction(_7828).
inhibitor(_7972,_7974,_7996,_7996) :- inhibitor(_7972,_7974).
not_inhibitor(_7972,_7974,_8066,_8066) :- not inhibitor(_7972,_7974).
oncogene(_8160,_8176,_8176) :- oncogene(_8160).
not_oncogene(_8160,_8232,_8232) :- not oncogene(_8160).
tumor_suppressor(_8304,_8320,_8320) :- tumor_suppressor(_8304).
not_tumor_suppressor(_8304,_8376,_8376) :- not tumor_suppressor(_8304).
drug_induced(_11060,_11062,_11064,_11092,_11098) :- insert_abducible(drug_induced(_11060,_11062,_11064),_11092,_11098).
not_drug_induced(_11194,_11196,_11198,_11238,_11244) :- insert_abducible(not drug_induced(_11194,_11196,_11198),_11238,_11244).
drug_inhibited(_11340,_11342,_11344,_11372,_11378) :- insert_abducible(drug_inhibited(_11340,_11342,_11344),_11372,_11378).
not_drug_inhibited(_11474,_11476,_11478,_11518,_11524) :- insert_abducible(not drug_inhibited(_11474,_11476,_11478),_11518,_11524).
false_star1(_11724,_11730) :- dual(1,false_star1,_11724,_11730).
false_star2(_11784,_11730) :- dual(2,false_star2,_11784,_11730).
not_false(_11724,_11730) :- copy_term([],[]),false_star1(_11724,_11784),copy_term([],[]),false_star2(_11784,_11730).

externally_inhibited_ab(_12170,_12172,_12382) :- exists(_12170,_12184,[drug_inhibited(_12170,_12184,_12172)],_12318),possible_drug_effect(_12184,inhibit,_12172,_12318,_12382).

:- table externally_inhibited_ab/3.
externally_inhibited(_12498,_12504,_12510,_12516) :- externally_inhibited_ab(_12498,_12504,_12592),produce_context(_12516,_12510,_12592).
externally_inhibited_star1(_12662,_12668,_12802,_12802) :- [_12662,_12668]\=[_12170,_12172].
externally_inhibited_star1(_12662,_12668,_12686,_12692) :- dual(1,externally_inhibited_star1(_12662,_12668),_12686,_12692).
not_externally_inhibited(_12662,_12668,_12686,_12692) :- externally_inhibited_star1(_12662,_12668,_12686,_12692).

drug_active_ab(_13006,_13008,_13218) :- exists(_13006,_13020,[drug_induced(_13006,_13020,_13008)],_13154),possible_drug_effect(_13020,induce,_13008,_13154,_13218).

:- table drug_active_ab/3.
drug_active(_13334,_13340,_13346,_13352) :- drug_active_ab(_13334,_13340,_13428),produce_context(_13352,_13346,_13428).
drug_active_star1(_13498,_13504,_13638,_13638) :- [_13498,_13504]\=[_13006,_13008].
drug_active_star1(_13498,_13504,_13522,_13528) :- dual(1,drug_active_star1(_13498,_13504),_13522,_13528).
not_drug_active(_13498,_13504,_13522,_13528) :- drug_active_star1(_13498,_13504,_13522,_13528).

externally_induced_ab(_13842,_13844,_13896) :- drug_active(_13842,_13844,[],_13896).

:- table externally_induced_ab/3.
externally_induced(_14004,_14010,_14016,_14022) :- externally_induced_ab(_14004,_14010,_14098),produce_context(_14022,_14016,_14098).
externally_induced_star1(_14168,_14174,_14308,_14308) :- [_14168,_14174]\=[_13842,_13844].
externally_induced_star1(_14168,_14174,_14192,_14198) :- dual(1,externally_induced_star1(_14168,_14174),_14192,_14198).
not_externally_induced(_14168,_14174,_14192,_14198) :- externally_induced_star1(_14168,_14174,_14192,_14198).

inactive_ab(_14568,_14570,_14622) :- inhibited(_14568,_14570,[],_14622).

inactive_ab(_14512,_14514,_14946) :- not_active(_14512,_14514,[],_14838),reaction(rct(_14544,_14514),_14838,_14896),inactive(_14512,_14544,_14896,_14946).

:- table inactive_ab/3.
inactive(_15054,_15060,_15066,_15072) :- inactive_ab(_15054,_15060,_15148),produce_context(_15072,_15066,_15148).
inactive_star1(_15218,_15224,_15406,_15406) :- [_15218,_15224]\=[_14568,_14570].
inactive_star1(_15218,_15224,_15242,_15248) :- dual(1,inactive_star1(_15218,_15224),_15242,_15248).
inactive_star2(_15218,_15224,_15656,_15656) :- [_15218,_15224]\=[_14512,_14514].
inactive_star2(_15218,_15224,_15330,_15248) :- dual(2,inactive_star2(_15218,_15224),_15330,_15248).
not_inactive(_15218,_15224,_15242,_15248) :- copy_term([_15218,_15224],[_15312,_15318]),inactive_star1(_15312,_15318,_15242,_15330),copy_term([_15218,_15224],[_15562,_15568]),inactive_star2(_15562,_15568,_15330,_15248).

normally_inhibited_ab(_15860,_15862,_16124) :- not_absent(_15862,[],_16010),inhibitor(_15862,_15888,_16010,_16066),active(_15860,_15888,_16066,_16124).

:- table normally_inhibited_ab/3.
normally_inhibited(_16232,_16238,_16244,_16250) :- normally_inhibited_ab(_16232,_16238,_16326),produce_context(_16250,_16244,_16326).
normally_inhibited_star1(_16396,_16402,_16536,_16536) :- [_16396,_16402]\=[_15860,_15862].
normally_inhibited_star1(_16396,_16402,_16420,_16426) :- dual(1,normally_inhibited_star1(_16396,_16402),_16420,_16426).
not_normally_inhibited(_16396,_16402,_16420,_16426) :- normally_inhibited_star1(_16396,_16402,_16420,_16426).

inhibited_ab(_16778,_16780,_16948) :- not_absent(_16780,[],_16898),normally_inhibited(_16778,_16780,_16898,_16948).

inhibited_ab(_16740,_16742,_17182) :- not_absent(_16742,[],_17132),externally_inhibited(_16740,_16742,_17132,_17182).

:- table inhibited_ab/3.
inhibited(_17290,_17296,_17302,_17308) :- inhibited_ab(_17290,_17296,_17384),produce_context(_17308,_17302,_17384).
inhibited_star1(_17454,_17460,_17642,_17642) :- [_17454,_17460]\=[_16778,_16780].
inhibited_star1(_17454,_17460,_17478,_17484) :- dual(1,inhibited_star1(_17454,_17460),_17478,_17484).
inhibited_star2(_17454,_17460,_17892,_17892) :- [_17454,_17460]\=[_16740,_16742].
inhibited_star2(_17454,_17460,_17566,_17484) :- dual(2,inhibited_star2(_17454,_17460),_17566,_17484).
not_inhibited(_17454,_17460,_17478,_17484) :- copy_term([_17454,_17460],[_17548,_17554]),inhibited_star1(_17548,_17554,_17478,_17566),copy_term([_17454,_17460],[_17798,_17804]),inhibited_star2(_17798,_17804,_17566,_17484).

normally_active_ab(_18096,_18098,_18350) :- not_absent(_18098,[],_18250),reaction(rct(_18126,_18098),_18250,_18300),active(_18096,_18126,_18300,_18350).

:- table normally_active_ab/3.
normally_active(_18458,_18464,_18470,_18476) :- normally_active_ab(_18458,_18464,_18552),produce_context(_18476,_18470,_18552).
normally_active_star1(_18622,_18628,_18762,_18762) :- [_18622,_18628]\=[_18096,_18098].
normally_active_star1(_18622,_18628,_18646,_18652) :- dual(1,normally_active_star1(_18622,_18628),_18646,_18652).
not_normally_active(_18622,_18628,_18646,_18652) :- normally_active_star1(_18622,_18628,_18646,_18652).

active_ab(_19004,_19006,_19314) :- not_absent(_19006,[],_19158),not_inhibited(_19004,_19006,_19158,_19256),normally_active(_19004,_19006,_19256,_19314).

active_ab(_18966,_18968,_19548) :- not_absent(_18968,[],_19498),externally_induced(_18966,_18968,_19498,_19548).

:- table active_ab/3.
active(_19656,_19662,_19668,_19674) :- active_ab(_19656,_19662,_19750),produce_context(_19674,_19668,_19750).
active_star1(_19820,_19826,_20008,_20008) :- [_19820,_19826]\=[_19004,_19006].
active_star1(_19820,_19826,_19844,_19850) :- dual(1,active_star1(_19820,_19826),_19844,_19850).
active_star2(_19820,_19826,_20258,_20258) :- [_19820,_19826]\=[_18966,_18968].
active_star2(_19820,_19826,_19932,_19850) :- dual(2,active_star2(_19820,_19826),_19932,_19850).
not_active(_19820,_19826,_19844,_19850) :- copy_term([_19820,_19826],[_19914,_19920]),active_star1(_19914,_19920,_19844,_19932),copy_term([_19820,_19826],[_20164,_20170]),active_star2(_20164,_20170,_19932,_19850).


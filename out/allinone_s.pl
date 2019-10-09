exists(phase0,drug).
possible_drug_effect(_4712,inhibit,_4716).
possible_drug_effect(_4786,induce,_4790).
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
exists(_7254,_7256,_7278,_7278) :- exists(_7254,_7256).
not_exists(_7254,_7256,_7348,_7348) :- not exists(_7254,_7256).
possible_drug_effect(_7442,_7444,_7446,_7474,_7474) :- possible_drug_effect(_7442,_7444,_7446).
not_possible_drug_effect(_7442,_7444,_7446,_7558,_7558) :- not possible_drug_effect(_7442,_7444,_7446).
absent(_7674,_7690,_7690) :- absent(_7674).
not_absent(_7674,_7746,_7746) :- not absent(_7674).
reaction(_7818,_7834,_7834) :- reaction(_7818).
not_reaction(_7818,_7890,_7890) :- not reaction(_7818).
inhibitor(_7962,_7964,_7986,_7986) :- inhibitor(_7962,_7964).
not_inhibitor(_7962,_7964,_8056,_8056) :- not inhibitor(_7962,_7964).
oncogene(_8150,_8166,_8166) :- oncogene(_8150).
not_oncogene(_8150,_8222,_8222) :- not oncogene(_8150).
tumor_suppressor(_8294,_8310,_8310) :- tumor_suppressor(_8294).
not_tumor_suppressor(_8294,_8366,_8366) :- not tumor_suppressor(_8294).
drug_induced(_9824,_9826,_9828,_9856,_9862) :- insert_abducible(drug_induced(_9824,_9826,_9828),_9856,_9862).
not_drug_induced(_9958,_9960,_9962,_10002,_10008) :- insert_abducible(not drug_induced(_9958,_9960,_9962),_10002,_10008).
drug_inhibited(_10104,_10106,_10108,_10136,_10142) :- insert_abducible(drug_inhibited(_10104,_10106,_10108),_10136,_10142).
not_drug_inhibited(_10238,_10240,_10242,_10282,_10288) :- insert_abducible(not drug_inhibited(_10238,_10240,_10242),_10282,_10288).
:- table active_ab/3.
active_ab(_10476,_10478,_10798) :- not_absent(_10478,[],_10642),not_inhibited(_10476,_10478,_10642,_10740),normally_active(_10476,_10478,_10740,_10798).

active_ab(_10438,_10440,_11032) :- not_absent(_10440,[],_10982),externally_induced(_10438,_10440,_10982,_11032).

active(_11128,_11134,_11140,_11146) :- active_ab(_11128,_11134,_11222),produce_context(_11146,_11140,_11222).
active_star1(_11292,_11298,_11480,_11480) :- [_11292,_11298]\=[_10476,_10478].
active_star1(_11292,_11298,_11316,_11322) :- absent(_10478,_11316,_11322).
active_star1(_11292,_11298,_11316,_11322) :- not absent(_10478,_11316,_11726),inhibited(_10476,_10478,_11726,_11322).
active_star1(_10476,_10478,_11316,_11322) :- not absent(_10478,_11316,_11920),not inhibited(_10476,_10478,_11920,_11980),not_normally_active(_10476,_10478,_11980,_11322).
active_star2(_11292,_11298,_12202,_12202) :- [_11292,_11298]\=[_10438,_10440].
active_star2(_11292,_11298,_11404,_11322) :- absent(_10440,_11404,_11322).
active_star2(_10438,_10440,_11404,_11322) :- not absent(_10440,_11404,_12454),not_externally_induced(_10438,_10440,_12454,_11322).
not_active(_11292,_11298,_11316,_11322) :- copy_term([_11292,_11298],[_11386,_11392]),active_star1(_11386,_11392,_11316,_11404),copy_term([_11292,_11298],[_12108,_12114]),active_star2(_12108,_12114,_11404,_11322).

:- table normally_active_ab/3.
normally_active_ab(_12622,_12624,_12888) :- not_absent(_12624,[],_12788),reaction(rct(_12652,_12624),_12788,_12838),active(_12622,_12652,_12838,_12888).

normally_active(_12984,_12990,_12996,_13002) :- normally_active_ab(_12984,_12990,_13078),produce_context(_13002,_12996,_13078).
normally_active_star1(_13148,_13154,_13288,_13288) :- [_13148,_13154]\=[_12622,_12624].
normally_active_star1(_13148,_13154,_13172,_13178) :- absent(_12624,_13172,_13178).
normally_active_star1(_13148,_13154,_13172,_13178) :- not absent(_12624,_13172,_13534),not_reaction(rct(_12652,_12624),_13534,_13178).
normally_active_star1(_12622,_13154,_13172,_13178) :- not absent(_12624,_13172,_13726),reaction(rct(_12652,_12624),_13726,_13776),not_active(_12622,_12652,_13776,_13178).
not_normally_active(_13148,_13154,_13172,_13178) :- normally_active_star1(_13148,_13154,_13172,_13178).

:- table inhibited_ab/3.
inhibited_ab(_13982,_13984,_14164) :- not_absent(_13984,[],_14114),normally_inhibited(_13982,_13984,_14114,_14164).

inhibited_ab(_13944,_13946,_14398) :- not_absent(_13946,[],_14348),externally_inhibited(_13944,_13946,_14348,_14398).

inhibited(_14494,_14500,_14506,_14512) :- inhibited_ab(_14494,_14500,_14588),produce_context(_14512,_14506,_14588).
inhibited_star1(_14658,_14664,_14846,_14846) :- [_14658,_14664]\=[_13982,_13984].
inhibited_star1(_14658,_14664,_14682,_14688) :- absent(_13984,_14682,_14688).
inhibited_star1(_13982,_13984,_14682,_14688) :- not absent(_13984,_14682,_15098),not_normally_inhibited(_13982,_13984,_15098,_14688).
inhibited_star2(_14658,_14664,_15312,_15312) :- [_14658,_14664]\=[_13944,_13946].
inhibited_star2(_14658,_14664,_14770,_14688) :- absent(_13946,_14770,_14688).
inhibited_star2(_13944,_13946,_14770,_14688) :- not absent(_13946,_14770,_15564),not_externally_inhibited(_13944,_13946,_15564,_14688).
not_inhibited(_14658,_14664,_14682,_14688) :- copy_term([_14658,_14664],[_14752,_14758]),inhibited_star1(_14752,_14758,_14682,_14770),copy_term([_14658,_14664],[_15218,_15224]),inhibited_star2(_15218,_15224,_14770,_14688).

:- table normally_inhibited_ab/3.
normally_inhibited_ab(_15732,_15734,_16008) :- not_absent(_15734,[],_15894),inhibitor(_15734,_15760,_15894,_15950),active(_15732,_15760,_15950,_16008).

normally_inhibited(_16104,_16110,_16116,_16122) :- normally_inhibited_ab(_16104,_16110,_16198),produce_context(_16122,_16116,_16198).
normally_inhibited_star1(_16268,_16274,_16408,_16408) :- [_16268,_16274]\=[_15732,_15734].
normally_inhibited_star1(_16268,_16274,_16292,_16298) :- absent(_15734,_16292,_16298).
normally_inhibited_star1(_16268,_15734,_16292,_16298) :- not absent(_15734,_16292,_16660),not_inhibitor(_15734,_15760,_16660,_16298).
normally_inhibited_star1(_15732,_15734,_16292,_16298) :- not absent(_15734,_16292,_16866),inhibitor(_15734,_15760,_16866,_16922),not_active(_15732,_15760,_16922,_16298).
not_normally_inhibited(_16268,_16274,_16292,_16298) :- normally_inhibited_star1(_16268,_16274,_16292,_16298).

:- table inactive_ab/3.
inactive_ab(_17154,_17156,_17220) :- inhibited(_17154,_17156,[],_17220).

inactive_ab(_17098,_17100,_17544) :- not_active(_17098,_17100,[],_17436),reaction(rct(_17130,_17100),_17436,_17494),inactive(_17098,_17130,_17494,_17544).

inactive(_17640,_17646,_17652,_17658) :- inactive_ab(_17640,_17646,_17734),produce_context(_17658,_17652,_17734).
inactive_star1(_17804,_17810,_17992,_17992) :- [_17804,_17810]\=[_17154,_17156].
inactive_star1(_17154,_17156,_17828,_17834) :- not_inhibited(_17154,_17156,_17828,_17834).
inactive_star2(_17804,_17810,_18290,_18290) :- [_17804,_17810]\=[_17098,_17100].
inactive_star2(_17804,_17810,_17916,_17834) :- active(_17098,_17100,_17916,_17834).
inactive_star2(_17804,_17810,_17916,_17834) :- not active(_17098,_17100,_17916,_18556),not_reaction(rct(_17130,_17100),_18556,_17834).
inactive_star2(_17098,_17810,_17916,_17834) :- not active(_17098,_17100,_17916,_18762),reaction(rct(_17130,_17100),_18762,_18820),not_inactive(_17098,_17130,_18820,_17834).
not_inactive(_17804,_17810,_17828,_17834) :- copy_term([_17804,_17810],[_17898,_17904]),inactive_star1(_17898,_17904,_17828,_17916),copy_term([_17804,_17810],[_18196,_18202]),inactive_star2(_18196,_18202,_17916,_17834).

:- table externally_induced_ab/3.
externally_induced_ab(_18988,_18990,_19054) :- drug_active(_18988,_18990,[],_19054).

externally_induced(_19150,_19156,_19162,_19168) :- externally_induced_ab(_19150,_19156,_19244),produce_context(_19168,_19162,_19244).
externally_induced_star1(_19314,_19320,_19454,_19454) :- [_19314,_19320]\=[_18988,_18990].
externally_induced_star1(_18988,_18990,_19338,_19344) :- not_drug_active(_18988,_18990,_19338,_19344).
not_externally_induced(_19314,_19320,_19338,_19344) :- externally_induced_star1(_19314,_19320,_19338,_19344).

:- table drug_active_ab/3.
drug_active_ab(_19706,_19708,_19930) :- exists(_19706,_19720,[drug_induced(_19706,_19720,_19708)],_19866),possible_drug_effect(_19720,induce,_19708,_19866,_19930).

drug_active(_20034,_20040,_20046,_20052) :- drug_active_ab(_20034,_20040,_20128),produce_context(_20052,_20046,_20128).
drug_active_star1(_20198,_20204,_20338,_20338) :- [_20198,_20204]\=[_19706,_19708].
drug_active_star1(_19706,_20204,_20222,_20228) :- not_exists(_19706,_19720,_20222,_20228).
drug_active_star1(_19706,_20204,_20222,_20228) :- exists(_19706,_19720,_20222,_20630),not_possible_drug_effect(_19720,induce,_19708,_20630,_20228).
drug_active_star1(_19706,_19708,_20222,_20228) :- exists(_19706,_19720,_20222,_20866),possible_drug_effect(_19720,induce,_19708,_20866,_20936),not_drug_induced(_19706,_19720,_19708,_20936,_20228).
not_drug_active(_20198,_20204,_20222,_20228) :- drug_active_star1(_20198,_20204,_20222,_20228).

:- table externally_inhibited_ab/3.
externally_inhibited_ab(_21134,_21136,_21358) :- exists(_21134,_21148,[drug_inhibited(_21134,_21148,_21136)],_21294),possible_drug_effect(_21148,inhibit,_21136,_21294,_21358).

externally_inhibited(_21462,_21468,_21474,_21480) :- externally_inhibited_ab(_21462,_21468,_21556),produce_context(_21480,_21474,_21556).
externally_inhibited_star1(_21626,_21632,_21766,_21766) :- [_21626,_21632]\=[_21134,_21136].
externally_inhibited_star1(_21134,_21632,_21650,_21656) :- not_exists(_21134,_21148,_21650,_21656).
externally_inhibited_star1(_21134,_21632,_21650,_21656) :- exists(_21134,_21148,_21650,_22058),not_possible_drug_effect(_21148,inhibit,_21136,_22058,_21656).
externally_inhibited_star1(_21134,_21136,_21650,_21656) :- exists(_21134,_21148,_21650,_22294),possible_drug_effect(_21148,inhibit,_21136,_22294,_22364),not_drug_inhibited(_21134,_21148,_21136,_22364,_21656).
not_externally_inhibited(_21626,_21632,_21650,_21656) :- externally_inhibited_star1(_21626,_21632,_21650,_21656).

:- table false_ab/1.
false_star1(_22624,_22630) :- not_drug_induced(phase0,drug,_22582,_22624,_22630).
false_star1(_22624,_22630) :- drug_induced(phase0,drug,_22582,_22624,_22978),not_drug_inhibited(phase0,drug,_22582,_22978,_22630).
false_star2(_22684,_22630) :- not_drug_induced(phase0,drug,apoptosis,_22684,_22630).
not_false(_22624,_22630) :- copy_term([],[]),false_star1(_22624,_22684),copy_term([],[]),false_star2(_22684,_22630).


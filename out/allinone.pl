exists(phase0,drug).
possible_drug_effect(_4724,inhibit,_4728).
possible_drug_effect(_4798,induce,_4802).
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
exists(_7266,_7268,_7290,_7290) :- exists(_7266,_7268).
not_exists(_7266,_7268,_7360,_7360) :- not exists(_7266,_7268).
possible_drug_effect(_7454,_7456,_7458,_7486,_7486) :- possible_drug_effect(_7454,_7456,_7458).
not_possible_drug_effect(_7454,_7456,_7458,_7570,_7570) :- not possible_drug_effect(_7454,_7456,_7458).
absent(_7686,_7702,_7702) :- absent(_7686).
not_absent(_7686,_7758,_7758) :- not absent(_7686).
reaction(_7830,_7846,_7846) :- reaction(_7830).
not_reaction(_7830,_7902,_7902) :- not reaction(_7830).
inhibitor(_7974,_7976,_7998,_7998) :- inhibitor(_7974,_7976).
not_inhibitor(_7974,_7976,_8068,_8068) :- not inhibitor(_7974,_7976).
oncogene(_8162,_8178,_8178) :- oncogene(_8162).
not_oncogene(_8162,_8234,_8234) :- not oncogene(_8162).
tumor_suppressor(_8306,_8322,_8322) :- tumor_suppressor(_8306).
not_tumor_suppressor(_8306,_8378,_8378) :- not tumor_suppressor(_8306).
drug_induced(_11062,_11064,_11066,_11094,_11100) :- insert_abducible(drug_induced(_11062,_11064,_11066),_11094,_11100).
not_drug_induced(_11196,_11198,_11200,_11240,_11246) :- insert_abducible(not drug_induced(_11196,_11198,_11200),_11240,_11246).
drug_inhibited(_11342,_11344,_11346,_11374,_11380) :- insert_abducible(drug_inhibited(_11342,_11344,_11346),_11374,_11380).
not_drug_inhibited(_11476,_11478,_11480,_11520,_11526) :- insert_abducible(not drug_inhibited(_11476,_11478,_11480),_11520,_11526).
false_star1(_11726,_11732) :- not_drug_induced(phase0,drug,_11696,_11726,_11732).
false_star1(_11726,_11732) :- drug_induced(phase0,drug,_11696,_11726,_12080),not_drug_inhibited(phase0,drug,_11696,_12080,_11732).
false_star2(_11786,_11732) :- not_drug_induced(phase0,drug,apoptosis,_11786,_11732).
not_false(_11726,_11732) :- copy_term([],[]),false_star1(_11726,_11786),copy_term([],[]),false_star2(_11786,_11732).

externally_inhibited_ab(_12512,_12514,_12724) :- exists(_12512,_12526,[drug_inhibited(_12512,_12526,_12514)],_12660),possible_drug_effect(_12526,inhibit,_12514,_12660,_12724).

:- table externally_inhibited_ab(_,_,po(subset/2)).
externally_inhibited(_12900,_12906,_12912,_12918) :- externally_inhibited_ab(_12900,_12906,_12994),produce_context(_12918,_12912,_12994).
externally_inhibited_star1(_13064,_13070,_13204,_13204) :- [_13064,_13070]\=[_12512,_12514].
externally_inhibited_star1(_12512,_13070,_13088,_13094) :- not_exists(_12512,_12526,_13088,_13094).
externally_inhibited_star1(_12512,_12514,_13088,_13094) :- exists(_12512,_12526,_13088,_13502),not_possible_drug_effect(_12526,inhibit,_12514,_13502,_13094).
externally_inhibited_star1(_12512,_12514,_13088,_13094) :- exists(_12512,_12526,_13088,_13738),possible_drug_effect(_12526,inhibit,_12514,_13738,_13808),not_drug_inhibited(_12512,_12526,_12514,_13808,_13094).
not_externally_inhibited(_13064,_13070,_13088,_13094) :- externally_inhibited_star1(_13064,_13070,_13088,_13094).

drug_active_ab(_14006,_14008,_14218) :- exists(_14006,_14020,[drug_induced(_14006,_14020,_14008)],_14154),possible_drug_effect(_14020,induce,_14008,_14154,_14218).

:- table drug_active_ab(_,_,po(subset/2)).
drug_active(_14394,_14400,_14406,_14412) :- drug_active_ab(_14394,_14400,_14488),produce_context(_14412,_14406,_14488).
drug_active_star1(_14558,_14564,_14698,_14698) :- [_14558,_14564]\=[_14006,_14008].
drug_active_star1(_14006,_14564,_14582,_14588) :- not_exists(_14006,_14020,_14582,_14588).
drug_active_star1(_14006,_14008,_14582,_14588) :- exists(_14006,_14020,_14582,_14996),not_possible_drug_effect(_14020,induce,_14008,_14996,_14588).
drug_active_star1(_14006,_14008,_14582,_14588) :- exists(_14006,_14020,_14582,_15232),possible_drug_effect(_14020,induce,_14008,_15232,_15302),not_drug_induced(_14006,_14020,_14008,_15302,_14588).
not_drug_active(_14558,_14564,_14582,_14588) :- drug_active_star1(_14558,_14564,_14582,_14588).

externally_induced_ab(_15500,_15502,_15554) :- drug_active(_15500,_15502,[],_15554).

:- table externally_induced_ab(_,_,po(subset/2)).
externally_induced(_15722,_15728,_15734,_15740) :- externally_induced_ab(_15722,_15728,_15816),produce_context(_15740,_15734,_15816).
externally_induced_star1(_15886,_15892,_16026,_16026) :- [_15886,_15892]\=[_15500,_15502].
externally_induced_star1(_15500,_15502,_15910,_15916) :- not_drug_active(_15500,_15502,_15910,_15916).
not_externally_induced(_15886,_15892,_15910,_15916) :- externally_induced_star1(_15886,_15892,_15910,_15916).

inactive_ab(_16334,_16336,_16388) :- inhibited(_16334,_16336,[],_16388).

inactive_ab(_16278,_16280,_16712) :- not_active(_16278,_16280,[],_16604),reaction(rct(_16310,_16280),_16604,_16662),inactive(_16278,_16310,_16662,_16712).

:- table inactive_ab(_,_,po(subset/2)).
inactive(_16880,_16886,_16892,_16898) :- inactive_ab(_16880,_16886,_16974),produce_context(_16898,_16892,_16974).
inactive_star1(_17044,_17050,_17232,_17232) :- [_17044,_17050]\=[_16334,_16336].
inactive_star1(_16334,_16336,_17068,_17074) :- not_inhibited(_16334,_16336,_17068,_17074).
inactive_star2(_17044,_17050,_17530,_17530) :- [_17044,_17050]\=[_16278,_16280].
inactive_star2(_16278,_16280,_17156,_17074) :- active(_16278,_16280,_17156,_17074).
inactive_star2(_16278,_16280,_17156,_17074) :- not_reaction(rct(_16310,_16280),_17156,_17074).
inactive_star2(_16278,_16280,_17156,_17074) :- reaction(rct(_16310,_16280),_17156,_17978),not_inactive(_16278,_16310,_17978,_17074).
not_inactive(_17044,_17050,_17068,_17074) :- copy_term([_17044,_17050],[_17138,_17144]),inactive_star1(_17138,_17144,_17068,_17156),copy_term([_17044,_17050],[_17436,_17442]),inactive_star2(_17436,_17442,_17156,_17074).

normally_inhibited_ab(_18146,_18148,_18410) :- not_absent(_18148,[],_18296),inhibitor(_18148,_18174,_18296,_18352),active(_18146,_18174,_18352,_18410).

:- table normally_inhibited_ab(_,_,po(subset/2)).
normally_inhibited(_18578,_18584,_18590,_18596) :- normally_inhibited_ab(_18578,_18584,_18672),produce_context(_18596,_18590,_18672).
normally_inhibited_star1(_18742,_18748,_18882,_18882) :- [_18742,_18748]\=[_18146,_18148].
normally_inhibited_star1(_18742,_18148,_18766,_18772) :- absent(_18148,_18766,_18772).
normally_inhibited_star1(_18742,_18148,_18766,_18772) :- not_inhibitor(_18148,_18174,_18766,_18772).
normally_inhibited_star1(_18146,_18148,_18766,_18772) :- inhibitor(_18148,_18174,_18766,_19300),not_active(_18146,_18174,_19300,_18772).
not_normally_inhibited(_18742,_18748,_18766,_18772) :- normally_inhibited_star1(_18742,_18748,_18766,_18772).

inhibited_ab(_19514,_19516,_19684) :- not_absent(_19516,[],_19634),normally_inhibited(_19514,_19516,_19634,_19684).

inhibited_ab(_19476,_19478,_19918) :- not_absent(_19478,[],_19868),externally_inhibited(_19476,_19478,_19868,_19918).

:- table inhibited_ab(_,_,po(subset/2)).
inhibited(_20086,_20092,_20098,_20104) :- inhibited_ab(_20086,_20092,_20180),produce_context(_20104,_20098,_20180).
inhibited_star1(_20250,_20256,_20438,_20438) :- [_20250,_20256]\=[_19514,_19516].
inhibited_star1(_20250,_19516,_20274,_20280) :- absent(_19516,_20274,_20280).
inhibited_star1(_19514,_19516,_20274,_20280) :- not_normally_inhibited(_19514,_19516,_20274,_20280).
inhibited_star2(_20250,_20256,_20862,_20862) :- [_20250,_20256]\=[_19476,_19478].
inhibited_star2(_20250,_19478,_20362,_20280) :- absent(_19478,_20362,_20280).
inhibited_star2(_19476,_19478,_20362,_20280) :- not_externally_inhibited(_19476,_19478,_20362,_20280).
not_inhibited(_20250,_20256,_20274,_20280) :- copy_term([_20250,_20256],[_20344,_20350]),inhibited_star1(_20344,_20350,_20274,_20362),copy_term([_20250,_20256],[_20768,_20774]),inhibited_star2(_20768,_20774,_20362,_20280).

normally_active_ab(_21240,_21242,_21494) :- not_absent(_21242,[],_21394),reaction(rct(_21270,_21242),_21394,_21444),active(_21240,_21270,_21444,_21494).

:- table normally_active_ab(_,_,po(subset/2)).
normally_active(_21662,_21668,_21674,_21680) :- normally_active_ab(_21662,_21668,_21756),produce_context(_21680,_21674,_21756).
normally_active_star1(_21826,_21832,_21966,_21966) :- [_21826,_21832]\=[_21240,_21242].
normally_active_star1(_21826,_21242,_21850,_21856) :- absent(_21242,_21850,_21856).
normally_active_star1(_21826,_21242,_21850,_21856) :- not_reaction(rct(_21270,_21242),_21850,_21856).
normally_active_star1(_21240,_21242,_21850,_21856) :- reaction(rct(_21270,_21242),_21850,_22376),not_active(_21240,_21270,_22376,_21856).
not_normally_active(_21826,_21832,_21850,_21856) :- normally_active_star1(_21826,_21832,_21850,_21856).

active_ab(_22582,_22584,_22892) :- not_absent(_22584,[],_22736),not_inhibited(_22582,_22584,_22736,_22834),normally_active(_22582,_22584,_22834,_22892).

active_ab(_22544,_22546,_23126) :- not_absent(_22546,[],_23076),externally_induced(_22544,_22546,_23076,_23126).

:- table active_ab(_,_,po(subset/2)).
active(_23294,_23300,_23306,_23312) :- active_ab(_23294,_23300,_23388),produce_context(_23312,_23306,_23388).
active_star1(_23458,_23464,_23646,_23646) :- [_23458,_23464]\=[_22582,_22584].
active_star1(_23458,_22584,_23482,_23488) :- absent(_22584,_23482,_23488).
active_star1(_22582,_22584,_23482,_23488) :- inhibited(_22582,_22584,_23482,_23488).
active_star1(_22582,_22584,_23482,_23488) :- not_normally_active(_22582,_22584,_23482,_23488).
active_star2(_23458,_23464,_24240,_24240) :- [_23458,_23464]\=[_22544,_22546].
active_star2(_23458,_22546,_23570,_23488) :- absent(_22546,_23570,_23488).
active_star2(_22544,_22546,_23570,_23488) :- not_externally_induced(_22544,_22546,_23570,_23488).
not_active(_23458,_23464,_23482,_23488) :- copy_term([_23458,_23464],[_23552,_23558]),active_star1(_23552,_23558,_23482,_23570),copy_term([_23458,_23464],[_24146,_24152]),active_star2(_24146,_24152,_23570,_23488).


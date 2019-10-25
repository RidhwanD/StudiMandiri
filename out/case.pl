:- table recommendation_ab/3.
recommendation_ab(beta_blockers,class_1,_9326) :- accf_stage(b,[],_9098),history_of_mi_or_acs(_9098,_9142),measurement(lvef,_8950,_9142,_9190),reduced_ef(_8950,_9190,_9248),not_contraindication(beta_blockers,_9248,_9326).

recommendation_ab(digoxin,class_2a,_9614) :- not_contraindication(digoxin,[],_9520),accf_stage(c,_9520,_9570),diagnosis(hf_with_reduced_ef,_9570,_9614).

recommendation_ab(blood_pressure_control,class_1,_9902) :- accf_stage(b,[],_9774),diagnosis(structural_cardiac_abnormalities,_9774,_9824),not_contraindication(blood_pressure_control,_9824,_9902).

recommendation_ab(ace_inhibitors,class_1,_10190) :- not_contraindication(ace_inhibitors,[],_10096),accf_stage(c,_10096,_10146),diagnosis(hf_with_reduced_ef,_10146,_10190).

recommendation_ab(arbs,class_1,_10648) :- contraindication(ace_inhibitors,[],_10386),not_contraindication(arbs,_10386,_10470),not_taboo_choice(arbs,_10470,_10554),accf_stage(c,_10554,_10604),diagnosis(hf_with_reduced_ef,_10604,_10648).

recommendation_ab(ace_inhibitors,class_1,_11038) :- accf_stage(c,[],_10826),not_skip_concomitant_choice(ace_inhibitors,_10826,_10910),not_contraindication(ace_inhibitors,_10910,_10994),diagnosis(hf_with_reduced_ef,_10994,_11038).

recommendation_ab(diuretics,class_1,_11332) :- diagnosis(hf_with_reduced_ef,[],_11198),not_contraindication(diuretics,_11198,_11282),recommendation(ace_inhibitors,class_1,_11282,_11332).

recommendation_ab(beta_blockers,class_1,_11832) :- not_skip_concomitant_choice(beta_blockers,[],_11570),not_absent_indispensable_choice(beta_blockers,_11570,_11654),not_contraindication(beta_blockers,_11654,_11738),accf_stage(c,_11738,_11788),diagnosis(hf_with_reduced_ef,_11788,_11832).

recommendation_ab(diuretics,class_1,_12264) :- recommendation(beta_blockers,class_1,[],_12034),not_contraindication(diuretics,_12034,_12126),accf_stage(c,_12126,_12176),diagnosis(hf_with_reduced_ef,_12176,_12226),current_or_recent_history_of_fluid_retention(_12226,_12264).

recommendation_ab(ace_inhibitors,class_1,_12748) :- accf_stage(c,[],_12452),diagnosis(hf_with_reduced_ef,_12452,_12502),not_skip_concomitant_choice(ace_inhibitors,_12502,_12586),not_taboo_choice(ace_inhibitors,_12586,_12670),not_contraindication(ace_inhibitors,_12670,_12748).

recommendation_ab(arbs,class_1,_13206) :- contraindication(ace_inhibitors,[],_12944),not_contraindication(arbs,_12944,_13028),not_taboo_choice(arbs,_13028,_13112),accf_stage(c,_13112,_13162),diagnosis(hf_with_reduced_ef,_13162,_13206).

recommendation_ab(aldosterone_antagonist,class_1,_13616) :- conditions_for_aldosterone_antagonist_class_1([],_13378),not_skip_concomitant_choice(aldosterone_antagonist,_13378,_13454),not_contraindication(aldosterone_antagonist,_13454,_13538),not_taboo_choice(aldosterone_antagonist,_13538,_13616).

recommendation(_13704,_13710,_13716,_13722) :- recommendation_ab(_13704,_13710,_13798),produce_context(_13722,_13716,_13798).
recommendation_star1(_13868,_13874,_14056,_14056) :- [_13868,_13874]\=[beta_blockers,class_1].
recommendation_star1(_13868,_13874,_13892,_13898) :- not_accf_stage(b,_13892,_13898).
recommendation_star1(_13868,_13874,_13892,_13898) :- accf_stage(b,_13892,_14304),not_history_of_mi_or_acs(_14304,_13898).
recommendation_star1(_13868,_13874,_13892,_13898) :- accf_stage(b,_13892,_14478),history_of_mi_or_acs(_14478,_14522),not_measurement(lvef,_8950,_14522,_13898).
recommendation_star1(_13868,_13874,_13892,_13898) :- accf_stage(b,_13892,_14716),history_of_mi_or_acs(_14716,_14760),measurement(lvef,_8950,_14760,_14808),not_reduced_ef(_8950,_14808,_13898).
recommendation_star1(_13868,_13874,_13892,_13898) :- accf_stage(b,_13892,_15010),history_of_mi_or_acs(_15010,_15054),measurement(lvef,_8950,_15054,_15102),reduced_ef(_8950,_15102,_15160),contraindication(beta_blockers,_15160,_13898).
recommendation_star2(_13868,_13874,_15354,_15354) :- [_13868,_13874]\=[digoxin,class_2a].
recommendation_star2(_13868,_13874,_13980,_13898) :- contraindication(digoxin,_13980,_13898).
recommendation_star2(_13868,_13874,_13980,_13898) :- not_accf_stage(c,_13980,_13898).
recommendation_star2(_13868,_13874,_13980,_13898) :- accf_stage(c,_13980,_15728),not_diagnosis(hf_with_reduced_ef,_15728,_13898).
recommendation_star3(_13868,_13874,_15934,_15934) :- [_13868,_13874]\=[blood_pressure_control,class_1].
recommendation_star3(_13868,_13874,_15278,_13898) :- not_accf_stage(b,_15278,_13898).
recommendation_star3(_13868,_13874,_15278,_13898) :- accf_stage(b,_15278,_16188),not_diagnosis(structural_cardiac_abnormalities,_16188,_13898).
recommendation_star3(_13868,_13874,_15278,_13898) :- accf_stage(b,_15278,_16370),diagnosis(structural_cardiac_abnormalities,_16370,_16420),contraindication(blood_pressure_control,_16420,_13898).
recommendation_star4(_13868,_13874,_16614,_16614) :- [_13868,_13874]\=[ace_inhibitors,class_1].
recommendation_star4(_13868,_13874,_15858,_13898) :- contraindication(ace_inhibitors,_15858,_13898).
recommendation_star4(_13868,_13874,_15858,_13898) :- not_accf_stage(c,_15858,_13898).
recommendation_star4(_13868,_13874,_15858,_13898) :- accf_stage(c,_15858,_16988),not_diagnosis(hf_with_reduced_ef,_16988,_13898).
recommendation_star5(_13868,_13874,_17194,_17194) :- [_13868,_13874]\=[arbs,class_1].
recommendation_star5(_13868,_13874,_16538,_13898) :- not_contraindication(ace_inhibitors,_16538,_13898).
recommendation_star5(_13868,_13874,_16538,_13898) :- contraindication(ace_inhibitors,_16538,_17448),contraindication(arbs,_17448,_13898).
recommendation_star5(_13868,_13874,_16538,_13898) :- contraindication(ace_inhibitors,_16538,_17618),taboo_choice(arbs,_17618,_13898).
recommendation_star5(_13868,_13874,_16538,_13898) :- contraindication(ace_inhibitors,_16538,_17794),not_accf_stage(c,_17794,_13898).
recommendation_star5(_13868,_13874,_16538,_13898) :- contraindication(ace_inhibitors,_16538,_17988),accf_stage(c,_17988,_18038),not_diagnosis(hf_with_reduced_ef,_18038,_13898).
recommendation_star6(_13868,_13874,_18244,_18244) :- [_13868,_13874]\=[ace_inhibitors,class_1].
recommendation_star6(_13868,_13874,_17118,_13898) :- not_accf_stage(c,_17118,_13898).
recommendation_star6(_13868,_13874,_17118,_13898) :- accf_stage(c,_17118,_18498),skip_concomitant_choice(ace_inhibitors,_18498,_13898).
recommendation_star6(_13868,_13874,_17118,_13898) :- accf_stage(c,_17118,_18668),contraindication(ace_inhibitors,_18668,_13898).
recommendation_star6(_13868,_13874,_17118,_13898) :- accf_stage(c,_17118,_18844),not_diagnosis(hf_with_reduced_ef,_18844,_13898).
recommendation_star7(_13868,_13874,_19050,_19050) :- [_13868,_13874]\=[diuretics,class_1].
recommendation_star7(_13868,_13874,_18168,_13898) :- not_diagnosis(hf_with_reduced_ef,_18168,_13898).
recommendation_star7(_13868,_13874,_18168,_13898) :- diagnosis(hf_with_reduced_ef,_18168,_19304),contraindication(diuretics,_19304,_13898).
recommendation_star7(_13868,_13874,_18168,_13898) :- diagnosis(hf_with_reduced_ef,_18168,_19480),not_recommendation(ace_inhibitors,class_1,_19480,_13898).
recommendation_star8(_13868,_13874,_19700,_19700) :- [_13868,_13874]\=[beta_blockers,class_1].
recommendation_star8(_13868,_13874,_18974,_13898) :- skip_concomitant_choice(beta_blockers,_18974,_13898).
recommendation_star8(_13868,_13874,_18974,_13898) :- absent_indispensable_choice(beta_blockers,_18974,_13898).
recommendation_star8(_13868,_13874,_18974,_13898) :- contraindication(beta_blockers,_18974,_13898).
recommendation_star8(_13868,_13874,_18974,_13898) :- not_accf_stage(c,_18974,_13898).
recommendation_star8(_13868,_13874,_18974,_13898) :- accf_stage(c,_18974,_20332),not_diagnosis(hf_with_reduced_ef,_20332,_13898).
recommendation_star9(_13868,_13874,_20538,_20538) :- [_13868,_13874]\=[diuretics,class_1].
recommendation_star9(_13868,_13874,_19624,_13898) :- not_recommendation(beta_blockers,class_1,_19624,_13898).
recommendation_star9(_13868,_13874,_19624,_13898) :- recommendation(beta_blockers,class_1,_19624,_20818),contraindication(diuretics,_20818,_13898).
recommendation_star9(_13868,_13874,_19624,_13898) :- recommendation(beta_blockers,class_1,_19624,_21002),not_accf_stage(c,_21002,_13898).
recommendation_star9(_13868,_13874,_19624,_13898) :- recommendation(beta_blockers,class_1,_19624,_21204),accf_stage(c,_21204,_21262),not_diagnosis(hf_with_reduced_ef,_21262,_13898).
recommendation_star9(_13868,_13874,_19624,_13898) :- recommendation(beta_blockers,class_1,_19624,_21456),accf_stage(c,_21456,_21514),diagnosis(hf_with_reduced_ef,_21514,_21564),not_current_or_recent_history_of_fluid_retention(_21564,_13898).
recommendation_star10(_13868,_13874,_21756,_21756) :- [_13868,_13874]\=[ace_inhibitors,class_1].
recommendation_star10(_13868,_13874,_20462,_13898) :- not_accf_stage(c,_20462,_13898).
recommendation_star10(_13868,_13874,_20462,_13898) :- accf_stage(c,_20462,_22010),not_diagnosis(hf_with_reduced_ef,_22010,_13898).
recommendation_star10(_13868,_13874,_20462,_13898) :- accf_stage(c,_20462,_22192),diagnosis(hf_with_reduced_ef,_22192,_22242),skip_concomitant_choice(ace_inhibitors,_22242,_13898).
recommendation_star10(_13868,_13874,_20462,_13898) :- accf_stage(c,_20462,_22418),diagnosis(hf_with_reduced_ef,_22418,_22468),taboo_choice(ace_inhibitors,_22468,_13898).
recommendation_star10(_13868,_13874,_20462,_13898) :- accf_stage(c,_20462,_22650),diagnosis(hf_with_reduced_ef,_22650,_22700),contraindication(ace_inhibitors,_22700,_13898).
recommendation_star11(_13868,_13874,_22894,_22894) :- [_13868,_13874]\=[arbs,class_1].
recommendation_star11(_13868,_13874,_21680,_13898) :- not_contraindication(ace_inhibitors,_21680,_13898).
recommendation_star11(_13868,_13874,_21680,_13898) :- contraindication(ace_inhibitors,_21680,_23148),contraindication(arbs,_23148,_13898).
recommendation_star11(_13868,_13874,_21680,_13898) :- contraindication(ace_inhibitors,_21680,_23318),taboo_choice(arbs,_23318,_13898).
recommendation_star11(_13868,_13874,_21680,_13898) :- contraindication(ace_inhibitors,_21680,_23494),not_accf_stage(c,_23494,_13898).
recommendation_star11(_13868,_13874,_21680,_13898) :- contraindication(ace_inhibitors,_21680,_23688),accf_stage(c,_23688,_23738),not_diagnosis(hf_with_reduced_ef,_23738,_13898).
recommendation_star12(_13868,_13874,_23938,_23938) :- [_13868,_13874]\=[aldosterone_antagonist,class_1].
recommendation_star12(_13868,_13874,_22818,_13898) :- not_conditions_for_aldosterone_antagonist_class_1(_22818,_13898).
recommendation_star12(_13868,_13874,_22818,_13898) :- conditions_for_aldosterone_antagonist_class_1(_22818,_24166),skip_concomitant_choice(aldosterone_antagonist,_24166,_13898).
recommendation_star12(_13868,_13874,_22818,_13898) :- conditions_for_aldosterone_antagonist_class_1(_22818,_24322),contraindication(aldosterone_antagonist,_24322,_13898).
recommendation_star12(_13868,_13874,_22818,_13898) :- conditions_for_aldosterone_antagonist_class_1(_22818,_24484),taboo_choice(aldosterone_antagonist,_24484,_13898).
not_recommendation(_13868,_13874,_13892,_13898) :- copy_term([_13868,_13874],[_13962,_13968]),recommendation_star1(_13962,_13968,_13892,_13980),copy_term([_13868,_13874],[_15260,_15266]),recommendation_star2(_15260,_15266,_13980,_15278),copy_term([_13868,_13874],[_15840,_15846]),recommendation_star3(_15840,_15846,_15278,_15858),copy_term([_13868,_13874],[_16520,_16526]),recommendation_star4(_16520,_16526,_15858,_16538),copy_term([_13868,_13874],[_17100,_17106]),recommendation_star5(_17100,_17106,_16538,_17118),copy_term([_13868,_13874],[_18150,_18156]),recommendation_star6(_18150,_18156,_17118,_18168),copy_term([_13868,_13874],[_18956,_18962]),recommendation_star7(_18956,_18962,_18168,_18974),copy_term([_13868,_13874],[_19606,_19612]),recommendation_star8(_19606,_19612,_18974,_19624),copy_term([_13868,_13874],[_20444,_20450]),recommendation_star9(_20444,_20450,_19624,_20462),copy_term([_13868,_13874],[_21662,_21668]),recommendation_star10(_21662,_21668,_20462,_21680),copy_term([_13868,_13874],[_22800,_22806]),recommendation_star11(_22800,_22806,_21680,_22818),copy_term([_13868,_13874],[_23844,_23850]),recommendation_star12(_23844,_23850,_22818,_13898).

:- table contraindication_ab/2.
contraindication_ab(digoxin,_24770) :- evidence(atrioventricular_block,[],_24770).

contraindication_ab(blood_pressure_control,_24874) :- history(mi,[],_24874).

contraindication_ab(blood_pressure_control,_24978) :- history(acs,[],_24978).

contraindication_ab(anticoagulation,_25364) :- not_cardioembolic_source([],_25160),not_diagnosis(af,_25160,_25236),not_history(thromboembolism,_25236,_25320),diagnosis(hf_with_reduced_ef,_25320,_25364).

contraindication(_25438,_25444,_25450) :- contraindication_ab(_25438,_25510),produce_context(_25450,_25444,_25510).
contraindication_star1(_25572,_25726,_25726) :- [_25572]\=[digoxin].
contraindication_star1(_25572,_25590,_25596) :- not_evidence(atrioventricular_block,_25590,_25596).
contraindication_star2(_25572,_25968,_25968) :- [_25572]\=[blood_pressure_control].
contraindication_star2(_25572,_25664,_25596) :- not_history(mi,_25664,_25596).
contraindication_star3(_25572,_26210,_26210) :- [_25572]\=[blood_pressure_control].
contraindication_star3(_25572,_25906,_25596) :- not_history(acs,_25906,_25596).
contraindication_star4(_25572,_26446,_26446) :- [_25572]\=[anticoagulation].
contraindication_star4(_25572,_26148,_25596) :- cardioembolic_source(_26148,_25596).
contraindication_star4(_25572,_26148,_25596) :- diagnosis(af,_26148,_25596).
contraindication_star4(_25572,_26148,_25596) :- history(thromboembolism,_26148,_25596).
contraindication_star4(_25572,_26148,_25596) :- not_diagnosis(hf_with_reduced_ef,_26148,_25596).
not_contraindication(_25572,_25590,_25596) :- copy_term([_25572],[_25652]),contraindication_star1(_25652,_25590,_25664),copy_term([_25572],[_25894]),contraindication_star2(_25894,_25664,_25906),copy_term([_25572],[_26136]),contraindication_star3(_26136,_25906,_26148),copy_term([_25572],[_26372]),contraindication_star4(_26372,_26148,_25596).

:- table skip_concomitant_treatment_ab/2.
skip_concomitant_treatment_ab(ace_inhibitors,_27266) :- diagnosis(hf_with_reduced_ef,[],_27082),not_recommendation(diuretics,class_1,_27082,_27180),not_contraindication(diuretics,_27180,_27266).

skip_concomitant_treatment(_27340,_27346,_27352) :- skip_concomitant_treatment_ab(_27340,_27412),produce_context(_27352,_27346,_27412).
skip_concomitant_treatment_star1(_27474,_27586,_27586) :- [_27474]\=[ace_inhibitors].
skip_concomitant_treatment_star1(_27474,_27492,_27498) :- not_diagnosis(hf_with_reduced_ef,_27492,_27498).
skip_concomitant_treatment_star1(_27474,_27492,_27498) :- diagnosis(hf_with_reduced_ef,_27492,_27804),recommendation(diuretics,class_1,_27804,_27498).
skip_concomitant_treatment_star1(_27474,_27492,_27498) :- diagnosis(hf_with_reduced_ef,_27492,_27974),contraindication(diuretics,_27974,_27498).
not_skip_concomitant_treatment(_27474,_27492,_27498) :- skip_concomitant_treatment_star1(_27474,_27492,_27498).

:- table absent_indispensable_choice_ab/2.
absent_indispensable_choice_ab(beta_blockers,_28452) :- not_recommendation(diuretics,class_1,[],_28306),diagnosis(hf_with_reduced_ef,_28306,_28364),accf_stage(c,_28364,_28414),current_or_recent_history_of_fluid_retention(_28414,_28452).

absent_indispensable_choice(_28518,_28524,_28530) :- absent_indispensable_choice_ab(_28518,_28590),produce_context(_28530,_28524,_28590).
absent_indispensable_choice_star1(_28652,_28764,_28764) :- [_28652]\=[beta_blockers].
absent_indispensable_choice_star1(_28652,_28670,_28676) :- recommendation(diuretics,class_1,_28670,_28676).
absent_indispensable_choice_star1(_28652,_28670,_28676) :- not_diagnosis(hf_with_reduced_ef,_28670,_28676).
absent_indispensable_choice_star1(_28652,_28670,_28676) :- diagnosis(hf_with_reduced_ef,_28670,_29102),not_accf_stage(c,_29102,_28676).
absent_indispensable_choice_star1(_28652,_28670,_28676) :- diagnosis(hf_with_reduced_ef,_28670,_29270),accf_stage(c,_29270,_29320),not_current_or_recent_history_of_fluid_retention(_29320,_28676).
not_absent_indispensable_choice(_28652,_28670,_28676) :- absent_indispensable_choice_star1(_28652,_28670,_28676).

:- table taboo_choice_ab/2.
taboo_choice_ab(ace_inhibitors,_29778) :- diagnosis(hf_with_reduced_ef,[],_29664),recommendation(arbs,class_1,_29664,_29720),recommendation(aldosterone_antagonist,class_1,_29720,_29778).

taboo_choice_ab(arbs,_30046) :- diagnosis(hf_with_reduced_ef,[],_29932),recommendation(ace_inhibitors,class_1,_29932,_29988),recommendation(aldosterone_antagonist,class_1,_29988,_30046).

taboo_choice_ab(aldosterone_antagonist,_30314) :- diagnosis(hf_with_reduced_ef,[],_30200),recommendation(arbs,class_1,_30200,_30256),recommendation(ace_inhibitors,class_1,_30256,_30314).

taboo_choice(_30396,_30402,_30408) :- taboo_choice_ab(_30396,_30468),produce_context(_30408,_30402,_30468).
taboo_choice_star1(_30530,_30684,_30684) :- [_30530]\=[ace_inhibitors].
taboo_choice_star1(_30530,_30548,_30554) :- not_diagnosis(hf_with_reduced_ef,_30548,_30554).
taboo_choice_star1(_30530,_30548,_30554) :- diagnosis(hf_with_reduced_ef,_30548,_30908),not_recommendation(arbs,class_1,_30908,_30554).
taboo_choice_star1(_30530,_30548,_30554) :- diagnosis(hf_with_reduced_ef,_30548,_31096),recommendation(arbs,class_1,_31096,_31152),not_recommendation(aldosterone_antagonist,class_1,_31152,_30554).
taboo_choice_star2(_30530,_31360,_31360) :- [_30530]\=[arbs].
taboo_choice_star2(_30530,_30622,_30554) :- not_diagnosis(hf_with_reduced_ef,_30622,_30554).
taboo_choice_star2(_30530,_30622,_30554) :- diagnosis(hf_with_reduced_ef,_30622,_31584),not_recommendation(ace_inhibitors,class_1,_31584,_30554).
taboo_choice_star2(_30530,_30622,_30554) :- diagnosis(hf_with_reduced_ef,_30622,_31772),recommendation(ace_inhibitors,class_1,_31772,_31828),not_recommendation(aldosterone_antagonist,class_1,_31828,_30554).
taboo_choice_star3(_30530,_32030,_32030) :- [_30530]\=[aldosterone_antagonist].
taboo_choice_star3(_30530,_31298,_30554) :- not_diagnosis(hf_with_reduced_ef,_31298,_30554).
taboo_choice_star3(_30530,_31298,_30554) :- diagnosis(hf_with_reduced_ef,_31298,_32254),not_recommendation(arbs,class_1,_32254,_30554).
taboo_choice_star3(_30530,_31298,_30554) :- diagnosis(hf_with_reduced_ef,_31298,_32442),recommendation(arbs,class_1,_32442,_32498),not_recommendation(ace_inhibitors,class_1,_32498,_30554).
not_taboo_choice(_30530,_30548,_30554) :- copy_term([_30530],[_30610]),taboo_choice_star1(_30610,_30548,_30622),copy_term([_30530],[_31286]),taboo_choice_star2(_31286,_30622,_31298),copy_term([_30530],[_31956]),taboo_choice_star3(_31956,_31298,_30554).

:- table accf_stage_ab/2.
accf_stage_ab(c,[]).

accf_stage(_32754,_32760,_32766) :- accf_stage_ab(_32754,_32826),produce_context(_32766,_32760,_32826).
accf_stage_star1(_32888,_33000,_33000) :- [_32888]\=[c].
not_accf_stage(_32888,_32906,_32912) :- accf_stage_star1(_32888,_32906,_32912).

:- table nyha_class_ab/2.
nyha_class_ab(3,[]).

nyha_class(_33180,_33186,_33192) :- nyha_class_ab(_33180,_33252),produce_context(_33192,_33186,_33252).
nyha_class_star1(_33314,_33426,_33426) :- [_33314]\=[3].
not_nyha_class(_33314,_33332,_33338) :- nyha_class_star1(_33314,_33332,_33338).

:- table expectation_of_survival_ab/2.
expectation_of_survival_ab(3,[]).

expectation_of_survival(_33606,_33612,_33618) :- expectation_of_survival_ab(_33606,_33678),produce_context(_33618,_33612,_33678).
expectation_of_survival_star1(_33740,_33852,_33852) :- [_33740]\=[3].
not_expectation_of_survival(_33740,_33758,_33764) :- expectation_of_survival_star1(_33740,_33758,_33764).

:- table gender_ab/2.
gender_ab(female,[]).

gender(_34032,_34038,_34044) :- gender_ab(_34032,_34104),produce_context(_34044,_34038,_34104).
gender_star1(_34166,_34278,_34278) :- [_34166]\=[female].
not_gender(_34166,_34184,_34190) :- gender_star1(_34166,_34184,_34190).

:- table age_ab/2.
age_ab(78,[]).

age(_34458,_34464,_34470) :- age_ab(_34458,_34530),produce_context(_34470,_34464,_34530).
age_star1(_34592,_34704,_34704) :- [_34592]\=[78].
not_age(_34592,_34610,_34616) :- age_star1(_34592,_34610,_34616).

:- table hf_with_reduced_ef_ab/1.
hf_with_reduced_ef_ab([]).

hf_with_reduced_ef(_34862,_34868) :- hf_with_reduced_ef_ab(_34910),produce_context(_34868,_34862,_34910).
not_hf_with_reduced_ef(_34976,_34982) :- hf_with_reduced_ef_star1(_34976,_34982).

:- table measurement_ab/3.
measurement_ab(creatinine,1.8,[]).

measurement_ab(potassium,4.9,[]).

measurement_ab(lvef,0.35,[]).

measurement_ab(lbbb,180,[]).

measurement(_35536,_35542,_35548,_35554) :- measurement_ab(_35536,_35542,_35630),produce_context(_35554,_35548,_35630).
measurement_star1(_35700,_35706,_35888,_35888) :- [_35700,_35706]\=[creatinine,1.8].
measurement_star2(_35700,_35706,_36052,_36052) :- [_35700,_35706]\=[potassium,4.9].
measurement_star3(_35700,_35706,_36216,_36216) :- [_35700,_35706]\=[lvef,0.35].
measurement_star4(_35700,_35706,_36374,_36374) :- [_35700,_35706]\=[lbbb,180].
not_measurement(_35700,_35706,_35724,_35730) :- copy_term([_35700,_35706],[_35794,_35800]),measurement_star1(_35794,_35800,_35724,_35812),copy_term([_35700,_35706],[_35958,_35964]),measurement_star2(_35958,_35964,_35812,_35976),copy_term([_35700,_35706],[_36122,_36128]),measurement_star3(_36122,_36128,_35976,_36140),copy_term([_35700,_35706],[_36280,_36286]),measurement_star4(_36280,_36286,_36140,_35730).

:- table measurement_ab/2.
measurement_ab(sinus_rhythm,[]).

measurement(_36562,_36568,_36574) :- measurement_ab(_36562,_36634),produce_context(_36574,_36568,_36634).
measurement_star1(_36696,_36808,_36808) :- [_36696]\=[sinus_rhythm].
not_measurement(_36696,_36714,_36720) :- measurement_star1(_36696,_36714,_36720).

:- table diagnosis_ab/2.
diagnosis_ab(myocardial_ischemia,[]).

diagnosis_ab(atrial_fibrillation,[]).

diagnosis_ab(coronary_artery_disease,[]).

diagnosis_ab(hypertension,[]).

diagnosis(_37220,_37226,_37232) :- diagnosis_ab(_37220,_37292),produce_context(_37232,_37226,_37292).
diagnosis_star1(_37354,_37508,_37508) :- [_37354]\=[myocardial_ischemia].
diagnosis_star2(_37354,_37644,_37644) :- [_37354]\=[atrial_fibrillation].
diagnosis_star3(_37354,_37780,_37780) :- [_37354]\=[coronary_artery_disease].
diagnosis_star4(_37354,_37910,_37910) :- [_37354]\=[hypertension].
not_diagnosis(_37354,_37372,_37378) :- copy_term([_37354],[_37434]),diagnosis_star1(_37434,_37372,_37446),copy_term([_37354],[_37570]),diagnosis_star2(_37570,_37446,_37582),copy_term([_37354],[_37706]),diagnosis_star3(_37706,_37582,_37718),copy_term([_37354],[_37836]),diagnosis_star4(_37836,_37718,_37378).

:- table evidence_ab/2.
evidence_ab(ischemic_etiology_of_hf,[]).

evidence_ab(sleep_apnea,[]).

evidence_ab(fluid_retention,[]).

evidence(_38246,_38252,_38258) :- evidence_ab(_38246,_38318),produce_context(_38258,_38252,_38318).
evidence_star1(_38380,_38534,_38534) :- [_38380]\=[ischemic_etiology_of_hf].
evidence_star2(_38380,_38670,_38670) :- [_38380]\=[sleep_apnea].
evidence_star3(_38380,_38800,_38800) :- [_38380]\=[fluid_retention].
not_evidence(_38380,_38398,_38404) :- copy_term([_38380],[_38460]),evidence_star1(_38460,_38398,_38472),copy_term([_38380],[_38596]),evidence_star2(_38596,_38472,_38608),copy_term([_38380],[_38726]),evidence_star3(_38726,_38608,_38404).

:- table history_ab/3.
history_ab(mi,recent,[]).

history(_38998,_39004,_39010,_39016) :- history_ab(_38998,_39004,_39092),produce_context(_39016,_39010,_39092).
history_star1(_39162,_39168,_39302,_39302) :- [_39162,_39168]\=[mi,recent].
not_history(_39162,_39168,_39186,_39192) :- history_star1(_39162,_39168,_39186,_39192).

:- table history_ab/2.
history_ab(stroke,[]).

history_ab(cardiovascular_hospitalization,[]).

history(_39570,_39576,_39582) :- history_ab(_39570,_39642),produce_context(_39582,_39576,_39642).
history_star1(_39704,_39858,_39858) :- [_39704]\=[stroke].
history_star2(_39704,_39988,_39988) :- [_39704]\=[cardiovascular_hospitalization].
not_history(_39704,_39722,_39728) :- copy_term([_39704],[_39784]),history_star1(_39784,_39722,_39796),copy_term([_39704],[_39914]),history_star2(_39914,_39796,_39728).

:- table post_mi_ab/2.
post_mi_ab(40,[]).

post_mi(_40168,_40174,_40180) :- post_mi_ab(_40168,_40240),produce_context(_40180,_40174,_40240).
post_mi_star1(_40302,_40414,_40414) :- [_40302]\=[40].
not_post_mi(_40302,_40320,_40326) :- post_mi_star1(_40302,_40320,_40326).

not_false(_40504,_40504).



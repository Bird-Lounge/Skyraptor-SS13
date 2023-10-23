/proc/generate_teshvali_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/teshvali
	var/static/icon/teshvali_with_snout

	if (isnull(teshvali))
		teshvali = icon('modular_skyraptor/modules/species_teshvali/icons/bodyparts.dmi', "teshvali_head", EAST)
		var/icon/eyes = icon('modular_skyraptor/modules/species_teshvali/icons/teshvali_external.dmi', "teshvalieyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		teshvali.Blend(eyes, ICON_OVERLAY)

		teshvali_with_snout = icon(teshvali)
		teshvali_with_snout.Blend(icon('modular_skyraptor/modules/species_teshvali/icons/teshvali_external.dmi', "m_snout_teshvali_standard_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(teshvali_with_snout) : icon(teshvali)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)

	return final_icon






//== SNOUT
/datum/preference/choiced/teshvali_snout
	savefile_key = "feature_teshvali_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/snout/teshvali

/datum/preference/choiced/teshvali_snout/init_possible_values()
	return assoc_to_keys_features(GLOB.snouts_list_teshvali)

/datum/preference/choiced/teshvali_snout/icon_for(value)
	return generate_teshvali_side_shot(GLOB.snouts_list_teshvali[value], "snout_teshvali", include_snout = TRUE)

/datum/preference/choiced/teshvali_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["snout_teshvali"] = value

/datum/preference/choiced/teshvali_snout/create_default_value()
	var/datum/sprite_accessory/snouts/teshvali/standard/snout = /datum/sprite_accessory/snouts/teshvali/standard
	return initial(snout.name)


/datum/mutant_newdnafeature/snouts_teshvali
	name = "Teshvali snout"
	id = "snout_teshvali"

/datum/mutant_newdnafeature/snouts_teshvali/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_SNOUT_BLOCK] = construct_block(GLOB.snouts_list_teshvali.Find(features[id]), GLOB.snouts_list_teshvali.len)

/datum/mutant_newdnafeature/snouts_teshvali/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.snouts_list_teshvali[deconstruct_block(get_uni_feature_block(features, DNA_SNOUT_BLOCK), GLOB.snouts_list_teshvali.len)]

//== HORNS
/datum/preference/choiced/teshvali_horns
	savefile_key = "feature_teshvali_horns"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Horns"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/horns/teshvali

/datum/preference/choiced/teshvali_horns/init_possible_values()
	return assoc_to_keys_features(GLOB.horns_list_teshvali)

/datum/preference/choiced/teshvali_horns/icon_for(value)
	return generate_teshvali_side_shot(GLOB.horns_list_teshvali[value], "horns_teshvali", include_snout = TRUE)

/datum/preference/choiced/teshvali_horns/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["horns_teshvali"] = value

/datum/preference/choiced/teshvali_horns/create_default_value()
	var/datum/sprite_accessory/horns/teshvali/mane/horns = /datum/sprite_accessory/horns/teshvali/mane
	return initial(horns.name)

/datum/preference/choiced/teshvali_horns/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "horns_color"

	return data


/datum/mutant_newdnafeature/horns_teshvali
	name = "Teshvali horns"
	id = "horns_teshvali"

/datum/mutant_newdnafeature/horns_teshvali/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_HORNS_BLOCK] = construct_block(GLOB.horns_list_teshvali.Find(features[id]), GLOB.horns_list_teshvali.len)

/datum/mutant_newdnafeature/horns_teshvali/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.horns_list_teshvali[deconstruct_block(get_uni_feature_block(features, DNA_HORNS_BLOCK), GLOB.horns_list_teshvali.len)]



//== TAIL
/datum/preference/choiced/teshvali_tail
	savefile_key = "feature_teshvali_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/teshvali
	main_feature_name = "Tail"
	should_generate_icons = FALSE

/datum/preference/choiced/teshvali_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_teshvali)

/datum/preference/choiced/teshvali_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_teshvali"] = value

/datum/preference/choiced/teshvali_tail/create_default_value()
	var/datum/sprite_accessory/tails/teshvali/fluffy/tail = /datum/sprite_accessory/tails/teshvali/fluffy
	return initial(tail.name)


/datum/mutant_newdnafeature/tail_teshvali
	name = "Teshvali tail"
	id = "tail_teshvali"

/datum/mutant_newdnafeature/tail_teshvali/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_TAIL_BLOCK] = construct_block(GLOB.tails_list_teshvali.Find(features[id]), GLOB.tails_list_teshvali.len)

/datum/mutant_newdnafeature/tail_teshvali/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.tails_list_teshvali[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_TAIL_BLOCK), GLOB.tails_list_teshvali.len)]



//== BODY MARKINGS
/datum/preference/choiced/teshvali_body_markings
	savefile_key = "feature_teshvali_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "bodymarks_teshvali"

/datum/preference/choiced/teshvali_body_markings/init_possible_values()
	return assoc_to_keys_features(GLOB.bodymarks_list_teshvali)

/datum/preference/choiced/teshvali_body_markings/icon_for(value)
	var/datum/sprite_accessory/sprite_accessory = GLOB.bodymarks_list_teshvali[value]
	var/icon/final_icon = icon('modular_skyraptor/modules/species_teshvali/icons/bodyparts.dmi', "teshvali_chest_m")

	if (sprite_accessory.icon_state != "none")
		var/icon/body_markings_icon = icon(
			'modular_skyraptor/modules/species_teshvali/icons/teshvali_external.dmi',
			"m_bodymarks_teshvali_[sprite_accessory.icon_state]_ADJ",
		)
		body_markings_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
		final_icon.Blend(body_markings_icon, ICON_OVERLAY)
		if(sprite_accessory.hasinner)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_teshvali/icons/teshvali_external.dmi',
				"m_bodymarks_teshvaliinner_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_RED, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)
		if(sprite_accessory.hasinner2)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_teshvali/icons/teshvali_external.dmi',
				"m_bodymarks_teshvaliinner2_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_BLUE, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)

	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)
	final_icon.Crop(10, 8, 22, 23)
	final_icon.Scale(26, 32)
	final_icon.Crop(-2, 1, 29, 32)

	return final_icon

/datum/preference/choiced/teshvali_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["bodymarks_teshvali"] = value


/datum/mutant_newdnafeature/bodymarks_teshvali
	name = "Teshvali body markings"
	id = "bodymarks_teshvali"

/datum/mutant_newdnafeature/bodymarks_teshvali/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_MARKINGS_BLOCK] = construct_block(GLOB.bodymarks_list_teshvali.Find(features[id]), GLOB.bodymarks_list_teshvali.len)

/datum/mutant_newdnafeature/bodymarks_teshvali/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.bodymarks_list_teshvali[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_MARKINGS_BLOCK), GLOB.bodymarks_list_teshvali.len)]

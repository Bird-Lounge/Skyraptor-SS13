/proc/generate_slugcat_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/slugcat
	var/static/icon/slugcat_with_snout

	if (isnull(slugcat))
		slugcat = icon('modular_skyraptor/modules/species_slugcat/icons/bodyparts.dmi', "slugcat_head", EAST)
		var/icon/eyes = icon('modular_skyraptor/modules/species_slugcat/icons/slugcat_external.dmi', "scugeyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		slugcat.Blend(eyes, ICON_OVERLAY)

		slugcat_with_snout = icon(slugcat)
		slugcat_with_snout.Blend(icon('modular_skyraptor/modules/species_slugcat/icons/slugcat_external.dmi', "m_snout_scug_standard_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(slugcat_with_snout) : icon(slugcat)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)

	return final_icon






//== SNOUT
/datum/preference/choiced/slugcat_snout
	savefile_key = "feature_slugcat_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/snout/slugcat

/datum/preference/choiced/slugcat_snout/init_possible_values()
	return assoc_to_keys_features(GLOB.snouts_list_slugcat)

/datum/preference/choiced/slugcat_snout/icon_for(value)
	return generate_slugcat_side_shot(GLOB.snouts_list_slugcat[value], "snout_scug", include_snout = TRUE)

/datum/preference/choiced/slugcat_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["snout_scug"] = value

/datum/preference/choiced/slugcat_snout/create_default_value()
	var/datum/sprite_accessory/snouts/slugcat/standard/snout = /datum/sprite_accessory/snouts/slugcat/standard
	return initial(snout.name)


/datum/mutant_newdnafeature/snouts_slugcat
	name = "Slugcat snout"
	id = "snout_scug"

/datum/mutant_newdnafeature/snouts_slugcat/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_SNOUT_BLOCK] = construct_block(GLOB.snouts_list_slugcat.Find(features[id]), GLOB.snouts_list_slugcat.len)

/datum/mutant_newdnafeature/snouts_slugcat/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.snouts_list_slugcat[deconstruct_block(get_uni_feature_block(features, DNA_SNOUT_BLOCK), GLOB.snouts_list_slugcat.len)]

//== HORNS
/datum/preference/choiced/slugcat_horns
	savefile_key = "feature_slugcat_horns"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Horns"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/horns/slugcat

/datum/preference/choiced/slugcat_horns/init_possible_values()
	return assoc_to_keys_features(GLOB.horns_list_slugcat)

/datum/preference/choiced/slugcat_horns/icon_for(value)
	return generate_slugcat_side_shot(GLOB.horns_list_slugcat[value], "horns_scug", include_snout = TRUE)

/datum/preference/choiced/slugcat_horns/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["horns_scug"] = value

/datum/preference/choiced/slugcat_horns/create_default_value()
	var/datum/sprite_accessory/horns/slugcat/standard/horns = /datum/sprite_accessory/horns/slugcat/standard
	return initial(horns.name)

/datum/preference/choiced/slugcat_horns/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "horns_color"

	return data


/datum/mutant_newdnafeature/horns_slugcat
	name = "Slugcat horns"
	id = "horns_scug"

/datum/mutant_newdnafeature/horns_slugcat/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_HORNS_BLOCK] = construct_block(GLOB.horns_list_slugcat.Find(features[id]), GLOB.horns_list_slugcat.len)

/datum/mutant_newdnafeature/horns_slugcat/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.horns_list_slugcat[deconstruct_block(get_uni_feature_block(features, DNA_HORNS_BLOCK), GLOB.horns_list_slugcat.len)]



//== TAIL
/datum/preference/choiced/slugcat_tail
	savefile_key = "feature_slugcat_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/slugcat
	main_feature_name = "Tail"
	should_generate_icons = FALSE

/datum/preference/choiced/slugcat_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_slugcat)

/datum/preference/choiced/slugcat_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_scug"] = value

/datum/preference/choiced/slugcat_tail/create_default_value()
	var/datum/sprite_accessory/tails/slugcat/standard/tail = /datum/sprite_accessory/tails/slugcat/standard
	return initial(tail.name)


/datum/mutant_newdnafeature/tail_slugcat
	name = "Slugcat tail"
	id = "tail_scug"

/datum/mutant_newdnafeature/tail_slugcat/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_TAIL_BLOCK] = construct_block(GLOB.tails_list_slugcat.Find(features[id]), GLOB.tails_list_slugcat.len)

/datum/mutant_newdnafeature/tail_slugcat/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.tails_list_slugcat[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_TAIL_BLOCK), GLOB.tails_list_slugcat.len)]


//== FRILLS
/datum/preference/choiced/slugcat_frills
	savefile_key = "feature_slugcat_frills"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Frills"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/frills/slugcat

/datum/preference/choiced/slugcat_frills/init_possible_values()
	return assoc_to_keys_features(GLOB.frills_list_slugcat)

/datum/preference/choiced/slugcat_frills/icon_for(value)
	return generate_slugcat_side_shot(GLOB.frills_list_slugcat[value], "frills_scug", include_snout = TRUE)

/datum/preference/choiced/slugcat_frills/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["frills_scug"] = value

/datum/preference/choiced/slugcat_frills/create_default_value()
	var/datum/sprite_accessory/frills/slugcat/none/frills = /datum/sprite_accessory/frills/slugcat/none
	return initial(frills.name)

/datum/preference/choiced/slugcat_frills/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "frills_color"

	return data


/datum/mutant_newdnafeature/frills_slugcat
	name = "Slugcat frills"
	id = "frills_scug"

/datum/mutant_newdnafeature/frills_slugcat/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_HORNS_BLOCK] = construct_block(GLOB.frills_list_slugcat.Find(features[id]), GLOB.frills_list_slugcat.len)

/datum/mutant_newdnafeature/frills_slugcat/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.frills_list_slugcat[deconstruct_block(get_uni_feature_block(features, DNA_HORNS_BLOCK), GLOB.frills_list_slugcat.len)]



//== BODY MARKINGS
/datum/preference/choiced/slugcat_body_markings
	savefile_key = "feature_slugcat_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "bodymarks_scug"

/datum/preference/choiced/slugcat_body_markings/init_possible_values()
	return assoc_to_keys_features(GLOB.bodymarks_list_slugcat)

/datum/preference/choiced/slugcat_body_markings/icon_for(value)
	var/datum/sprite_accessory/sprite_accessory = GLOB.bodymarks_list_slugcat[value]
	var/icon/final_icon = icon('modular_skyraptor/modules/species_slugcat/icons/bodyparts.dmi', "slugcat_chest_m")

	if (sprite_accessory.icon_state != "none")
		var/icon/body_markings_icon = icon(
			'modular_skyraptor/modules/species_slugcat/icons/slugcat_external.dmi',
			"m_bodymarks_scug_[sprite_accessory.icon_state]_ADJ",
		)
		body_markings_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
		final_icon.Blend(body_markings_icon, ICON_OVERLAY)
		if(sprite_accessory.hasinner)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_slugcat/icons/slugcat_external.dmi',
				"m_bodymarks_scuginner_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_RED, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)
		if(sprite_accessory.hasinner2)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_slugcat/icons/slugcat_external.dmi',
				"m_bodymarks_scuginner2_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_BLUE, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)

	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)
	final_icon.Crop(10, 8, 22, 23)
	final_icon.Scale(26, 32)
	final_icon.Crop(-2, 1, 29, 32)

	return final_icon

/datum/preference/choiced/slugcat_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["bodymarks_scug"] = value


/datum/mutant_newdnafeature/bodymarks_slugcat
	name = "Slugcat body markings"
	id = "bodymarks_scug"

/datum/mutant_newdnafeature/bodymarks_slugcat/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_MARKINGS_BLOCK] = construct_block(GLOB.bodymarks_list_slugcat.Find(features[id]), GLOB.bodymarks_list_slugcat.len)

/datum/mutant_newdnafeature/bodymarks_slugcat/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.bodymarks_list_slugcat[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_MARKINGS_BLOCK), GLOB.bodymarks_list_slugcat.len)]

/proc/generate_akula_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/akula
	var/static/icon/akula_with_snout

	if (isnull(akula))
		akula = icon('modular_skyraptor/modules/species_akula/icons/bodyparts.dmi', "akula_head", EAST)
		var/icon/eyes = icon('icons/mob/human/human_face.dmi', "eyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		akula.Blend(eyes, ICON_OVERLAY)

		akula_with_snout = icon(akula)
		akula_with_snout.Blend(icon('modular_skyraptor/modules/species_akula/icons/akula_external.dmi', "m_snout_akula_standard_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(akula_with_snout) : icon(akula)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)

	return final_icon






//== SNOUT
/datum/preference/choiced/akula_snout
	savefile_key = "feature_akula_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/snout/akula

/datum/preference/choiced/akula_snout/init_possible_values()
	return assoc_to_keys_features(GLOB.snouts_list_akula)

/datum/preference/choiced/akula_snout/icon_for(value)
	return generate_akula_side_shot(GLOB.snouts_list_akula[value], "snout_akula", include_snout = TRUE)

/datum/preference/choiced/akula_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["snout_akula"] = value

/datum/preference/choiced/akula_snout/create_default_value()
	var/datum/sprite_accessory/snouts/akula/fullsnout/snout = /datum/sprite_accessory/snouts/akula/fullsnout
	return initial(snout.name)


/datum/mutant_newdnafeature/snouts_akula
	name = "Akula snout"
	id = "snout_akula"

/datum/mutant_newdnafeature/snouts_akula/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_SNOUT_BLOCK] = construct_block(GLOB.snouts_list_akula.Find(features[id]), GLOB.snouts_list_akula.len)

/datum/mutant_newdnafeature/snouts_akula/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.snouts_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_SNOUT_BLOCK), GLOB.snouts_list_akula.len)]

//== HORNS
/datum/preference/choiced/akula_horns
	savefile_key = "feature_akula_horns"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Horns"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/horns/akula

/datum/preference/choiced/akula_horns/init_possible_values()
	return assoc_to_keys_features(GLOB.horns_list_akula)

/datum/preference/choiced/akula_horns/icon_for(value)
	return generate_akula_side_shot(GLOB.horns_list_akula[value], "horns_akula", include_snout = TRUE)

/datum/preference/choiced/akula_horns/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["horns_akula"] = value

/datum/preference/choiced/akula_horns/create_default_value()
	var/datum/sprite_accessory/horns/akula/perky/horns = /datum/sprite_accessory/horns/akula/perky
	return initial(horns.name)

/datum/preference/choiced/akula_horns/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "horns_color"

	return data


/datum/mutant_newdnafeature/horns_akula
	name = "Akula horns"
	id = "horns_akula"

/datum/mutant_newdnafeature/horns_akula/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_HORNS_BLOCK] = construct_block(GLOB.horns_list_akula.Find(features[id]), GLOB.horns_list_akula.len)

/datum/mutant_newdnafeature/horns_akula/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.horns_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_HORNS_BLOCK), GLOB.horns_list_akula.len)]


//== TAIL
/datum/preference/choiced/akula_tail
	savefile_key = "feature_akula_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/akula
	main_feature_name = "Tail"
	should_generate_icons = FALSE

/datum/preference/choiced/akula_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_akula)

/datum/preference/choiced/akula_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_akula"] = value

/datum/preference/choiced/akula_tail/create_default_value()
	var/datum/sprite_accessory/tails/akula/shark/tail = /datum/sprite_accessory/tails/akula/shark
	return initial(tail.name)


/datum/mutant_newdnafeature/tail_akula
	name = "Akula tail"
	id = "tail_akula"

/datum/mutant_newdnafeature/tail_akula/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_TAIL_BLOCK] = construct_block(GLOB.tails_list_akula.Find(features[id]), GLOB.tails_list_akula.len)

/datum/mutant_newdnafeature/tail_akula/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.tails_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_TAIL_BLOCK), GLOB.tails_list_akula.len)]



//== BODY MARKINGS
/datum/preference/choiced/akula_body_markings
	savefile_key = "feature_akula_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "bodymarks_akula"

/datum/preference/choiced/akula_body_markings/init_possible_values()
	return assoc_to_keys_features(GLOB.bodymarks_list_akula)

/datum/preference/choiced/akula_body_markings/icon_for(value)
	var/datum/sprite_accessory/sprite_accessory = GLOB.bodymarks_list_akula[value]
	var/icon/final_icon = icon('modular_skyraptor/modules/species_akula/icons/bodyparts.dmi', "akula_chest_m")

	if (sprite_accessory.icon_state != "none")
		var/icon/body_markings_icon = icon(
			'modular_skyraptor/modules/species_akula/icons/akula_external.dmi',
			"m_bodymarks_akula_[sprite_accessory.icon_state]_ADJ",
		)
		body_markings_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
		final_icon.Blend(body_markings_icon, ICON_OVERLAY)
		if(sprite_accessory.hasinner)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_akula/icons/akula_external.dmi',
				"m_bodymarks_akulainner_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_RED, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)
		if(sprite_accessory.hasinner2)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_akula/icons/akula_external.dmi',
				"m_bodymarks_akulainner2_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_BLUE, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)

	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)
	final_icon.Crop(10, 8, 22, 23)
	final_icon.Scale(26, 32)
	final_icon.Crop(-2, 1, 29, 32)

	return final_icon

/datum/preference/choiced/akula_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["bodymarks_akula"] = value


/datum/mutant_newdnafeature/bodymarks_akula
	name = "Akula body markings"
	id = "bodymarks_akula"

/datum/mutant_newdnafeature/bodymarks_akula/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_MARKINGS_BLOCK] = construct_block(GLOB.bodymarks_list_akula.Find(features[id]), GLOB.bodymarks_list_akula.len)

/datum/mutant_newdnafeature/bodymarks_akula/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.bodymarks_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_MARKINGS_BLOCK), GLOB.bodymarks_list_akula.len)]

/proc/generate_avalari_side_shot(datum/sprite_accessory/sprite_accessory, key, include_snout = TRUE)
	var/static/icon/avalari
	var/static/icon/avalari_with_snout

	if (isnull(avalari))
		avalari = icon('modular_skyraptor/modules/species_teshvali/icons/bodyparts.dmi', "avalari_head", EAST)
		var/icon/eyes = icon('modular_skyraptor/modules/species_teshvali/icons/avalari_external.dmi', "avalarieyes", EAST)
		eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
		avalari.Blend(eyes, ICON_OVERLAY)

		avalari_with_snout = icon(avalari)
		avalari_with_snout.Blend(icon('modular_skyraptor/modules/species_teshvali/icons/avalari_external.dmi', "m_snout_avalari_standard_ADJ", EAST), ICON_OVERLAY)

	var/icon/final_icon = include_snout ? icon(avalari_with_snout) : icon(avalari)

	if (!isnull(sprite_accessory))
		var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
		final_icon.Blend(accessory_icon, ICON_OVERLAY)

	final_icon.Crop(11, 20, 23, 32)
	final_icon.Scale(32, 32)
	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)

	return final_icon






//== SNOUT
/datum/preference/choiced/avalari_snout
	savefile_key = "feature_avalari_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/snout/avalari

/datum/preference/choiced/avalari_snout/init_possible_values()
	return assoc_to_keys_features(GLOB.snouts_list_avalari)

/datum/preference/choiced/avalari_snout/icon_for(value)
	return generate_avalari_side_shot(GLOB.snouts_list_avalari[value], "snout_avalari", include_snout = TRUE)

/datum/preference/choiced/avalari_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["snout_avalari"] = value

/datum/preference/choiced/avalari_snout/create_default_value()
	var/datum/sprite_accessory/snouts/avalari/standard/snout = /datum/sprite_accessory/snouts/avalari/standard
	return initial(snout.name)


/datum/mutant_newdnafeature/snouts_avalari
	name = "Avalari snout"
	id = "snout_avalari"

/datum/mutant_newdnafeature/snouts_avalari/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_SNOUT_BLOCK] = construct_block(GLOB.snouts_list_avalari.Find(features[id]), GLOB.snouts_list_avalari.len)

/datum/mutant_newdnafeature/snouts_avalari/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.snouts_list_avalari[deconstruct_block(get_uni_feature_block(features, DNA_SNOUT_BLOCK), GLOB.snouts_list_avalari.len)]

//== HORNS
/datum/preference/choiced/avalari_horns
	savefile_key = "feature_avalari_horns"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Horns"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/horns/avalari

/datum/preference/choiced/avalari_horns/init_possible_values()
	return assoc_to_keys_features(GLOB.horns_list_avalari)

/datum/preference/choiced/avalari_horns/icon_for(value)
	return generate_avalari_side_shot(GLOB.horns_list_avalari[value], "horns_avalari", include_snout = TRUE)

/datum/preference/choiced/avalari_horns/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["horns_avalari"] = value

/datum/preference/choiced/avalari_horns/create_default_value()
	var/datum/sprite_accessory/horns/avalari/mane/horns = /datum/sprite_accessory/horns/avalari/mane
	return initial(horns.name)

/datum/preference/choiced/avalari_horns/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "horns_color"

	return data


/datum/mutant_newdnafeature/horns_avalari
	name = "Avalari horns"
	id = "horns_avalari"

/datum/mutant_newdnafeature/horns_avalari/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_HORNS_BLOCK] = construct_block(GLOB.horns_list_avalari.Find(features[id]), GLOB.horns_list_avalari.len)

/datum/mutant_newdnafeature/horns_avalari/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.horns_list_avalari[deconstruct_block(get_uni_feature_block(features, DNA_HORNS_BLOCK), GLOB.horns_list_avalari.len)]



//== TAIL
/datum/preference/choiced/avalari_tail
	savefile_key = "feature_avalari_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/avalari
	main_feature_name = "Tail"
	should_generate_icons = FALSE

/datum/preference/choiced/avalari_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_avalari)

/datum/preference/choiced/avalari_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["tail_avalari"] = value

/datum/preference/choiced/avalari_tail/create_default_value()
	var/datum/sprite_accessory/tails/avalari/fluffy/tail = /datum/sprite_accessory/tails/avalari/fluffy
	return initial(tail.name)


/datum/mutant_newdnafeature/tail_avalari
	name = "Avalari tail"
	id = "tail_avalari"

/datum/mutant_newdnafeature/tail_avalari/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_TAIL_BLOCK] = construct_block(GLOB.tails_list_avalari.Find(features[id]), GLOB.tails_list_avalari.len)

/datum/mutant_newdnafeature/tail_avalari/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.tails_list_avalari[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_TAIL_BLOCK), GLOB.tails_list_avalari.len)]



//== BODY MARKINGS
/datum/preference/choiced/avalari_body_markings
	savefile_key = "feature_avalari_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "bodymarks_avalari"

/datum/preference/choiced/avalari_body_markings/init_possible_values()
	return assoc_to_keys_features(GLOB.bodymarks_list_avalari)

/datum/preference/choiced/avalari_body_markings/icon_for(value)
	var/datum/sprite_accessory/sprite_accessory = GLOB.bodymarks_list_avalari[value]
	var/icon/final_icon = icon('modular_skyraptor/modules/species_teshvali/icons/bodyparts.dmi', "avalari_chest_m")

	if (sprite_accessory.icon_state != "none")
		var/icon/body_markings_icon = icon(
			'modular_skyraptor/modules/species_teshvali/icons/avalari_external.dmi',
			"m_bodymarks_avalari_[sprite_accessory.icon_state]_ADJ",
		)
		body_markings_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
		final_icon.Blend(body_markings_icon, ICON_OVERLAY)
		if(sprite_accessory.hasinner)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_teshvali/icons/avalari_external.dmi',
				"m_bodymarks_avalariinner_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_RED, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)
		if(sprite_accessory.hasinner2)
			var/icon/body_markings_innericon = icon(
				'modular_skyraptor/modules/species_teshvali/icons/avalari_external.dmi',
				"m_bodymarks_avalariinner2_[sprite_accessory.icon_state]_ADJ",
			)
			body_markings_innericon.Blend(COLOR_BLUE, ICON_MULTIPLY)
			final_icon.Blend(body_markings_innericon, ICON_OVERLAY)

	final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)
	final_icon.Crop(10, 8, 22, 23)
	final_icon.Scale(26, 32)
	final_icon.Crop(-2, 1, 29, 32)

	return final_icon

/datum/preference/choiced/avalari_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["bodymarks_avalari"] = value


/datum/mutant_newdnafeature/bodymarks_avalari
	name = "Avalari body markings"
	id = "bodymarks_avalari"

/datum/mutant_newdnafeature/bodymarks_avalari/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_MARKINGS_BLOCK] = construct_block(GLOB.bodymarks_list_avalari.Find(features[id]), GLOB.bodymarks_list_avalari.len)

/datum/mutant_newdnafeature/bodymarks_avalari/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.bodymarks_list_avalari[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_MARKINGS_BLOCK), GLOB.bodymarks_list_avalari.len)]

/proc/generate_akula_side_shots(list/sprite_accessories, key, include_snout = TRUE)
	var/list/values = list()

	var/icon/lizard = icon('icons/mob/species/lizard/bodyparts.dmi', "lizard_head", EAST)
	var/icon/eyes = icon('icons/mob/species/human/human_face.dmi', "eyes", EAST)
	eyes.Blend(COLOR_GRAY, ICON_MULTIPLY)
	lizard.Blend(eyes, ICON_OVERLAY)

	if (include_snout)
		lizard.Blend(icon('icons/mob/species/lizard/lizard_misc.dmi', "m_snout_round_ADJ", EAST), ICON_OVERLAY)

	for (var/name in sprite_accessories)
		var/datum/sprite_accessory/sprite_accessory = sprite_accessories[name]

		var/icon/final_icon = icon(lizard)

		if (sprite_accessory.icon_state != "none")
			var/icon/accessory_icon = icon(sprite_accessory.icon, "m_[key]_[sprite_accessory.icon_state]_ADJ", EAST)
			final_icon.Blend(accessory_icon, ICON_OVERLAY)

		final_icon.Crop(11, 20, 23, 32)
		final_icon.Scale(32, 32)
		final_icon.Blend(COLOR_WHITE, ICON_MULTIPLY)

		values[name] = final_icon

	return values


















//== SNOUT
/datum/preference/choiced/akula_snout
	savefile_key = "feature_lizard_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/external/snout/akula

/datum/preference/choiced/akula_snout/init_possible_values()
	return generate_akula_side_shots(GLOB.snouts_list_akula, "snout", include_snout = TRUE)

/datum/preference/choiced/akula_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[NK006_AKULA_SNOUT_ID] = value

/datum/preference/choiced/akula_snout/create_default_value()
	var/datum/sprite_accessory/snouts/akula/fullsnout_tmp/snout = /datum/sprite_accessory/snouts/akula/fullsnout_tmp
	return initial(snout.name)



//== TAIL
/datum/preference/choiced/akula_tail
	savefile_key = "feature_lizard_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/external/tail/akula

/datum/preference/choiced/akula_tail/init_possible_values()
	return assoc_to_keys_features(GLOB.tails_list_akula)

/datum/preference/choiced/akula_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[NK006_AKULA_TAIL_ID] = value

/datum/preference/choiced/akula_tail/create_default_value()
	var/datum/sprite_accessory/tails/akula/midfinless/tail = /datum/sprite_accessory/tails/akula/midfinless
	return initial(tail.name)



//== EARS
/datum/preference/choiced/akula_ears
	savefile_key = "feature_human_ears"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	can_randomize = TRUE
	relevant_mutant_bodypart = "ears"

/datum/preference/choiced/akula_ears/init_possible_values()
	return assoc_to_keys_features(GLOB.akula_ears_list)

/datum/preference/choiced/akula_ears/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ears"] = value

/datum/preference/choiced/akula_ears/create_default_value()
	var/datum/sprite_accessory/ears/akula/ears = /datum/sprite_accessory/ears/akula/perky
	return initial(ears.name)





//== BODY MARKINGS
/datum/preference/choiced/akula_body_markings
	savefile_key = "feature_lizard_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Body markings"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "body_markings"

/datum/preference/choiced/akula_body_markings/init_possible_values()
	var/list/values = list()

	var/icon/lizard = icon('modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi', "akula_chest_m")

	for (var/name in GLOB.akula_body_markings_list)
		var/datum/sprite_accessory/sprite_accessory = GLOB.akula_body_markings_list[name]

		var/icon/final_icon = icon(lizard)

		if (sprite_accessory.icon_state != "none")
			var/icon/body_markings_icon = icon(
				'modular_nk006/modules/species_akula/icons/akula_misc.dmi',
				"m_body_markings_[sprite_accessory.icon_state]_ADJ",
			)

			final_icon.Blend(body_markings_icon, ICON_OVERLAY)

		final_icon.Blend(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
		final_icon.Crop(10, 8, 22, 23)
		final_icon.Scale(26, 32)
		final_icon.Crop(-2, 1, 29, 32)

		values[name] = final_icon

	return values

/datum/preference/choiced/akula_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["body_markings"] = value
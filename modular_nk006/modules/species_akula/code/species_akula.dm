//AKULA TODO IN NO PARTICULAR ORDER, DELETE THESE AS WE GET TO THEM
//- Wing change
//- Death sounds, screms
//- Skins/Meat MAYBE
//- Language

#define SPECIES_AKULA "akula"
#define NK006_AKULA_SNOUT_ID "snout_akula"
#define NK006_AKULA_TAIL_ID "tail_akula"
#define NK006_AKULA_BODYMARK_ID "bodymarks_akula"
#define NK006_AKULA_EARS_ID "ears_akula"

/mob/living/carbon/human/species/akula
	race = /datum/species/akula

/datum/species/akula
	// shorks
	name = "\improper akula"
	plural_form = "akula"
	id = SPECIES_AKULA
	species_traits = list(MUTCOLORS, EYECOLOR, HAIR, LIPS, HAS_FLESH, HAS_BONE)
	inherent_traits = list(
		TRAIT_CAN_USE_FLIGHT_POTION,
		TRAIT_TACKLING_TAILED_DEFENDER,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	mutant_bodyparts = list("bodymarks_akula" = "None", "legs" = "Normal Legs")
	mutantears = /obj/item/organ/internal/ears/akula
	external_organs = list(
		/obj/item/organ/external/snout/akula = "FullsnoutTmp",
		/obj/item/organ/external/tail/akula = "Finless",
	)
	//coldmod = 2
	//heatmod = 0.6
	payday_modifier = 0.75
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	//todo: custom meat and skin types, I GUESS
	meat = /obj/item/food/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	disliked_food = GRAIN | DAIRY
	liked_food = SEAFOOD | RAW
	//inert_mutation = /datum/mutation/human/firebreath
	death_sound = 'sound/voice/lizard/deathsound.ogg'
	wing_types = list(/obj/item/organ/external/wings/functional/dragon)
	species_language_holder = /datum/language_holder/lizard
	digitigrade_customization = DIGITIGRADE_OPTIONAL

	// akulas are coldblooded and can stand a greater temperature range than humans
	//bodytemp_heat_damage_limit = (BODYTEMP_HEAT_DAMAGE_LIMIT + 20) // This puts akulas 10 above lavaland max heat for ash akulas.
	//bodytemp_cold_damage_limit = (BODYTEMP_COLD_DAMAGE_LIMIT - 10)

	ass_image = 'icons/ass/asslizard.png'

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/lizard/akula,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/lizard/akula,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/lizard/akula,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/lizard/akula,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/lizard/akula,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/lizard/akula,
	)

/datum/species/akula/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname


/datum/species/akula/randomize_features(mob/living/carbon/human/human_mob)
	human_mob.hairstyle = "Business Hair"
	human_mob.hair_color = "#bb9966" // brown
	human_mob.dna.features[NK006_AKULA_SNOUT_ID] = pick(GLOB.snouts_list_akula)
	human_mob.dna.features[NK006_AKULA_TAIL_ID] = pick(GLOB.tails_list_akula)
	human_mob.dna.features[NK006_AKULA_BODYMARK_ID] = pick(GLOB.akula_body_markings_list)
	randomize_external_organs(human_mob)

/datum/species/akula/get_scream_sound(mob/living/carbon/human/akula)
	return pick(
		'sound/voice/lizard/lizard_scream_1.ogg',
		'sound/voice/lizard/lizard_scream_2.ogg',
		'sound/voice/lizard/lizard_scream_3.ogg',
	)

/datum/species/akula/get_species_description()
	return "Subaquatic, sharklike natives to the Sol System's dwarf planet Ceres."

/datum/species/akula/get_species_lore()
	return list(
		"Shorks, todo.",

		"Remind Naaka to write the lore for them, properly.",
	)

// Override for the default temperature perks, so we can give our specific "cold blooded" perk.
/*/datum/species/akula/create_pref_temperature_perks()
	var/list/to_add = list()

	to_add += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
		SPECIES_PERK_ICON = "thermometer-empty",
		SPECIES_PERK_NAME = "Cold-blooded",
		SPECIES_PERK_DESC = "akulapeople have higher tolerance for hot temperatures, but lower \
			tolerance for cold temperatures. Additionally, they cannot self-regulate their body temperature - \
			they are as cold or as warm as the environment around them is. Stay warm!",
	))

	return to_add
*/
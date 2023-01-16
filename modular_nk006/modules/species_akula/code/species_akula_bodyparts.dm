// == AKULA SNOUT ==
///Guess what part of the lizard this is?
/obj/item/organ/external/snout/akula
	name = "akula snout"
	desc = "Take a closer look at that snout!"
	icon_state = "snout"

	feature_key = NK006_AKULA_SNOUT_ID
	preference = "feature_akula_snout"
	
	dna_block = DNA_SNOUT_BLOCK
	restyle_flags = EXTERNAL_RESTYLE_FLESH
	innercolor_source = ORGAN_COLOR_HAIR

/obj/item/organ/external/snout/akula/get_global_feature_list()
	return GLOB.snouts_list_akula



// == AKULA TAIL ==
/obj/item/organ/external/tail/akula
	name = "akula tail"
	desc = "A severed Akula tail. You must really hate swimming."
	
	feature_key = NK006_AKULA_TAIL_ID
	preference = "feature_lizard_tail" //this is SPECIFICALLY to make prefs play nice
	
	wag_flags = WAG_ABLE
	dna_block = DNA_LIZARD_TAIL_BLOCK

/obj/item/organ/external/tail/akula/get_global_feature_list()
	return GLOB.tails_list_akula



// == AKULA EARS, not meant for insertion into other species ==
/obj/item/organ/internal/ears/akula
	name = "akula ears"
	icon = 'icons/obj/clothing/head/costume.dmi'
	worn_icon = 'icons/mob/clothing/head/costume.dmi'
	icon_state = "kitty"
	visual = TRUE
	damage_multiplier = 2
	
	//we may have a problem
	//feature_key = NK006_AKULA_EARS_ID
	//preference = "feature_human_ears" //this is SPECIFICALLY to make prefs play nice

/*/obj/item/organ/internal/ears/akula/Insert(mob/living/carbon/human/ear_owner, special = 0, drop_if_replaced = TRUE)
	..()
	if(istype(ear_owner))
		color = ear_owner.hair_color
		ear_owner.dna.features["ears"] = ear_owner.dna.species.mutant_bodyparts["ears"] = "Perky"
		ear_owner.dna.update_uf_block(DNA_EARS_BLOCK)
		ear_owner.update_body()

/obj/item/organ/internal/ears/akula/Remove(mob/living/carbon/human/ear_owner,  special = 0)
	..()
	if(istype(ear_owner))
		color = ear_owner.hair_color
		ear_owner.dna.species.mutant_bodyparts -= "ears"
		ear_owner.update_body()*/






// == AKULA BODYPARTS ==
/obj/item/bodypart/head/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/chest/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/arm/left/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/arm/right/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/leg/left/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/leg/right/lizard/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
	limb_id = SPECIES_AKULA

/obj/item/bodypart/leg/left/digitigrade/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'

/obj/item/bodypart/leg/right/digitigrade/akula
	icon_greyscale = 'modular_nk006/modules/species_akula/icons/akula_bodyparts.dmi'
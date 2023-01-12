// == SECTION 1: LIZARD SNOUT FIX ==
GLOBAL_LIST_EMPTY(snouts_list_lizard)

/datum/mutant_spritecat/lizard_snout
	name = "Lizard Snouts"
	id = "TG_SNOUT_AKULA"
	sprite_acc = /datum/sprite_accessory/snouts/lizard

/datum/mutant_spritecat/lizard_snout/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/snouts/lizard, GLOB.snouts_list_lizard)
		world.log << "CELEBRATE: FOR THE LIZERBS HAVE SNOOTS"
		return ..()

/datum/sprite_accessory/snouts/lizard
	icon = 'icons/mob/species/lizard/lizard_misc.dmi'
	em_block = TRUE

/datum/sprite_accessory/snouts/lizard/sharp
	name = "Sharp"
	icon_state = "sharp"

/datum/sprite_accessory/snouts/lizard/round
	name = "Round"
	icon_state = "round"

/datum/sprite_accessory/snouts/lizard/sharplight
	name = "Sharp + Light"
	icon_state = "sharplight"

/datum/sprite_accessory/snouts/lizard/roundlight
	name = "Round + Light"
	icon_state = "roundlight"
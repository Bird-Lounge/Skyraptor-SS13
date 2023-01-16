// == SECTION 1: LIZARD SNOUT FIX ==
GLOBAL_LIST_EMPTY(snouts_list_lizard)

/datum/mutant_spritecat/lizard_snout
	name = "Lizard Snouts"
	id = "snout_lizard"
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



// == SECTION 2: LIZARD BODYMARKING FIX ==
GLOBAL_LIST_EMPTY(bodymarks_list_lizard)

/datum/mutant_spritecat/lizard_bodymarks
	name = "Lizard Bodymarks"
	id = "bodymarks_lizard"
	sprite_acc = /datum/sprite_accessory/body_markings/lizard

/datum/mutant_spritecat/lizard_bodymarks/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/body_markings/lizard, GLOB.bodymarks_list_lizard)
		world.log << "CELEBRATE: FOR THE LIZERBS HAVE BODY MARKINGS"
		return ..()

/datum/sprite_accessory/body_markings/lizard
	icon = 'icons/mob/species/lizard/lizard_misc.dmi'

/datum/sprite_accessory/body_markings/lizard/none
	name = "None"
	icon_state = "none"

/datum/sprite_accessory/body_markings/lizard/dtiger
	name = "Dark Tiger Body"
	icon_state = "dtiger"
	gender_specific = 1

/datum/sprite_accessory/body_markings/lizard/ltiger
	name = "Light Tiger Body"
	icon_state = "ltiger"
	gender_specific = 1

/datum/sprite_accessory/body_markings/lizard/lbelly
	name = "Light Belly"
	icon_state = "lbelly"
	gender_specific = 1



// == SECTION 2.1: LIZARD BODYMARKING PART==
/datum/mutant_newmutantpart/bodymarks_lizard
	name = "Lizard body markings"
	id = "bodymarks_lizard"

/datum/mutant_newmutantpart/bodymarks_lizard/get_accessory(var/bodypart, var/features)
	..()
	if(bodypart == "bodymarks_lizard")
		return GLOB.bodymarks_list_lizard[features["bodymarks_lizard"]]
	else
		return FALSE


/* body markings are some of the most haunted code I've ever met.  it's been two days and I still can't get custom bodymark types to show up
// == SECTION X.1: BODY_MARKINGS AS A MODULE THING JUST TO SEE ==
/datum/mutant_newmutantpart/body_markings
	name = "Body markings"
	id = "body_markings"

/datum/mutant_newmutantpart/body_markings/get_accessory(var/bodypart, var/features)
	..()
	if(bodypart == "body_markings")
		return GLOB.body_markings_list[features["body_markings"]]
	else
		return FALSE*/
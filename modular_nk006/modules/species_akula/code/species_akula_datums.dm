GLOBAL_LIST_EMPTY(snouts_list_akula)
/datum/mutant_spritecat/akula_snout
	name = "Akula Snouts"
	id = NK006_AKULA_SNOUT_ID
	sprite_acc = /datum/sprite_accessory/snouts/akula

/datum/mutant_spritecat/akula_snout/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/snouts/akula, GLOB.snouts_list_akula)
		world.log << "CELEBRATE: FOR THE AKULA HAVE SNOOTS"
		return ..()

/datum/sprite_accessory/snouts/akula
	icon = 'modular_nk006/modules/species_akula/icons/akula_misc.dmi'

/datum/sprite_accessory/snouts/akula/fullsnout_tmp
	name = "FullsnoutTmp"
	icon_state = "fullsnout"

/datum/sprite_accessory/snouts/akula/fullsnout_alt
	name = "Snout Proper Maybe"
	icon_state = "fullsnout"
	hasinner = TRUE
	innercolor_src = ORGAN_COLOR_HAIR

/datum/mutant_newdnafeature/akula_snout
	name = "Akula Snouts DNA"
	id = NK006_AKULA_SNOUT_ID

/datum/mutant_newdnafeature/akula_snout/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_SNOUT_BLOCK] = construct_block(GLOB.snouts_list_akula.Find(features[id]), GLOB.snouts_list_akula.len)
	return ..()

/datum/mutant_newdnafeature/akula_snout/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.snouts_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_SNOUT_BLOCK), GLOB.snouts_list_akula.len)]
	return ..()



GLOBAL_LIST_EMPTY(tails_list_akula)
/datum/mutant_spritecat/akula_tail
	name = "Akula Tails"
	id = NK006_AKULA_TAIL_ID
	sprite_acc = /datum/sprite_accessory/tails/akula

/datum/mutant_spritecat/akula_tails/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/akula, GLOB.tails_list_akula)
		world.log << "CELEBRATE: FOR THE AKULA HAVE TAILS"
		return ..()

/datum/sprite_accessory/tails/akula
	icon = 'modular_nk006/modules/species_akula/icons/akula_misc.dmi'

/datum/sprite_accessory/tails/akula/midfinless
	name = "Finless"
	icon_state = "sharknofin"

/datum/sprite_accessory/tails/akula/finned
	name = "Finned"
	icon_state = "shark"

/datum/sprite_accessory/tails/akula/orca
	name = "Orca"
	icon_state = "orca"

/datum/sprite_accessory/tails/akula/fish
	name = "Fish-like"
	icon_state = "fish"

/datum/mutant_newdnafeature/akula_tail
	name = "Akula Tails DNA"
	id = NK006_AKULA_TAIL_ID

/datum/mutant_newdnafeature/akula_tail/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_TAIL_BLOCK] = construct_block(GLOB.tails_list_akula.Find(features[id]), GLOB.tails_list_akula.len)
	return ..()

/datum/mutant_newdnafeature/akula_tail/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.tails_list_akula[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_TAIL_BLOCK), GLOB.tails_list_akula.len)]
	return ..()



GLOBAL_LIST_EMPTY(akula_body_markings_list)
/datum/mutant_spritecat/akula_bodymark
	name = "Akula Body Patterns"
	id = NK006_AKULA_BODYMARK_ID
	sprite_acc = /datum/sprite_accessory/body_markings/akula

/datum/mutant_spritecat/akula_bodymark/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/body_markings/akula, GLOB.akula_body_markings_list)
		world.log << "CELEBRATE: FOR THE AKULA HAVE BODYMARKS"
		return ..()

/datum/sprite_accessory/body_markings/akula
	icon = 'modular_nk006/modules/species_akula/icons/akula_misc.dmi'
	gender_specific = 1

/datum/sprite_accessory/body_markings/akula/none
	name = "None"
	icon_state = "none"
	gender_specific = 1

/datum/sprite_accessory/body_markings/akula/lightchest
	name = "Light Chest"
	icon_state = "akula"
	gender_specific = 1
	color_src = HAIR

/datum/mutant_newdnafeature/akula_bodymark
	name = "Akula Body Pattern DNA"
	id = NK006_AKULA_BODYMARK_ID

/datum/mutant_newdnafeature/akula_bodymark/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_LIZARD_MARKINGS_BLOCK] = construct_block(GLOB.akula_body_markings_list.Find(features[id]), GLOB.akula_body_markings_list.len)
	return ..()

/datum/mutant_newdnafeature/akula_bodymark/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.akula_body_markings_list[deconstruct_block(get_uni_feature_block(features, DNA_LIZARD_MARKINGS_BLOCK), GLOB.akula_body_markings_list.len)]
	return ..()


GLOBAL_LIST_EMPTY(akula_ears_list)
/datum/mutant_spritecat/akula_ear
	name = "Akula Ears"
	id = NK006_AKULA_EARS_ID
	sprite_acc = /datum/sprite_accessory/ears/akula

/datum/mutant_spritecat/akula_ear/init_jank()
		init_sprite_accessory_subtypes(/datum/sprite_accessory/ears/akula, GLOB.akula_ears_list)
		world.log << "CELEBRATE: FOR THE AKULA HAVE EARS"
		return ..()

/datum/sprite_accessory/ears/akula
	icon = 'modular_nk006/modules/species_akula/icons/akula_misc.dmi'
	gender_specific = 1

/datum/sprite_accessory/ears/akula/none
	name = "None"
	icon_state = "none"

/datum/sprite_accessory/ears/akula/perky
	name = "Perky"
	icon_state = "perky"
	hasinner = TRUE
	color_src = HAIR

/datum/mutant_newdnafeature/akula_ear
	name = "Akula Ear DNA"
	id = NK006_AKULA_EARS_ID

/datum/mutant_newdnafeature/akula_ear/gen_unique_features(var/features, var/L)
	if(features[id])
		L[DNA_EARS_BLOCK] = construct_block(GLOB.akula_ears_list.Find(features[id]), GLOB.akula_ears_list.len)
	return ..()

/datum/mutant_newdnafeature/akula_ear/update_appear(var/datum/dna/dna, var/features)
	if(dna.features[id])
		dna.features[id] = GLOB.akula_ears_list[deconstruct_block(get_uni_feature_block(features, DNA_EARS_BLOCK), GLOB.akula_ears_list.len)]
	return ..()
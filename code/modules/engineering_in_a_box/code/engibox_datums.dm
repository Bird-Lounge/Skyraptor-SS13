/area/misc/survivalpod/atmosia_box
	name = "\improper Atmosia in a Box"
	icon_state = "away"
	static_lighting = TRUE
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	flags_1 = CAN_BE_DIRTY_1

/area/misc/survivalpod/supermatter_box
	name = "\improper Supermatter in a Box"
	icon_state = "away"
	static_lighting = TRUE
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	flags_1 = CAN_BE_DIRTY_1

/area/misc/survivalpod/tesla_box
	name = "\improper Tesla in a Box"
	icon_state = "away"
	static_lighting = TRUE
	requires_power = TRUE
	has_gravity = STANDARD_GRAVITY
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	flags_1 = CAN_BE_DIRTY_1

/area/misc/survivalpod/singulo_box
	name = "\improper Singulo in a Box"
	icon_state = "away"
	static_lighting = TRUE
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	flags_1 = CAN_BE_DIRTY_1

/datum/map_template/shelter/atmosia
	name = "Atmosia in a Box"
	shelter_id = "atmosia_in_a_box"
	description = "Attach to a busted station or a new outpost for instant operational atmos lines!"
	mappath = "code/modules/engineering_in_a_box/maps/atmosia_in_a_box.dmm"

/datum/map_template/shelter/atmosia/New()
	. = ..()
	whitelisted_turfs = typecacheof(/turf/closed/mineral)
	banned_objects = typecacheof(/obj/structure/stone_tile)

/datum/map_template/shelter/supermatter
	name = "Supermatter in a Box"
	shelter_id = "supermatter_in_a_box"
	description = "Attach to a busted station or a new outpost for instant megawatts of power!"
	mappath = "code/modules/engineering_in_a_box/maps/supermatter_in_a_box.dmm"

/datum/map_template/shelter/supermatter/New()
	. = ..()
	whitelisted_turfs = typecacheof(/turf/closed/mineral)
	banned_objects = typecacheof(/obj/structure/stone_tile)

/datum/map_template/shelter/tesla
	name = "Tesla in a Box"
	shelter_id = "tesla_in_a_box"
	description = "Attach to a busted station or a new outpost for instant megawatts of power!"
	mappath = "code/modules/engineering_in_a_box/maps/tesla_in_a_box.dmm"

/datum/map_template/shelter/tesla/New()
	. = ..()
	whitelisted_turfs = typecacheof(/turf/closed/mineral)
	banned_objects = typecacheof(/obj/structure/stone_tile)

/datum/map_template/shelter/singulo
	name = "Singulo in a Box"
	shelter_id = "singulo_in_a_box"
	description = "Attach to a busted station or a new outpost for instant megawatts of power!"
	mappath = "code/modules/engineering_in_a_box/maps/singulo_in_a_box.dmm"

/datum/map_template/shelter/singulo/New()
	. = ..()
	whitelisted_turfs = typecacheof(/turf/closed/mineral)
	banned_objects = typecacheof(/obj/structure/stone_tile)
/area/prairie_world/
	icon = 'modular_skyraptor/modules/betterplanets/icons/turf_prairie.dmi'
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = UNIQUE_AREA | FLORA_ALLOWED
	sound_environment = SOUND_AREA_LAVALAND //just in case
	// just in case
	ambience_index = AMBIENCE_MINING
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	ambient_buzz = 'sound/ambience/magma.ogg'

/area/prairie_world/surface
	name = "Prairie World"
	icon_state = "explored"
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_MINING
	area_flags = UNIQUE_AREA | FLORA_ALLOWED
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	outdoors = TRUE

/area/prairie_world/surface/outdoors //unexplored
	name = "Prairie World Fields"
	icon_state = "unexplored"
	map_generator =  /datum/map_generator/cave_generator/prairie_world
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | MOB_SPAWN_ALLOWED | CAVES_ALLOWED

/area/prairie_world/surface/outdoors/noruins //random, but no ruins
	icon_state = "noruins"
	map_generator =  /datum/map_generator/cave_generator/prairie_world/noruins

/area/prairie_world/surface/outdoors/noruins/safe
	icon_state = "safe"
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | CAVES_ALLOWED

/area/prairie_world/surface/outdoors/rich //standard random, but it's mineral rich and more baddies are present
	icon_state = "danger"
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | MOB_SPAWN_ALLOWED | CAVES_ALLOWED | MEGAFAUNA_SPAWN_ALLOWED
	map_generator = /datum/map_generator/cave_generator/prairie_world/rich

/area/prairie_world/surface/outdoors/safe //standard random, but no mobs.
	icon_state = "safe"
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | CAVES_ALLOWED

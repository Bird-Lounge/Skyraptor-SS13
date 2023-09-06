/// PrairieOutpost bespoke shuttles
/datum/map_template/shuttle/arrival/prairie
	suffix = "prairie"
	name = "arrival shuttle (PrairieOutpost)"

/datum/map_template/shuttle/cargo/prairie
	suffix = "prairie"
	name = "cargo ferry (PrairieOutpost)"

/datum/map_template/shuttle/emergency/prairie
	suffix = "prairie"
	name = "Prairie Outpost Emergency Shuttle"
	description = "Though a little on the small side, this is a feature-complete shuttle with a small medbay, suits, and emergency recovery port for the dumbass engineer who was trying to hitch a ride on the outside & drifted into deep space."
	credit_cost = CARGO_CRATE_VALUE * 3



/// Mapgen datums
/datum/map_generator/cave_generator/prairie_world
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass/planetary = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt = 1)

	mob_spawn_chance = 3
	flora_spawn_chance = 3
	feature_spawn_chance = 0.1

	weighted_mob_spawn_list = list(
		//SPAWN_MEGAFAUNA = 0,
		/obj/effect/spawner/random/lavaland_mob/goliath = 34,
		/obj/effect/spawner/random/lavaland_mob/watcher = 13,
		/obj/effect/spawner/random/lavaland_mob/legion = 13,
		/mob/living/basic/mining/goldgrub = 3,
		/mob/living/simple_animal/hostile/asteroid/brimdemon = 3,
		/mob/living/basic/mining/lobstrosity/lava = 5,
		/mob/living/basic/mining/bileworm = 5,
		/obj/structure/spawner/lavaland/legion = 2,
		/obj/structure/spawner/lavaland/goliath = 2,
		/obj/structure/spawner/lavaland = 1,
	)

	weighted_flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 2,
		/obj/structure/flora/ash/cap_shroom = 2,
		/obj/structure/flora/ash/stem_shroom = 2,
		/obj/structure/flora/ash/tall_shroom = 2,
		/obj/structure/flora/ash/seraka = 2,
		/obj/structure/flora/ash/fireblossom = 1,
		/obj/structure/flora/tree/jungle/style_random = 20,
		/obj/structure/flora/tree/jungle/small/style_random = 29,
		/obj/structure/flora/bush/style_random = 8,
		/obj/structure/flora/bush/pale/style_random = 8,
		/obj/structure/flora/grass/jungle/a/style_random = 7,
		/obj/structure/flora/grass/jungle/b/style_random = 7,
		/obj/structure/flora/rock/style_random = 10,
		/obj/structure/flora/rock/pile/style_random = 10,
	)

	///Note that this spawn list is also in the icemoon generator
	weighted_feature_spawn_list = list(
		/obj/structure/geyser/wittel = 10,
		/obj/structure/geyser/random = 2,
		/obj/structure/geyser/plasma_oxide = 10,
		/obj/structure/geyser/protozine = 10,
		/obj/structure/geyser/hollowwater = 10,
	)

	initial_closed_chance = 35
	smoothing_iterations = 50
	birth_limit = 4
	death_limit = 3

/datum/map_generator/cave_generator/prairie_world/noruins
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt/do_not_chasm = 1)

/datum/map_generator/cave_generator/prairie_world/rich //danger zone: megafauna allowed to spawn!  but you do get some nice minerals
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt/rich = 1)

	mob_spawn_chance = 4
	feature_spawn_chance = 0.15

	weighted_mob_spawn_list = list(
		SPAWN_MEGAFAUNA = 1,
		/obj/effect/spawner/random/lavaland_mob/goliath = 32,
		/obj/effect/spawner/random/lavaland_mob/watcher = 12,
		/obj/effect/spawner/random/lavaland_mob/legion = 13,
		/mob/living/basic/mining/goldgrub = 2,
		/mob/living/simple_animal/hostile/asteroid/brimdemon = 3,
		/mob/living/basic/mining/lobstrosity/lava = 2,
		/mob/living/basic/mining/bileworm = 5,
		/obj/structure/spawner/lavaland/legion = 4,
		/obj/structure/spawner/lavaland/goliath = 4,
		/obj/structure/spawner/lavaland = 2,
	)



/// PRAIRIE WEATHER DATUMS
//Plasma storms occur when the subterranean pockets of plasma erupt, causing hot gaseous plasma to seep out through the cracks in the earth.
//They are largely harmless if you have good protection from the heat and internals to avoid breathing in the toxins, but can cause heatstroke and extreme toxin buildup in the unprotected.
/datum/weather/prairie_plasma_storm
	name = "plasma storm"
	desc = "Subterranean pockets of plasma erupt, causing scalding gaseous plasma to seep out from the cracks in the earth, causing heatstroke and toxin buildup in the unprotected."

	overlay_icon = 'modular_skyraptor/modules/betterplanets/icons/turf_prairie.dmi'
	overlay_icon_glow = 'modular_skyraptor/modules/betterplanets/icons/extra_prairie.dmi'

	telegraph_message = "<span class='boldwarning'>A low rumble, terrible smell, and wisps of scorching pink fog emerge from the cracked earth below you.  Seek a source of safe air!</span>"
	telegraph_duration = 200
	telegraph_overlay = "plasma_warn"

	weather_message = "<span class='userdanger'><i>The ground below you erupts in billowing clouds of burning-hot plasma!  Get inside or use your protective gear!</i></span>"
	weather_duration_lower = 400
	weather_duration_upper = 1000
	weather_overlay = "plasma_storm"

	end_message = "<span class='boldannounce'>The rumble from the planet subsides as the plasma storm begins to gutter out.  It should be safe to go outside now.</span>"
	end_duration = 100
	end_overlay = "plasma_warn"

	area_type = /area
	protect_indoors = TRUE
	target_trait = ZTRAIT_PRAIRIE_PLASMASTORM

	probability = 100

	barometer_predictable = TRUE
	var/list/weak_sounds = list()
	var/list/strong_sounds = list()

/datum/weather/prairie_plasma_storm/telegraph()
	var/list/eligible_areas = list()
	for (var/z in impacted_z_levels)
		eligible_areas += SSmapping.areas_in_z["[z]"]
	for(var/i in 1 to eligible_areas.len)
		var/area/place = eligible_areas[i]
		if(place.outdoors)
			weak_sounds[place] = /datum/looping_sound/weak_outside_prairie_plasmastorm
			strong_sounds[place] = /datum/looping_sound/active_outside_prairie_plasmastorm
		else
			weak_sounds[place] = /datum/looping_sound/weak_inside_prairie_plasmastorm
			strong_sounds[place] = /datum/looping_sound/active_inside_prairie_plasmastorm
		CHECK_TICK

	GLOB.prairie_plasma_storm_sounds += weak_sounds

	spawn(10)
		for(var/area/affected_area in impacted_areas)
			for(var/turf/open/spess in affected_area.get_contained_turfs())
				if(spess.light_color == LIGHT_COLOR_PRAIRIEWORLD)
					spess.set_light(3, 0.75, LIGHT_COLOR_PRAIRIEWORLD_STORM)
				if(spess.light_color == NIGHT_COLOR_PRAIRIEWORLD)
					spess.set_light(3, 0.75, NIGHT_COLOR_PRAIRIEWORLD_STORM)

	//We modify this list instead of setting it to weak/stron sounds in order to preserve things that hold a reference to it
	//It's essentially a playlist for a bunch of components that chose what sound to loop based on the area a player is in
	return ..()

/datum/weather/prairie_plasma_storm/start()
	var/rval = ..()

	/// An extra bit here to force LINDA to initialize the other planetary gasmix types
	if(!SSair.planetary[PRAIRIE_GASMIX_STORM])
		var/datum/gas_mixture/immutable/planetary/mix = new
		mix.parse_string_immutable(PRAIRIE_GASMIX_STORM)
		SSair.planetary[PRAIRIE_GASMIX_STORM] = mix
	if(!SSair.planetary[PRAIRIE_GASMIX_NIGHT_STORM])
		var/datum/gas_mixture/immutable/planetary/mix = new
		mix.parse_string_immutable(PRAIRIE_GASMIX_NIGHT_STORM)
		SSair.planetary[PRAIRIE_GASMIX_NIGHT_STORM] = mix
	/// End extra bit

	GLOB.prairie_plasma_storm_sounds -= weak_sounds
	GLOB.prairie_plasma_storm_sounds += strong_sounds

	spawn(10)
		for(var/area/affected_area in impacted_areas)
			for(var/turf/open/spess in affected_area.get_contained_turfs())
				if(spess.planetary_atmos)
					if(spess.initial_gas_mix == PRAIRIE_GASMIX)
						spess.initial_gas_mix = PRAIRIE_GASMIX_STORM
						spess.air.copy_from(SSair.planetary[PRAIRIE_GASMIX_STORM])
						spess.update_visuals()
					if(spess.initial_gas_mix == PRAIRIE_GASMIX_NIGHT)
						spess.initial_gas_mix = PRAIRIE_GASMIX_NIGHT_STORM
						spess.air.copy_from(SSair.planetary[PRAIRIE_GASMIX_NIGHT_STORM])
						spess.update_visuals()

	return rval

/datum/weather/prairie_plasma_storm/wind_down()
	var/rval = ..()

	GLOB.prairie_plasma_storm_sounds -= strong_sounds
	GLOB.prairie_plasma_storm_sounds += weak_sounds

	spawn(10)
		for(var/area/affected_area in impacted_areas)
			for(var/turf/open/spess in affected_area.get_contained_turfs())
				if(spess.planetary_atmos)
					if(spess.initial_gas_mix == PRAIRIE_GASMIX_STORM)
						spess.initial_gas_mix = PRAIRIE_GASMIX
						spess.air.copy_from(SSair.planetary[PRAIRIE_GASMIX])
						spess.update_visuals()
					if(spess.initial_gas_mix == PRAIRIE_GASMIX_NIGHT_STORM)
						spess.initial_gas_mix = PRAIRIE_GASMIX_NIGHT
						spess.air.copy_from(SSair.planetary[PRAIRIE_GASMIX_NIGHT])
						spess.update_visuals()

	return rval

/datum/weather/prairie_plasma_storm/end()
	GLOB.prairie_plasma_storm_sounds -= weak_sounds
	for(var/area/affected_area in impacted_areas)
		for(var/turf/open/spess in affected_area.get_contained_turfs())
			if(spess.light_color == LIGHT_COLOR_PRAIRIEWORLD_STORM)
				spess.set_light(3, 0.75, LIGHT_COLOR_PRAIRIEWORLD)
			if(spess.light_color == NIGHT_COLOR_PRAIRIEWORLD_STORM)
				spess.set_light(3, 0.75, NIGHT_COLOR_PRAIRIEWORLD)
	return ..()

// plasma storm doesn't have any active effects on mobs, it only messes with atmos
/datum/weather/prairie_plasma_storm/can_weather_act(mob/living/mob_to_check)
	return FALSE
	//. = ..()
	/*if(!. || !ishuman(mob_to_check))
		return
	var/mob/living/carbon/human/human_to_check = mob_to_check
	if(human_to_check.get_thermal_protection() >= FIRE_IMMUNITY_MAX_TEMP_PROTECT)
		return FALSE*/

/datum/weather/prairie_plasma_storm/weather_act(mob/living/victim)
	//victim.adjustFireLoss(4)

// since this is usually on a station z level, add extra checks to not annoy everyone
/datum/weather/prairie_plasma_storm/can_get_alert(mob/player)
	if(!..())
		return FALSE

	// allows for prairie mining levels to still be fine
	/*if(!is_station_level(player.z))
		return TRUE*/  // bypass checks

	if(isobserver(player))
		return TRUE

	if(HAS_TRAIT(player, TRAIT_DETECT_STORM) || HAS_TRAIT(player.mind, TRAIT_DETECT_STORM))
		return TRUE

	if(istype(get_area(player), /area/mine))
		return TRUE

	for(var/area/stormy_area in impacted_areas)
		if(locate(stormy_area) in view(player))
			return TRUE

	return FALSE




/// Mildly tweaked prairie plasmastorm sounds
/datum/looping_sound/active_outside_prairie_plasmastorm
	mid_sounds = list(
		'sound/weather/ashstorm/outside/active_mid1.ogg'=1,
		'sound/weather/ashstorm/outside/active_mid2.ogg'=1,
		'sound/weather/ashstorm/outside/active_mid3.ogg'=1
		)
	mid_length = 80
	start_sound = 'sound/weather/ashstorm/outside/active_start.ogg'
	start_length = 130
	end_sound = 'sound/weather/ashstorm/outside/active_end.ogg'
	volume = 50

/datum/looping_sound/active_inside_prairie_plasmastorm
	mid_sounds = list(
		'sound/weather/ashstorm/inside/active_mid1.ogg'=1,
		'sound/weather/ashstorm/inside/active_mid2.ogg'=1,
		'sound/weather/ashstorm/inside/active_mid3.ogg'=1
		)
	mid_length = 80
	start_sound = 'sound/weather/ashstorm/inside/active_start.ogg'
	start_length = 130
	end_sound = 'sound/weather/ashstorm/inside/active_end.ogg'
	volume = 30

/datum/looping_sound/weak_outside_prairie_plasmastorm
	mid_sounds = list(
		'sound/weather/ashstorm/outside/weak_mid1.ogg'=1,
		'sound/weather/ashstorm/outside/weak_mid2.ogg'=1,
		'sound/weather/ashstorm/outside/weak_mid3.ogg'=1
		)
	mid_length = 80
	start_sound = 'sound/weather/ashstorm/outside/weak_start.ogg'
	start_length = 130
	end_sound = 'sound/weather/ashstorm/outside/weak_end.ogg'
	volume = 30

/datum/looping_sound/weak_inside_prairie_plasmastorm
	mid_sounds = list(
		'sound/weather/ashstorm/inside/weak_mid1.ogg'=1,
		'sound/weather/ashstorm/inside/weak_mid2.ogg'=1,
		'sound/weather/ashstorm/inside/weak_mid3.ogg'=1
		)
	mid_length = 80
	start_sound = 'sound/weather/ashstorm/inside/weak_start.ogg'
	start_length = 130
	end_sound = 'sound/weather/ashstorm/inside/weak_end.ogg'
	volume = 10

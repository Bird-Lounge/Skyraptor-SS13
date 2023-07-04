/datum/map_generator/cave_generator/prairie_world
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass/planetary = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt = 1)

	weighted_mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 34,
		/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/random = 13,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 13,
		//SPAWN_MEGAFAUNA = 0,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 3,
		/mob/living/simple_animal/hostile/asteroid/lobstrosity = 5,
		/mob/living/simple_animal/hostile/asteroid/brimdemon = 3,
		/mob/living/basic/mining/bileworm = 5,
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
	)

	///Note that this spawn list is also in the icemoon generator
	weighted_feature_spawn_list = list(
		/obj/structure/geyser/wittel = 10,
		/obj/structure/geyser/random = 2,
		/obj/structure/geyser/plasma_oxide = 10,
		/obj/structure/geyser/protozine = 10,
		/obj/structure/geyser/hollowwater = 10,
	)

	initial_closed_chance = 30
	smoothing_iterations = 40
	birth_limit = 4
	death_limit = 3

/datum/map_generator/cave_generator/prairie_world/noruins
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt/do_not_chasm = 1)

/datum/map_generator/cave_generator/prairie_world/rich //danger zone: megafauna allowed to spawn!  but you do get some nice minerals
	weighted_open_turf_types = list(/turf/open/misc/asteroid/prairie_grass = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/prairie_dirt/rich = 1)

	weighted_mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 34,
		/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/random = 12,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 13,
		SPAWN_MEGAFAUNA = 1,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 3,
		/mob/living/simple_animal/hostile/asteroid/lobstrosity = 5,
		/mob/living/simple_animal/hostile/asteroid/brimdemon = 3,
		/mob/living/basic/mining/bileworm = 5,
	)

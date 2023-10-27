/datum/config_entry/number/prairie_budget
	default = 50
	integer = FALSE
	min_val = 0

/datum/mapping_newruins/prairie
	name = "Prairie Ruins"
	id = "prairie_ruins"

	ztrait = ZTRAIT_PRAIRIE_RUINS
	area_list = list(/area/prairie_world/surface/outdoors)

/datum/mapping_newruins/prairie/get_budget()
	return CONFIG_GET(number/prairie_budget)



/// Weather helper
GLOBAL_LIST_EMPTY(prairie_plasma_storm_sounds)
/datum/mapping_weather_handler/prairie_plasmastorm
	name = "Plasma Storm (Prairie)"
	id = "prairie_plasmastorm"

/datum/mapping_weather_handler/prairie_plasmastorm/add_weathertype(var/obj/the_creature)
	the_creature.AddElement(/datum/element/weather_listener, /datum/weather/prairie_plasma_storm, ZTRAIT_PRAIRIE_PLASMASTORM, GLOB.prairie_plasma_storm_sounds)

/datum/mapping_weather_handler/prairie_plasmastorm/del_weathertype(var/obj/the_creature)
	the_creature.RemoveElement(/datum/element/weather_listener, /datum/weather/prairie_plasma_storm, ZTRAIT_PRAIRIE_PLASMASTORM, GLOB.prairie_plasma_storm_sounds)

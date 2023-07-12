/*
	Hello & welcome to datum_weatherhandler.dm.
	This exists solely to fix the fact you can't fricking add new weather soundtypes modularly, because ash storm sounds are implemented in jank, strange ways.

	If you're joining me however many years down the line from mid 2023, welcome to the madness that is SS13 development.
	Good luck. - CliffracerX/Naaka Ko
*/

/datum/mapping_weather_handler
	//the name of this new feature for pretty-printing if needed
	var/name
	//a unique identifier for coders, distinct from pretty names when needed
	var/id

	proc/add_weathertype(var/obj/the_creature)
		//will be in the form of the_creature.AddElement(/datum/element/weather_listener, /datum/weather/ash_storm, ZTRAIT_ASHSTORM, GLOB.ash_storm_sounds)

	proc/del_weathertype(var/obj/the_creature)
		//will be in the form of the_creature.RemoveElement(/datum/element/weather_listener, /datum/weather/ash_storm, ZTRAIT_ASHSTORM, GLOB.ash_storm_sounds)
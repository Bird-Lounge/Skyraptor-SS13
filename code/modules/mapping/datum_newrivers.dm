/*
	Hello & welcome to datum_newrivers.dm.
	By default, ruin categories, river generators and mining Z-types are all hardcoded, making modular integration of new types a pain in the arse.

	If you're joining me however many years down the line from mid 2023, welcome to the madness that is SS13 development.
	Good luck. - CliffracerX/Naaka Ko
*/

/datum/mapping_newrivers
	//the name of this new feature for pretty-printing if needed
	var/name
	//a unique identifier for coders, distinct from pretty names when needed
	var/id

	//the z-trait used for these rivers
	var/ztrait
	//a magic number, not quite clear what it does
	var/river_magicnum = 4
	//target turf
	var/turf/target_turf
	//target area
	var/area/target_area

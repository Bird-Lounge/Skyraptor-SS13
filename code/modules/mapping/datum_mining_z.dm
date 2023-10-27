/*
	Hello & welcome to datum_mining_z.dm.
	By default, ruin categories, river generators and mining Z-types are all hardcoded, making modular integration of new types a pain in the arse.

	If you're joining me however many years down the line from mid 2023, welcome to the madness that is SS13 development.
	Good luck. - CliffracerX/Naaka Ko
*/

/datum/mapping_mining_z
	//the name of this new feature for pretty-printing if needed
	var/name
	//a unique identifier for coders, distinct from pretty names when needed
	var/id

	//proper name used when initializing the z-level
	var/z_name
	//map file name - don't include the full path, it should be in map_files/Mining
	var/map_path
	//z-level traits, used with ruin and river generation
	var/default_traits
	//parallax path - default to lavaland just in case
	var/atom/movable/screen/parallax_layer/planet_parallax = /atom/movable/screen/parallax_layer/planet

	//a blacklist file for this mining level's ruin types
	var/blacklist

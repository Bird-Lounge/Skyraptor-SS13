/*
	Hello & welcome to datum_newruins.dm.
	By default, ruin categories, river generators and mining Z-types are all hardcoded, making modular integration of new types a pain in the arse.

	If you're joining me however many years down the line from mid 2023, welcome to the madness that is SS13 development.
	Good luck. - CliffracerX/Naaka Ko
*/

/datum/mapping_newruins
	//the name of this new feature for pretty-printing if needed
	var/name
	//a unique identifier for coders, distinct from pretty names when needed
	var/id

	//the z-trait used for these ruins
	var/ztrait
	//list of valid areas to work with
	var/list/area_list
	//clear below - yes or no
	var/clear_below = TRUE

	//because CONFIG_GET is a wee bit jank
	proc/get_budget()
		return 0 //should be CONFIG_GET(number/your_budget)

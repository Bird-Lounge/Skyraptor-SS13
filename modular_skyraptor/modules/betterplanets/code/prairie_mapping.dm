/datum/config_entry/number/prairie_budget
	default = 40
	integer = FALSE
	min_val = 0

/datum/mapping_newruins/prairie
	name = "Prairie Ruins"
	id = "prairie_ruins"

	ztrait = ZTRAIT_PRAIRIE_RUINS
	area_list = list(/area/prairie_world/surface/outdoors)

/datum/mapping_newruins/prairie/get_budget()
	return CONFIG_GET(number/prairie_budget)

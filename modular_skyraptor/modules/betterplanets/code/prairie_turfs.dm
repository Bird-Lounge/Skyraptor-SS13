/// Dirt
/turf/open/misc/sandy_dirt/prairie
	name = "prairie dirt"
	desc = "Dry, cracked dirt that crunches beneath your feet."
	initial_gas_mix = PRAIRIE_GASMIX
	planetary_atmos = TRUE

/turf/open/misc/sandy_dirt/prairie/Initialize(mapload)
	. = ..()
	set_light(2, 0.6, LIGHT_COLOR_PRAIRIEWORLD)

/// Plating
/turf/open/floor/plating/prairie_world
	icon_state = "plating"
	initial_gas_mix = PRAIRIE_GASMIX

/turf/open/floor/plating/prairie_world/planetary
	planetary_atmos = TRUE

/turf/open/floor/plating/prairie_world/planetary/Initialize(mapload)
	. = ..()
	set_light(2, 0.6, LIGHT_COLOR_PRAIRIEWORLD)

/// Grass
/turf/open/misc/asteroid/prairie_grass
	gender = PLURAL
	name = "prairie grass"
	desc = "Thick swathes of dry, resilient grass.  It crunches under your steps like fallen leaves."
	icon = 'modular_skyraptor/modules/betterplanets/icons/turf_prairie.dmi'
	icon_state = "prairie_grass"
	base_icon_state = "prairie_grass"
	//damaged_dmi = 'icons/turf/snow.dmi' N/A

	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	clawfootstep = FOOTSTEP_GRASS
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

	/*var/smooth_icon = 'modular_skyraptor/modules/betterplanets/icons/turf_prairie_grass.dmi'
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_FLOOR_GRASS
	canSmoothWith = SMOOTH_GROUP_FLOOR_GRASS + SMOOTH_GROUP_CLOSED_TURFS
	layer = HIGH_TURF_LAYER*/

	baseturfs = /turf/open/misc/sandy_dirt/prairie
	initial_gas_mix = PRAIRIE_GASMIX
	slowdown = 0
	flags_1 = NONE
	planetary_atmos = TRUE
	bullet_sizzle = TRUE
	bullet_bounce_sound = null
	dig_result = null

	/*light_range = 2
	light_power = 0.6
	light_color = LIGHT_COLOR_PRAIRIEWORLD*/

/turf/open/misc/asteroid/prairie_grass/Initialize(mapload)
	. = ..()
	/*if(smoothing_flags)
		var/matrix/translation = new
		translation.Translate(-9, -9)
		transform = translation
		icon = smooth_icon*/
	if(has_floor_variance && prob(floor_variance))
		icon_state = "[base_icon_state][rand(0,4)]"
	set_light(3, 0.75, LIGHT_COLOR_PRAIRIEWORLD)

/turf/open/misc/asteroid/prairie_grass/planetary
	baseturfs = /turf/open/openspace/prairie

/// Exact subtype as parent, just used in ruins to prevent other ruins/chasms from spawning on top of it.
/turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm
	turf_flags = CAN_BE_DIRTY_1 | IS_SOLID | NO_RUST | NO_RUINS



/// Chasms
/turf/open/openspace/prairie
	name = "prairie chasm"
	desc = "A hole where the dry, cracked earth has given way.  Watch your step."
	baseturfs = /turf/open/openspace/prairie
	initial_gas_mix = PRAIRIE_GASMIX
	planetary_atmos = TRUE
	/// Replaces itself with replacement_turf if the turf has the no ruins allowed flag (usually ruins themselves)
	var/protect_ruin = TRUE
	/// The turf that will replace this one if the turf below has the no ruins allowed flag. we use this one so we don't get any potential double whammies
	var/replacement_turf = /turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm
	/// If true mineral turfs below this openspace turf will be mined automatically
	var/drill_below = TRUE

/turf/open/openspace/prairie/Initialize(mapload)
	. = ..()
	var/turf/T = below()
	//I wonder if I should error here
	if(!T)
		return
	if(T.turf_flags & NO_RUINS && protect_ruin)
		ChangeTurf(replacement_turf, null, CHANGETURF_IGNORE_AIR)
		return
	if(!ismineralturf(T) || !drill_below)
		return
	var/turf/closed/mineral/M = T
	M.mineralAmt = 0
	M.gets_drilled()
	baseturfs = /turf/open/openspace/prairie //This is to ensure that IF random turf generation produces a openturf, there won't be other turfs assigned other than openspace.

/turf/open/openspace/prairie/keep_below
	drill_below = FALSE

/turf/open/openspace/prairie/ruins
	protect_ruin = FALSE
	drill_below = FALSE


/// Walls
/turf/closed/mineral/random/prairie_dirt
	name = "packed dirt"
	desc = "Hard, dry, packed dirt that's tough as rock, yet brittle beyond belief."
	icon = MAP_SWITCH('modular_skyraptor/modules/betterplanets/icons/turf_prairie_dirtwall.dmi', 'modular_skyraptor/modules/betterplanets/icons/turf_prairie.dmi')
	icon_state = "prairie_dirtwall"
	base_icon_state = "mountain_wall"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS
	defer_change = TRUE
	turf_type = /turf/open/misc/asteroid/prairie_grass/planetary
	baseturfs = /turf/open/misc/asteroid/prairie_grass/planetary
	initial_gas_mix = ICEMOON_DEFAULT_ATMOS
	weak_turf = TRUE

/turf/closed/mineral/random/prairie_dirt/Change_Ore(ore_type, random = 0)
	. = ..()
	if(mineralType)
		icon = 'modular_skyraptor/modules/betterplanets/icons/turf_prairie_packedwall.dmi'
		icon_state = "rock_wall-0"
		base_icon_state = "rock_wall"
		smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER

/turf/closed/mineral/random/prairie_dirt/mineral_chances()
	return list(
		/obj/item/stack/ore/bluespace_crystal = 3,
		/obj/item/stack/ore/diamond = 5,
		/obj/item/stack/ore/gold = 10,
		/obj/item/stack/ore/iron = 40,
		/obj/item/stack/ore/plasma = 15,
		/obj/item/stack/ore/silver = 10,
		/obj/item/stack/ore/titanium = 10,
		/obj/item/stack/ore/uranium = 5,
		/turf/open/openspace/prairie/keep_below = 2, //gibtonite has been replaced with chasms.  watch your step...
	)

/// Near exact same subtype as parent, just used in ruins to prevent other ruins/chasms from spawning on top of it.
/turf/closed/mineral/random/prairie_dirt/do_not_chasm
	turf_type = /turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm
	baseturfs = /turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm
	turf_flags = NO_RUINS

/turf/closed/mineral/random/prairie_dirt/rich
	name = "rich packed dirt"
	desc = "Hard, dry, packed dirt that's tougher than rock, yet brittle beyond belief.  This is darker and richer looking, as if moulded around a past mineral seam."
	baseturfs = /turf/open/misc/asteroid/prairie_grass/planetary
	// abundant ore
	mineralChance = 25

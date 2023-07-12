/datum/map_template/ruin/prairie
	prefix = "_maps/RandomRuins/PrairieRuins/"
	allow_duplicates = FALSE
	cost = 5
	ruin_type = ZTRAIT_PRAIRIE_RUINS
	default_area = /area/prairie_world/surface/outdoors
	has_ceiling = TRUE
	ceiling_turf = /turf/closed/mineral/random/prairie_dirt/do_not_chasm
	ceiling_baseturfs = list(/turf/open/misc/asteroid/prairie_grass/planetary/do_not_chasm)

/// The standard fountain of life hall
/datum/map_template/ruin/prairie/fountain
	name = "Fountain Hall"
	id = "prairie_fountain"
	description = "The fountain has a warning on the side. DANGER: May have undeclared side effects that only become obvious when implemented."
	prefix = "_maps/RandomRuins/AnywhereRuins/"
	suffix = "fountain_hall.dmm"

/// Blood drunk miner
/datum/map_template/ruin/prairie/blood_drunk_miner
	name = "Blood-Drunk Miner"
	id = "blooddrunk"
	description = "A strange arrangement of stone tiles and an insane, beastly miner contemplating them."
	suffix = "prairie_blooddrunk1.dmm"
	cost = 0
	allow_duplicates = FALSE //will only spawn one variant of the ruin

/datum/map_template/ruin/prairie/blood_drunk_miner/random
	name = "Blood-Drunk Miner (Random)"
	suffix = null
	always_place = TRUE

/datum/map_template/ruin/prairie/blood_drunk_miner/random/New()
	suffix = pick("prairie_blooddrunk1.dmm")
	return ..()

/// Clown asteroid - honk!
/datum/map_template/ruin/prairie/clownsteroid
	name = "Clownsteroid"
	id = "clownsteroid"
	description = "A crashed bananium asteroid with an unexpected guest hiding within.  Honk!"
	suffix = "prairie_clownsteroid.dmm"

/// Ashwalker nest ghostrole, because ashies are based.
/datum/map_template/ruin/prairie/ashies
	name = "Ashwalker Outpost"
	id = "prairie_ashies"
	description = "An outpost built by an emerging tribe of Ashwalkers, guarding their nest."
	suffix = "prairie_ashies.dmm"
	cost = 20
	allow_duplicates = FALSE

/// GREENTEXT GAMING.  Can you manage the 1x1 teleport of RNJesus, or will you get trapped in a wall to suffocate for all eternity?
/datum/map_template/ruin/prairie/greentext
	name = "Greentext Altar"
	id = "prairie_greentext"
	description = "A lusty tribute to the almighty greentext.  One lucky crewmember could randomly teleport in...but they better have an escape plan, lest hey be trapped forever!"
	suffix = "prairie_lust.dmm"

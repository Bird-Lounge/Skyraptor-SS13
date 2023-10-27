/datum/map_template/ruin/prairie
	prefix = "_maps/RandomRuins/PrairieRuins/"
	allow_duplicates = FALSE
	cost = 4
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
	allow_duplicates = TRUE

/// Ashwalker nest ghostrole, because ashies are based.
/datum/map_template/ruin/prairie/ashies
	name = "Ashwalker Outpost"
	id = "prairie_ashies"
	description = "An outpost built by an emerging tribe of Ashwalkers, guarding their nest."
	suffix = "prairie_ashies.dmm"
	cost = 15
	allow_duplicates = FALSE

/// GREENTEXT GAMING.  Can you manage the 1x1 teleport of RNJesus, or will you get trapped in a wall to suffocate for all eternity?
/datum/map_template/ruin/prairie/greentext
	name = "Greentext Altar"
	id = "prairie_greentext"
	description = "A lusty tribute to the almighty greentext.  One lucky crewmember could randomly teleport in...but they better have an escape plan, lest hey be trapped forever!"
	suffix = "prairie_lust.dmm"

/// Mk I of Interdyne-equivalent, we need to rework to be less shite
/datum/map_template/ruin/prairie/syndicate_base
	name = "Syndicate Prairie Base"
	id = "prairie_syndies"
	description = "A secret base researching illegal bioweapons, it is closely guarded by an elite team of syndicate agents."
	suffix = "prairie_syndicate_base1.dmm"
	cost = 20
	allow_duplicates = FALSE

/// Funny little phonebooth to hide in when a plasma storm is about to hit.
/datum/map_template/ruin/prairie/phonebooth
	name = "Phonebooth"
	id = "prairie_phonebooth"
	description = "A forgotten phonebooth left to sell holo communications.  Why did one get dropped here?"
	suffix = "prairie_phonebooth.dmm"

/// Elite Tumour
/datum/map_template/ruin/prairie/elite_tumour
	name = "Pulsating Tumor"
	id = "tumor"
	description = "A strange tumor which houses a powerful beast..."
	suffix = "prairie_elite_tumour.dmm"
	allow_duplicates = TRUE

/// A scrungled atmospherics setup to harvest tasty atmos.
/datum/map_template/ruin/prairie/atmos_house
	name = "Atmospherics Outpost"
	id = "prairie_atmos_house"
	description = "A forward-base for atmospherics, featuring a gas mining system and tiny mix chamber.  If you built a turbine outside it could make some power."
	suffix = "prairie_atmos_house.dmm"

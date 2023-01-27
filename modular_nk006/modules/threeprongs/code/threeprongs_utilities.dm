#define TANK_DISPENSER_CAPACITY 10

/obj/item/tank/internals/pluox
	name = "pluoxium tank"
	desc = "A pocket-sized tank of the turbo-breathable Pluoxium.  Good alternative to an emergency oxygen tank when fire's a concern, and easy to refill at Engineering."
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_etc.dmi'
	lefthand_file = 'modular_nk006/modules/threeprongs/icons/threeprongs_lefthand.dmi'
	righthand_file = 'modular_nk006/modules/threeprongs/icons/threeprongs_righthand.dmi'
	icon_state = "pluox_e"
	inhand_icon_state = "pluox_e"
	worn_icon = null
	tank_holder_icon_state = null
	distribute_pressure = TANK_DEFAULT_RELEASE_PRESSURE/4 //roughly 4 kpA is optimal safe breathing pressure with pluox
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	force = 4
	volume = 6


/obj/item/tank/internals/pluox/populate_gas()
	air_contents.assert_gas(/datum/gas/pluoxium)
	air_contents.gases[/datum/gas/pluoxium][MOLES] = (6*ONE_ATMOSPHERE)*volume/(R_IDEAL_GAS_EQUATION*T20C)




//Tank dispenser variant for Engineering
/obj/structure/tank_dispenser/engitanks
	name = "support tank dispenser"
	desc = "A simple yet bulky storage device for gas tanks. Holds up to 10 standard pluoxium tanks and 10 plasma fueltanks."
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_etc.dmi'

/obj/structure/tank_dispenser/engitanks/oxygen
	plasmatanks = 0

/obj/structure/tank_dispenser/engitanks/plasma
	oxygentanks = 0

/obj/structure/tank_dispenser/engitanks/ui_act(action, params)
	//. = ..() //THIS IS PROBABLY NOT A GOOD IDEA, BUT
	if(.)
		return
	switch(action)
		if("plasma")
			if (plasmatanks == 0)
				return TRUE

			dispense(/obj/item/tank/internals/plasma/full, usr)
			plasmatanks--
		if("oxygen")
			if (oxygentanks == 0)
				return TRUE

			dispense(/obj/item/tank/internals/pluox, usr)
			oxygentanks--

	update_appearance()
	return TRUE

/obj/structure/tank_dispenser/engitanks/attackby(obj/item/I, mob/living/user, params)
	var/full
	if(istype(I, /obj/item/tank/internals/plasma))
		if(plasmatanks < TANK_DISPENSER_CAPACITY)
			plasmatanks++
		else
			full = TRUE
	else if(istype(I, /obj/item/tank/internals/pluox))
		if(oxygentanks < TANK_DISPENSER_CAPACITY)
			oxygentanks++
		else
			full = TRUE
	else if(!user.combat_mode)
		to_chat(user, span_notice("[I] does not fit into [src]."))
		return
	else
		return ..()
	if(full)
		to_chat(user, span_notice("[src] can't hold any more of [I]."))
		return

	if(!user.transferItemToLoc(I, src))
		return
	to_chat(user, span_notice("You put [I] in [src]."))
	update_appearance()

#undef TANK_DISPENSER_CAPACITY //you know, I wonder why we bother standardising these with defines when they get undef'd at the end of the file



/obj/machinery/power/apc/New(turf/loc, ndir, building=0)
	if(!req_access)
		req_access = list(ACCESS_NK006_SUP) //overrides normal APC access
	. = ..()

/obj/machinery/airalarm
	req_access = list(ACCESS_NK006_SUP)

/obj/machinery/airalarm/engine
	req_one_access = list(ACCESS_NK006_ATMOS, ACCESS_NK006_SUP)

/obj/machinery/airalarm/mixingchamber
	req_one_access = list(ACCESS_NK006_ATMOS, ACCESS_NK006_SUP, ACCESS_NK006_SPC)

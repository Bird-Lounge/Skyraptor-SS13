//todo: move to machine board file
/obj/item/circuitboard/machine/rad_collector
	name = "radiation collector (Machine Board)"
	icon_state = "engineering"
	build_path = /obj/machinery/power/rad_collector
	req_components = list(
		/obj/item/stack/cable_coil = 5,
		/obj/item/stack/sheet/plasmarglass = 2,
		/obj/item/stock_parts/capacitor = 1,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/matter_bin = 1)
	needs_anchored = FALSE



// stored_energy += (pulse_strength-RAD_COLLECTOR_EFFICIENCY)*RAD_COLLECTOR_COEFFICIENT
#define RAD_COLLECTOR_EFFICIENCY 45 	// equivalent pulse strength needs to be a pinch below the baseline level for a T1 singulo to work right.
#define RAD_COLLECTOR_COEFFICIENT 100
#define RAD_COLLECTOR_STORED_OUT 0.04	// (this*100)% of stored power outputted per tick. Doesn't actualy change output total, lower numbers just means collectors output for longer in absence of a source

/obj/machinery/power/rad_collector
	name = "Radiation Collector Array"
	desc = "A device which uses Hawking Radiation and plasma to produce power."
	icon = 'icons/obj/singularity.dmi'
	icon_state = "ca"
	anchored = FALSE
	density = TRUE
	req_access = list(ACCESS_ENGINE_EQUIP)
	max_integrity = 350
	integrity_failure = 0.2
	circuit = /obj/item/circuitboard/machine/rad_collector
	rad_insulation = RAD_EXTREME_INSULATION
	var/obj/item/tank/internals/plasma/loaded_tank = null
	var/stored_energy = 0
	var/active = 0
	var/locked = FALSE
	var/drainratio = 1
	var/powerproduction_drain = 0.001

	//these are used for performance upgrades from higher tier components
	var/input_power_multiplier = 1
	var/input_efficiency_multiplier = 1
	var/input_collector_multiplier = 1

/obj/machinery/power/rad_collector/anchored/Initialize()
	. = ..()
	set_anchored(TRUE)

/obj/machinery/power/rad_collector/anchored/delta //Deltastation's engine is shared by engineers and atmos techs
	desc = "A device which uses Hawking Radiation and plasma to produce power. This model allows access by Atmospheric Technicians."
	req_access = list(ACCESS_ENGINE_EQUIP, ACCESS_ATMOSPHERICS)

/obj/machinery/power/rad_collector/Destroy()
	return ..()

/obj/machinery/power/rad_collector/RefreshParts()
	. = ..()
	var/power_multiplier = 0
	var/efficiency_multiplier = 0
	var/collector_multiplier = 0
	for(var/obj/item/stock_parts/capacitor/C in component_parts)
		power_multiplier += C.rating
	for(var/obj/item/stock_parts/manipulator/C in component_parts)
		efficiency_multiplier += C.rating
	for(var/obj/item/stock_parts/matter_bin/C in component_parts)
		collector_multiplier += C.rating
	input_power_multiplier = power_multiplier
	input_efficiency_multiplier = efficiency_multiplier
	input_collector_multiplier = collector_multiplier

/obj/machinery/power/rad_collector/should_have_node()
	return anchored

/obj/machinery/power/rad_collector/process()
	if(!loaded_tank)
		return
	if(!loaded_tank.air_contents.gases[/datum/gas/plasma])
		investigate_log("<font color='red'>out of fuel</font>.", INVESTIGATE_ENGINE)
		playsound(src, 'sound/machines/ding.ogg', 50, TRUE)
		eject()
	else
		var/gasdrained = min((powerproduction_drain*drainratio)/input_efficiency_multiplier,loaded_tank.air_contents.gases[/datum/gas/plasma][MOLES])
		loaded_tank.air_contents.gases[/datum/gas/plasma][MOLES] -= gasdrained
		loaded_tank.air_contents.assert_gas(/datum/gas/tritium)
		loaded_tank.air_contents.gases[/datum/gas/tritium][MOLES] += gasdrained
		loaded_tank.air_contents.garbage_collect()

		var/power_produced = get_power_output()
		add_avail(power_produced)
		stored_energy-=power_produced

		//if this gets irradiated, we consume the radiation as if it were a very light burst from a uranium wall et/al so normal operation continues
		if(HAS_TRAIT(src, TRAIT_IRRADIATED))
			qdel(src.GetComponent(/datum/component/irradiated))
			stored_energy += (THRESHOLD_TO_RAD(RAD_LIGHT_INSULATION)-(RAD_COLLECTOR_EFFICIENCY/input_collector_multiplier))*RAD_COLLECTOR_COEFFICIENT*input_power_multiplier
			flick("ca_irrzapped", src)

//some of this code is based on tesla coils/similar energy condensers
/obj/machinery/power/rad_collector/proc/get_power_output()
	// Always consume at least 2kJ of energy if we have at least that much stored
	return min(stored_energy, (stored_energy*RAD_COLLECTOR_STORED_OUT)+joules_to_energy(2000))

/obj/machinery/power/rad_collector/interact(mob/user)
	if(anchored)
		if(!src.locked)
			toggle_power()
			user.visible_message("<span class='notice'>[user.name] turns the [src.name] [active? "on":"off"].</span>", \
			"<span class='notice'>You turn the [src.name] [active? "on":"off"].</span>")
			var/fuel
			if(loaded_tank)
				fuel = loaded_tank.air_contents.gases[/datum/gas/plasma]
			fuel = fuel ? fuel[MOLES] : 0
			investigate_log("turned [active?"<font color='green'>on</font>":"<font color='red'>off</font>"] by [key_name(user)]. [loaded_tank?"Fuel: [round(fuel/0.29)]%":"<font color='red'>It is empty</font>"].", INVESTIGATE_ENGINE)
			return
		else
			to_chat(user, "<span class='warning'>The controls are locked!</span>")
			return

/obj/machinery/power/rad_collector/can_be_unfasten_wrench(mob/user, silent)
	if(loaded_tank)
		if(!silent)
			to_chat(user, "<span class='warning'>Remove the plasma tank first!</span>")
		return FAILED_UNFASTEN
	return ..()

/obj/machinery/power/rad_collector/set_anchored(anchorvalue)
	. = ..()
	if(isnull(.))
		return //no need to process if we didn't change anything.
	if(anchorvalue)
		connect_to_network()
	else
		disconnect_from_network()

/obj/machinery/power/rad_collector/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/tank/internals/plasma))
		if(!anchored)
			to_chat(user, "<span class='warning'>[src] needs to be secured to the floor first!</span>")
			return TRUE
		if(loaded_tank)
			to_chat(user, "<span class='warning'>There's already a plasma tank loaded!</span>")
			return TRUE
		if(panel_open)
			to_chat(user, "<span class='warning'>Close the maintenance panel first!</span>")
			return TRUE
		if(!user.transferItemToLoc(W, src))
			return
		loaded_tank = W
		update_icon()
	else if(W.GetID())
		if(allowed(user))
			if(active)
				locked = !locked
				to_chat(user, "<span class='notice'>You [locked ? "lock" : "unlock"] the controls.</span>")
			else
				to_chat(user, "<span class='warning'>The controls can only be locked when \the [src] is active!</span>")
		else
			to_chat(user, "<span class='danger'>Access denied.</span>")
			return TRUE
	else
		return ..()

/obj/machinery/power/rad_collector/wrench_act(mob/living/user, obj/item/I)
	..()
	default_unfasten_wrench(user, I)
	return TRUE

/obj/machinery/power/rad_collector/screwdriver_act(mob/living/user, obj/item/I)
	if(..())
		return TRUE
	if(loaded_tank)
		to_chat(user, "<span class='warning'>Remove the plasma tank first!</span>")
	else
		default_deconstruction_screwdriver(user, icon_state, icon_state, I)
	return TRUE

/obj/machinery/power/rad_collector/crowbar_act(mob/living/user, obj/item/I)
	if(loaded_tank)
		if(locked)
			to_chat(user, "<span class='warning'>The controls are locked!</span>")
			return TRUE
		eject()
		return TRUE
	if(default_deconstruction_crowbar(I))
		return TRUE
	to_chat(user, "<span class='warning'>There isn't a tank loaded!</span>")
	return TRUE

/obj/machinery/power/rad_collector/return_analyzable_air()
	if(loaded_tank)
		return loaded_tank.return_analyzable_air()
	else
		return null

/obj/machinery/power/rad_collector/examine(mob/user)
	. = ..()
	if(active)
		// stored_energy is converted directly to watts every SSmachines.wait * 0.1 seconds.
		// Therefore, its units are joules per SSmachines.wait * 0.1 seconds.
		// So joules = stored_energy * SSmachines.wait * 0.1
		var/joules = stored_energy * SSmachines.wait * 0.1
		. += "<span class='notice'>[src]'s display states that it has stored <b>[display_joules(joules)]</b>, and is processing <b>[display_power(get_power_output())]</b>.</span>"
	else
		. += "<span class='notice'><b>[src]'s display displays the words:</b> \"Power production mode. Please insert <b>Plasma</b>.\"</span>"

/obj/machinery/power/rad_collector/atom_break(damage_flag)
	. = ..()
	if(.)
		eject()

/obj/machinery/power/rad_collector/proc/eject()
	locked = FALSE
	var/obj/item/tank/internals/plasma/Z = src.loaded_tank
	if (!Z)
		return
	Z.forceMove(drop_location())
	Z.layer = initial(Z.layer)
	Z.plane = initial(Z.plane)
	src.loaded_tank = null
	if(active)
		toggle_power()
	else
		update_icon()

/obj/machinery/power/rad_collector/proc/on_pre_potential_irradiation(datum/source, datum/radiation_pulse_information/pulse_information, insulation_to_target)
	SIGNAL_HANDLER

	if(loaded_tank && active && THRESHOLD_TO_RAD(pulse_information.threshold) > (RAD_COLLECTOR_EFFICIENCY/input_collector_multiplier))
		flick("ca_zapped", src)
		stored_energy += (THRESHOLD_TO_RAD(pulse_information.threshold)-(RAD_COLLECTOR_EFFICIENCY/input_collector_multiplier))*RAD_COLLECTOR_COEFFICIENT*input_power_multiplier
		//if this gets irradiated, we consume the radiation as if it were a very light burst from a uranium wall et/al so normal operation continues
		//extra copy here because spess inconsistency
		if(HAS_TRAIT(src, TRAIT_IRRADIATED))
			qdel(src.GetComponent(/datum/component/irradiated))
			stored_energy += (THRESHOLD_TO_RAD(RAD_LIGHT_INSULATION)-(RAD_COLLECTOR_EFFICIENCY/input_collector_multiplier))*RAD_COLLECTOR_COEFFICIENT*input_power_multiplier
			flick("ca_irrzapped", src)

/obj/machinery/power/rad_collector/update_overlays()
	. = ..()
	if(loaded_tank)
		. += "ptank"
	if(machine_stat & (NOPOWER|BROKEN))
		return
	if(active)
		. += "on"

/obj/machinery/power/rad_collector/proc/toggle_power()
	active = !active
	if(active)
		icon_state = "ca_on"
		flick("ca_active", src)
		RegisterSignal(src, COMSIG_IN_RANGE_OF_IRRADIATION, PROC_REF(on_pre_potential_irradiation))
		ADD_TRAIT(src, TRAIT_RADIATION_MACHINERY, REF(src))
	else
		icon_state = "ca"
		flick("ca_deactive", src)
		UnregisterSignal(src, COMSIG_IN_RANGE_OF_IRRADIATION, PROC_REF(on_pre_potential_irradiation))
		REMOVE_TRAIT(src, TRAIT_RADIATION_MACHINERY, REF(src))
	update_icon()
	return

#undef RAD_COLLECTOR_EFFICIENCY
#undef RAD_COLLECTOR_COEFFICIENT

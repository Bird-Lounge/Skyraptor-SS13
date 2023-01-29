#define PA_CONSTRUCTION_UNSECURED  0
#define PA_CONSTRUCTION_UNWIRED    1
#define PA_CONSTRUCTION_PANEL_OPEN 2
#define PA_CONSTRUCTION_COMPLETE   3

//PA needs sounds for more than just initially securing it
/obj/structure/particle_accelerator/attackby(obj/item/W, mob/user, params)
	if(W.tool_behaviour != TOOL_WRENCH)
		switch(construction_state)
			if(PA_CONSTRUCTION_UNWIRED) //if unwired but being wired, we know we can play
				if(istype(W, /obj/item/stack/cable_coil))
					W.play_tool_sound(src, 75)
			else if(PA_CONSTRUCTION_UNSECURED)
				//do nothing, this already has sounds
			else //all other circumstances need sounds
				W.play_tool_sound(src, 75)
	. = ..()

/obj/machinery/particle_accelerator/control_box/attackby(obj/item/W, mob/user, params)
	if(W.tool_behaviour != TOOL_WRENCH)
		switch(construction_state)
			if(PA_CONSTRUCTION_UNWIRED) //if unwired but being wired, we know we can play
				if(istype(W, /obj/item/stack/cable_coil))
					W.play_tool_sound(src, 75)
			else if(PA_CONSTRUCTION_UNSECURED)
				//do nothing, this already has sounds
			else //all other circumstances need sounds
				W.play_tool_sound(src, 75)
	. = ..()

#undef PA_CONSTRUCTION_UNSECURED
#undef PA_CONSTRUCTION_UNWIRED
#undef PA_CONSTRUCTION_PANEL_OPEN
#undef PA_CONSTRUCTION_COMPLETE



//APCs need sounds for most tool interactions
/obj/machinery/power/apc/wirecutter_act(mob/living/user, obj/item/W)
	if(terminal && opened)
		W.play_tool_sound(src)
	. = ..()

/obj/machinery/power/apc/screwdriver_act(mob/living/user, obj/item/W)
	//this is not the cleanest code but we roll with it
	. = ..()
	if(!opened)
		if(obj_flags & EMAGGED)
			//do nothing
		else
			W.play_tool_sound(src)
	if(cell)
		W.play_tool_sound(src)

/obj/machinery/power/apc/crowbar_act(mob/user, obj/item/crowbar)
	var/oldopened = opened
	. = ..()
	if(oldopened != opened) //we know cover got changed, so crowbar sound
		crowbar.play_tool_sound(src)
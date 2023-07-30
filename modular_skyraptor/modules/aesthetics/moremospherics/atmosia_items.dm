#define AIRTANK_MAX_SAFE_PRESSURE 2533
#define MODPAINT_MAX_COLOR_VALUE 1.25
#define MODPAINT_MIN_COLOR_VALUE 0
#define MODPAINT_MAX_SECTION_COLORS 2
#define MODPAINT_MIN_SECTION_COLORS 0.25
#define MODPAINT_MAX_OVERALL_COLORS 4
#define MODPAINT_MIN_OVERALL_COLORS 1.5

/obj/item/tank/internals/
	icon = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_suit.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_lh.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_rh.dmi'
	var/gauge_overlay = "fullsize"

/obj/item/tank/internals/update_overlays()
	. = ..()
	if(air_contents != null)
		if(air_contents.return_pressure() <= AIRTANK_MAX_SAFE_PRESSURE * 0.1)
			. += "[gauge_overlay]_10"
		else if(air_contents.return_pressure() <= AIRTANK_MAX_SAFE_PRESSURE * 0.3)
			. += "[gauge_overlay]_30"
		else if(air_contents.return_pressure() <= AIRTANK_MAX_SAFE_PRESSURE * 0.5)
			. += "[gauge_overlay]_50"
		else if(air_contents.return_pressure() <= AIRTANK_MAX_SAFE_PRESSURE * 0.7)
			. += "[gauge_overlay]_70"
		else
			. += "[gauge_overlay]_90"

/obj/item/tank/internals/emergency_oxygen
	worn_icon = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_suit.dmi'
	gauge_overlay = "emergency"

/obj/item/tank/internals/emergency_oxygen/engi
	worn_icon = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_suit.dmi'
	gauge_overlay = "engi"

/obj/item/tank/internals/emergency_oxygen/double
	worn_icon = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_suit.dmi'
	gauge_overlay = "double"

/obj/item/tank/internals/generic/greyscale
	name = "generic gas tank"
	desc = "A generic gas tank supporting standard station paintjobs.  Good for demarkating special gas in bombs."

	icon_state = "generic"
	worn_icon_state = "generic"

	greyscale_colors = "#0066FF#FFAA00"
	greyscale_config = /datum/greyscale_config/handheld_atmos_tank
	greyscale_config_worn = /datum/greyscale_config/handheld_atmos_tank/worn
	greyscale_config_inhand_left = /datum/greyscale_config/handheld_atmos_tank/held_l
	greyscale_config_inhand_right = /datum/greyscale_config/handheld_atmos_tank/held_r

/obj/item/tank/internals/plasma/greyscale
	name = "generic gas canister"
	desc = "A generic gas canister supporting standard station paintjobs.  Good for demarkating special gas in bombs.  This one's conductive, like plasma canisters."

	icon_state = "plasma"
	worn_icon_state = "plasma"

	greyscale_colors = "#FF0066#FF6600"
	greyscale_config = /datum/greyscale_config/handheld_atmos_tank
	greyscale_config_worn = /datum/greyscale_config/handheld_atmos_tank/worn
	greyscale_config_inhand_left = /datum/greyscale_config/handheld_atmos_tank/held_l
	greyscale_config_inhand_right = /datum/greyscale_config/handheld_atmos_tank/held_r

/obj/item/tank/internals/emergency_oxygen/greyscale
	name = "generic emergency tank"
	desc = "A generic gas canister supporting standard station paintjobs.  This one's tiny, like emergency oxytanks- why would you use this over an extended-capacity one??"

	icon_state = "emergency"
	worn_icon_state = "emergency"

	greyscale_colors = "#0066FF#AAFF00"
	greyscale_config = /datum/greyscale_config/handheld_atmos_tank
	greyscale_config_worn = /datum/greyscale_config/handheld_atmos_tank/worn
	greyscale_config_inhand_left = /datum/greyscale_config/handheld_atmos_tank/held_l
	greyscale_config_inhand_right = /datum/greyscale_config/handheld_atmos_tank/held_r

/obj/item/tank/internals/emergency_oxygen/engi/greyscale
	name = "generic x-cap emergency tank"
	desc = "A generic gas canister supporting standard station paintjobs.  This one's tiny, like engineering's oxytanks- good for demarkating your Chadmosians' Pluoxium tanks of infinite breath."

	icon_state = "emergency_engi"
	worn_icon_state = "emergency_engi"

	greyscale_colors = "#FF6600#66FF00"
	greyscale_config = /datum/greyscale_config/handheld_atmos_tank
	greyscale_config_worn = /datum/greyscale_config/handheld_atmos_tank/worn
	greyscale_config_inhand_left = /datum/greyscale_config/handheld_atmos_tank/held_l
	greyscale_config_inhand_right = /datum/greyscale_config/handheld_atmos_tank/held_r

/obj/item/tank/internals/emergency_oxygen/double/greyscale
	name = "generic 2x-cap emergency tank"
	desc = "A generic gas canister supporting standard station paintjobs.  This one's made of two tiny ones, like engineering's oxytanks- filled with pluox you could last a whole dang shift off this thing!"

	icon_state = "emergency_double"
	worn_icon_state = "emergency_double"

	greyscale_colors = "#FF6600#66FF00"
	greyscale_config = /datum/greyscale_config/handheld_atmos_tank
	greyscale_config_worn = /datum/greyscale_config/handheld_atmos_tank/worn
	greyscale_config_inhand_left = /datum/greyscale_config/handheld_atmos_tank/held_l
	greyscale_config_inhand_right = /datum/greyscale_config/handheld_atmos_tank/held_r

// we dont need to touch these (Yet)
/obj/item/tank/internals/plasmaman
	icon = 'icons/obj/canisters.dmi'
	worn_icon = 'icons/mob/clothing/back.dmi'
	lefthand_file = 'icons/mob/inhands/equipment/tanks_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/tanks_righthand.dmi'



/// Greyscale setup
/datum/greyscale_config/handheld_atmos_tank
	expected_colors = 2
	name = "Handheld Atmos Tank"
	icon_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items.dmi'
	json_config = 'modular_skyraptor/modules/aesthetics/moremospherics/greyscales/tank_inventory.json'

/datum/greyscale_config/handheld_atmos_tank/held_l
	name = "Left Held Atmos Tank"
	icon_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_lh.dmi'

/datum/greyscale_config/handheld_atmos_tank/held_r
	name = "Right Held Atmos Tank"
	icon_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_rh.dmi'

/datum/greyscale_config/handheld_atmos_tank/worn
	name = "Worn Atmos Tank"
	icon_file = 'modular_skyraptor/modules/aesthetics/moremospherics/icons/atmosia_items_suit.dmi'



/// Crafting recipes to make the greyscale ones
/datum/crafting_recipe/greyscale_the_gascan
	name = "Repaint Gas Tank"
	result = /obj/item/tank/internals/generic/greyscale
	time = 5
	reqs = list(
		/obj/item/tank/internals/generic = 1,
	)
	category = CAT_ATMOSPHERIC
	tool_behaviors = list()

/datum/crafting_recipe/greyscale_the_gascan/oxy
	reqs = list(
		/obj/item/tank/internals/oxygen = 1,
	)

/datum/crafting_recipe/greyscale_the_gascan/em
	name = "Repaint Emergency Tank"
	result = /obj/item/tank/internals/emergency_oxygen/greyscale
	reqs = list(
		/obj/item/tank/internals/emergency_oxygen = 1,
	)

/datum/crafting_recipe/greyscale_the_gascan/em/engi
	name = "Repaint Engi Tank"
	result = /obj/item/tank/internals/emergency_oxygen/engi/greyscale
	reqs = list(
		/obj/item/tank/internals/emergency_oxygen/engi = 1,
	)

/datum/crafting_recipe/greyscale_the_gascan/em/double
	name = "Repaint Double-Engi Tank"
	result = /obj/item/tank/internals/emergency_oxygen/double/greyscale
	reqs = list(
		/obj/item/tank/internals/emergency_oxygen/double = 1,
	)

/datum/crafting_recipe/double_oxytank_creation
	name = "Create Double Oxy-Tank"
	result = /obj/item/tank/internals/emergency_oxygen/double
	time = 5
	reqs = list(
		/obj/item/tank/internals/emergency_oxygen/engi = 2,
		/obj/item/stack/sticky_tape = 1,
	)
	category = CAT_ATMOSPHERIC
	tool_behaviors = list()



/// THE BIGGEST QOL FEATURE: re-greyscale ANY greyscalable item with the paintkit, or color matrix stuff at will
/obj/item/mod/paint
	var/obj/item/repainting_item = null
	var/obj/item/regreyscale_item = null

/obj/item/mod/paint/pre_attack(atom/attacked_atom, mob/living/user, params)
	var/rval = ..()
	if(!istype(attacked_atom, /obj/item/mod/control))
		if(istype(attacked_atom, /obj/item/))
			var/obj/item/smacked_item = attacked_atom
			if(smacked_item.greyscale_config != null)
				regreyscale_item = smacked_item
				var/list/allowed_configs = list()
				var/config = initial(smacked_item.greyscale_config)
				if(!config)
					return
				allowed_configs += "[config]"
				var/datum/greyscale_modify_menu/menu = new(
					src, usr, allowed_configs, CALLBACK(src, PROC_REF(recolor)),
					starting_icon_state=smacked_item.icon_state,
					starting_config=smacked_item.greyscale_config,
					starting_colors=smacked_item.greyscale_colors
				)
				menu.ui_interact(usr)
	return rval

/obj/item/mod/paint/proc/recolor(datum/greyscale_modify_menu/menu)
	regreyscale_item.set_greyscale(menu.split_colors)

/obj/item/mod/paint/pre_attack_secondary(atom/attacked_atom, mob/living/user, params)
	var/rval = ..()
	if(rval != SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		if(!istype(attacked_atom, /obj/item/))
			return rval

		var/obj/item/smacked_item = attacked_atom
		if(repainting_item)
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		repainting_item = smacked_item

		proxy_view = new()
		proxy_view.generate_view("color_matrix_proxy_[REF(user.client)]")

		proxy_view.appearance = repainting_item.appearance
		proxy_view.color = null
		proxy_view.display_to(user)
		ui_interact(user)
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/mod/paint/ui_interact(mob/user, datum/tgui/ui)
	//complete override
	if(!editing_mod && !repainting_item)
		return
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "MODpaint", name)
		ui.open()

/obj/item/mod/paint/ui_host()
	if(editing_mod)
		return editing_mod
	else if(repainting_item)
		return repainting_item
	else
		to_chat(loc, span_userdanger("Tried to use the paintkit's UI when there was no MOD or regular item targeted!"))
		return null

/obj/item/mod/paint/ui_close(mob/user)
	. = ..()
	editing_mod = null
	repainting_item = null
	QDEL_NULL(proxy_view)
	current_color = color_matrix_identity()

/obj/item/mod/paint/ui_status(mob/user)
	if(editing_mod)
		if(check_menu(editing_mod, user))
			return ..()
	if(repainting_item)
		if(check_menu(repainting_item, user))
			return ..()
	return UI_CLOSE

/obj/item/mod/paint/ui_static_data(mob/user)
	var/list/data = list()
	data["mapRef"] = proxy_view.assigned_map
	return data

/obj/item/mod/paint/ui_data(mob/user)
	var/list/data = list()
	data["currentColor"] = current_color
	return data

/obj/item/mod/paint/ui_act(action, list/params)
	//. = ..()
	if(.)
		return
	switch(action)
		if("transition_color")
			current_color = params["color"]
			animate(proxy_view, time = 0.5 SECONDS, color = current_color)
		if("confirm")
			if(length(current_color) != 20) //20 is the length of a matrix identity list
				return
			for(var/color_value in current_color)
				if(isnum(color_value))
					continue
				return
			var/total_color_value = 0
			var/list/total_colors = current_color.Copy()
			total_colors.Cut(13, length(total_colors)) // 13 to 20 are just a and c, dont want to count them
			var/red_value = current_color[1] + current_color[5] + current_color[9] //rr + gr + br
			var/green_value = current_color[2] + current_color[6] + current_color[10] //rg + gg + bg
			var/blue_value = current_color[3] + current_color[7] + current_color[11] //rb + gb + bb
			if(red_value > MODPAINT_MAX_SECTION_COLORS)
				balloon_alert(usr, "total red too high! ([red_value*100]%/[MODPAINT_MAX_SECTION_COLORS*100]%)")
				return
			else if(red_value < MODPAINT_MIN_SECTION_COLORS)
				balloon_alert(usr, "total red too low! ([red_value*100]%/[MODPAINT_MIN_SECTION_COLORS*100]%)")
				return
			if(green_value > MODPAINT_MAX_SECTION_COLORS)
				balloon_alert(usr, "total green too high! ([green_value*100]%/[MODPAINT_MAX_SECTION_COLORS*100]%)")
				return
			else if(green_value < MODPAINT_MIN_SECTION_COLORS)
				balloon_alert(usr, "total green too low! ([green_value*100]%/[MODPAINT_MIN_SECTION_COLORS*100]%)")
				return
			if(blue_value > MODPAINT_MAX_SECTION_COLORS)
				balloon_alert(usr, "total blue too high! ([blue_value*100]%/[MODPAINT_MAX_SECTION_COLORS*100]%)")
				return
			else if(blue_value < MODPAINT_MIN_SECTION_COLORS)
				balloon_alert(usr, "total blue too low! ([blue_value*100]%/[MODPAINT_MIN_SECTION_COLORS*100]%)")
				return
			for(var/color_value in total_colors)
				total_color_value += color_value
				if(color_value > MODPAINT_MAX_COLOR_VALUE)
					balloon_alert(usr, "one of colors too high! ([color_value*100]%/[MODPAINT_MAX_COLOR_VALUE*100]%")
					return
				else if(color_value < MODPAINT_MIN_COLOR_VALUE)
					balloon_alert(usr, "one of colors too low! ([color_value*100]%/[MODPAINT_MIN_COLOR_VALUE*100]%")
					return
			if(total_color_value > MODPAINT_MAX_OVERALL_COLORS)
				balloon_alert(usr, "total colors too high! ([total_color_value*100]%/[MODPAINT_MAX_OVERALL_COLORS*100]%)")
				return
			else if(total_color_value < MODPAINT_MIN_OVERALL_COLORS)
				balloon_alert(usr, "total colors too low! ([total_color_value*100]%/[MODPAINT_MIN_OVERALL_COLORS*100]%)")
				return
			if(editing_mod)
				editing_mod.set_mod_color(current_color)
			if(repainting_item)
				repainting_item.color = current_color
			SStgui.close_uis(src)

#undef AIRTANK_MAX_SAFE_PRESSURE
#undef MODPAINT_MAX_COLOR_VALUE
#undef MODPAINT_MIN_COLOR_VALUE
#undef MODPAINT_MAX_SECTION_COLORS
#undef MODPAINT_MIN_SECTION_COLORS
#undef MODPAINT_MAX_OVERALL_COLORS
#undef MODPAINT_MIN_OVERALL_COLORS

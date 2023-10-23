/obj/item/scalpel
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/cautery
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/retractor
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/hemostat
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/bonesetter
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	icon_state = "bonesetter" //idk why we need to do this, they just HAD to rename it

/obj/item/blood_filter
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/circular_saw
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/surgicaldrill
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/scalpel/advanced
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	light_color = "#AAFF00"
	light_range = 2
	lefthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/scalpel/advanced/on_transform(obj/item/source, mob/user, active)
	. = ..()
	if(active)
		set_light_range(2)
		set_light_color("#FF6600")
	else
		set_light_range(2)
		set_light_color("#AAFF00")

/obj/item/retractor/advanced
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/cautery/advanced
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'
	light_color = "#AAFF00"

/obj/item/cautery/advanced/on_transform(obj/item/source, mob/user, active)
	. = ..()
	if(active)
		//set_light_range(1)
		set_light_color("#FF6600")
	else
		//set_light_range(1)
		set_light_color("#AAFF00")

/obj/item/surgical_drapes
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/storage/medkit
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/storage/medkit/coroner
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'



/// Plumbing stuff
/datum/asset/spritesheet/plumbing/create_spritesheets()
	//load only what we need from the icon files,format is icon_file_name = list of icon_states we need from this file
	var/list/essentials = list(
		'icons/obj/medical/iv_drip.dmi' = list("plumb"),
		'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/fluid_ducts.dmi' = list("nduct"),
		'icons/hud/radial.dmi' = list(
			"plumbing_layer1",
			"plumbing_layer2",
			"plumbing_layer4",
			"plumbing_layer8",
			"plumbing_layer16",
		),
		'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/plumbers.dmi' = list(
			"synthesizer",
			"reaction_chamber",
			"grinder_chemical",
			"growing_vat",
			"fermenter",
			"pump",
			"disposal",
			"buffer",
			"manifold",
			"pipe_input",
			"filter",
			"splitter",
			"beacon",
			"pipe_output",
			"tank",
			"acclimator",
			"bottler",
			"pill_press",
			"synthesizer_soda",
			"synthesizer_booze",
			"tap_output",
		),
	)

	for(var/icon_file as anything in essentials)
		for(var/icon_state as anything in essentials[icon_file])
			Insert(sprite_name = icon_state, I = icon_file, icon_state = icon_state)

/obj/machinery/plumbing/liquid_pump
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/plumbers.dmi'

/obj/machinery/plumbing/synthesizer
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/plumbers.dmi'

/obj/machinery/plumbing
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/plumbers.dmi'

/datum/component/plumbing
	connection_icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/connects.dmi'

/obj/machinery/duct
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/fluid_ducts.dmi'

/obj/item/stack/ducts
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/hydrochem/fluid_ducts.dmi'

/obj/item/surgery_tray
	icon = 'modular_skyraptor/modules/aesthetics/oldnewsurgery/medicart.dmi'
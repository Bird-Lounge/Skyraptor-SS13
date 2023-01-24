/obj/item/scalpel
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/cautery
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/retractor
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/hemostat
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/bonesetter
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/blood_filter
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/circular_saw
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/surgicaldrill
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/scalpel/advanced
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	light_color = "#FF0000"
	lefthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/scalpel/advanced/on_transform(obj/item/source, mob/user, active)
	. = ..()
	if(active)
		set_light_range(2)
		set_light_color("#007FFF")
	else
		set_light_range(2)
		set_light_color("#FF0000")

/obj/item/retractor/advanced
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/cautery/advanced
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'

/obj/item/cautery/advanced/on_transform(obj/item/source, mob/user, active)
	. = ..()
	if(active)
		set_light_range(1)
		set_light_color("#007FFF")
	else
		set_light_range(1)
		set_light_color("#AAFF00")

/obj/item/surgical_drapes
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'

/obj/item/storage/medkit
	icon = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery.dmi'
	lefthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_l.dmi'
	righthand_file = 'modular_nk006/modules/aesthetics/oldnewsurgery/oldnewsurgery_inhand_r.dmi'
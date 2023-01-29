//SKYRAT MODULE IC-SPAWNING https://github.com/Skyrat-SS13/Skyrat-tg/pull/104
#undef WILDCARD_LIMIT_ADMIN
#define WILDCARD_LIMIT_ADMIN list(WILDCARD_NAME_ALL = list(limit = -1, usage = list()), WILDCARD_NAME_NK006 = list(limit = -1, usage = list()))

/obj/item/card/id/advanced/debug/bst
	name = "\improper Bluespace ID"
	desc = "A Bluespace ID card. Has ALL the all access, you really shouldn't have this."
	icon_state = "card_centcom"
	worn_icon_state = "card_centcom"
	assigned_icon_state = "assigned_centcom"
	trim = /datum/id_trim/admin/bst
	wildcard_slots = WILDCARD_LIMIT_ADMIN

/datum/id_trim/admin/bst
	assignment = "Bluespace Technician"
	trim_state = "trim_stationengineer"
	department_color = COLOR_BLACK
	subdepartment_color = COLOR_BLACK
	sechud_icon_state = "hudcentcom"

/obj/item/modular_computer/pda/nk006/heads/captain/bst
	name = "tech PDA"
	greyscale_colors = "#FFFFFF#AAFF00#000000#7f7f00"

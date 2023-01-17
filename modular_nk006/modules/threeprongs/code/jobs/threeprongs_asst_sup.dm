/datum/id_trim/job/nk006/asst_sup
	assignment = JOB_NK6_ASST_SUP
	intern_alt_name = "Support Cadet"
	trim_state = "trim_assistant"
	orbit_icon = "toolbox"
	sechud_icon_state = SECHUD_ASSISTANT
	minimal_access = list()
	extra_access = list(
		ACCESS_MAINT_TUNNELS,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	department_color = COLOR_NK006_SUPPORT
	subdepartment_color = COLOR_NK006_SUPPORT
	job = /datum/job/nk006/asst_sup



/datum/job/nk006/asst_sup
	title = JOB_NK6_ASST_SUP
	description = "Work with Support staff.  Break into maints and find secrets.  Steal the Culinary techs' booze."
	faction = FACTION_STATION
	total_positions = 5
	spawn_positions = 5
	supervisors = "The Captain, Heads of Staff"
	//selection_color = "#ff6600"
	minimal_player_age = 0
	exp_requirements = 0
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_ASST_SUP"

	outfit = /datum/outfit/job/nk006/asst_sup
	plasmaman_outfit = /datum/outfit/plasmaman
	
	departments_list = list(
		/datum/job_department/nk006/support,
		)

	paycheck = PAYCHECK_LOWER
	paycheck_department = ACCOUNT_CIV

	display_order = JOB_DISPLAY_ORDER_ASSISTANT
	department_for_prefs = /datum/job_department/nk006/support

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Roving Diplomat"
	
	tgjob = 0

/datum/outfit/job/nk006/asst_sup
	name = JOB_NK6_ASST_SUP
	jobtype = /datum/job/nk006/asst_sup

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/asst_sup
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support
	head = /obj/item/clothing/head/soft/orange
	ears = /obj/item/radio/headset/nk006/headset_support
	l_pocket = /obj/item/modular_computer/pda/nk006/support
	pda_slot = ITEM_SLOT_LPOCKET
	r_pocket = /obj/item/clothing/gloves/color/yellow

	backpack = /obj/item/storage/backpack/nk006/support
	satchel = /obj/item/storage/backpack/satchel/nk006/support
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/support
	
	box = /obj/item/storage/box/survival/engineer

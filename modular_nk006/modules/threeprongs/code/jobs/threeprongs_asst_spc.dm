/datum/id_trim/job/nk006/asst_spc
	assignment = JOB_NK6_ASST_SPC
	intern_alt_name = "Specialist Cadet"
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
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_SPECIALIST
	job = /datum/job/nk006/asst_spc



/datum/job/nk006/asst_spc
	title = JOB_NK6_ASST_SPC
	description = "Work with Specialists.  Make loads of drugs.  Enslave some cyborgs."
	faction = FACTION_STATION
	total_positions = 5
	spawn_positions = 5
	supervisors = "The Captain, Heads of Staff"
	//selection_color = "#aaff00"
	minimal_player_age = 0
	exp_requirements = 0
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_ASST_SPC"

	outfit = /datum/outfit/job/nk006/asst_spc
	plasmaman_outfit = /datum/outfit/plasmaman
	
	departments_list = list(
		/datum/job_department/nk006/specialist,
		)

	paycheck = PAYCHECK_LOWER
	paycheck_department = ACCOUNT_CIV

	display_order = JOB_DISPLAY_ORDER_ASSISTANT
	department_for_prefs = /datum/job_department/nk006/specialist

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Roving Diplomat"
	
	tgjob = 0

/datum/outfit/job/nk006/asst_spc
	name = JOB_NK6_ASST_SPC
	jobtype = /datum/job/nk006/asst_spc

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/asst_spc
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist
	head = /obj/item/clothing/head/soft/green
	ears = /obj/item/radio/headset/nk006/headset_specialist
	l_pocket = /obj/item/modular_computer/pda/nk006/specialist
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/specialist
	satchel = /obj/item/storage/backpack/satchel/nk006/specialist
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/specialist

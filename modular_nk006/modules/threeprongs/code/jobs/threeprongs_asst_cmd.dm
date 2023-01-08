/datum/job/nk006/asst_cmd
	title = JOB_NK6_ASST_CMD
	description = "Work with Command staff.  Go on away missions.  Argue with Security."
	faction = FACTION_STATION
	total_positions = 5
	spawn_positions = 5
	supervisors = "The Captain, Heads of Staff"
	selection_color = "#6600ff"
	minimal_player_age = 0
	exp_requirements = 0
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_ASST_CMD"

	outfit = /datum/outfit/job/nk006/asst_cmd
	plasmaman_outfit = /datum/outfit/plasmaman
	
	departments_list = list(
		/datum/job_department/nk006/command,
		)

	paycheck = PAYCHECK_LOWER
	paycheck_department = ACCOUNT_CIV

	display_order = JOB_DISPLAY_ORDER_ASSISTANT
	department_for_prefs = /datum/job_department/nk006/command

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Roving Diplomat"
	
	tgjob = 0

/datum/outfit/job/nk006/asst_cmd
	name = JOB_NK6_ASST_CMD
	jobtype = /datum/job/nk006/asst_cmd

	//id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/assistant
	uniform = /obj/item/clothing/under/trek/nk006_cmd
	belt = /obj/item/storage/belt/nk006/command
	ears = /obj/item/radio/headset/nk006/headset_command
	l_pocket = /obj/item/modular_computer/pda/nk006/command

	backpack = /obj/item/storage/backpack/nk006/command
	satchel = /obj/item/storage/backpack/satchel/nk006/command
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/command

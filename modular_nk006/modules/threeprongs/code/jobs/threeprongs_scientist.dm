/datum/id_trim/job/nk006/scientist
	assignment = JOB_NK6_SCI
	intern_alt_name = "Asst. Science Officer"
	trim_state = "trim_scientist"
	orbit_icon = "flask"
	sechud_icon_state = SECHUD_SCIENTIST
	minimal_access = list(
		ACCESS_NK006_COMMON,
		ACCESS_NK006_SPC,
		ACCESS_NK006_BIOLOGY,
		)
	extra_access = list(
		ACCESS_NK006_MEDICAL,
		ACCESS_NK006_ATMOS,
		)
	template_access = list(
		ACCESS_NK006_HEAD_CAP,
		ACCESS_NK006_CHANGEIDS,
		ACCESS_NK006_HEAD_RD,
		)
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_SCIALT
	job = /datum/job/nk006/scientist



/datum/job/nk006/scientist
	title = JOB_NK6_SCI
	description = "Upgrade things.  Scan things.  ERP in maints because your job is boring."
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 3
	supervisors = "The Captain, The RD."
	//selection_color = "#aaff00"
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_SCI"

	outfit = /datum/outfit/job/nk006/scientist
	plasmaman_outfit = /datum/outfit/plasmaman

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/science,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SCI

	display_order = JOB_DISPLAY_ORDER_SCIENTIST
	bounty_types = CIV_JOB_SCI

	department_for_prefs = /datum/job_department/nk006/specialist/science

	family_heirlooms = list(/obj/item/toy/plush/slimeplushie)

	mail_goodies = list(
		/obj/item/raw_anomaly_core/random = 10,
		/obj/item/disk/tech_disk/spaceloot = 2,
		/obj/item/camera_bug = 1
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Common Wizard"
	job_tone = "boom"

	tgjob = 0

/datum/outfit/job/nk006/scientist
	name = JOB_NK6_SCI
	jobtype = /datum/job/nk006/scientist

	id = /obj/item/card/id/advanced/silver/nk006
	id_trim = /datum/id_trim/job/nk006/scientist
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist
	//head = /obj/item/clothing/head/soft/green
	ears = /obj/item/radio/headset/nk006/headset_specialist
	l_pocket = /obj/item/modular_computer/pda/nk006/science
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/sci
	satchel = /obj/item/storage/backpack/satchel/nk006/sci
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/sci

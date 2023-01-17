/datum/id_trim/job/nk006/matsci
	assignment = JOB_NK6_MATSCI
	intern_alt_name = "Asst. Materials Scientist"
	trim_state = "trim_roboticist"
	orbit_icon = "battery-half"
	sechud_icon_state = SECHUD_ROBOTICIST
	minimal_access = list(
		ACCESS_AUX_BASE,
		ACCESS_MECH_SCIENCE,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MORGUE,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS,
		ACCESS_SCIENCE,
		ACCESS_TECH_STORAGE,
		ACCESS_ORDNANCE,
		ACCESS_ORDNANCE_STORAGE,
		)
	extra_access = list(
		ACCESS_GENETICS,
		ACCESS_XENOBIOLOGY,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_RD,
		ACCESS_CE,
		)
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_SUPPORT
	job = /datum/job/nk006/matsci



/datum/job/nk006/matsci
	title = JOB_NK6_MATSCI
	description = "Create horrifying warcrimes in a bottle.  Build an army of cyborgs.  Get shot to shit by the AI for giving the Supermatter technicians Proto-Nitrate and arcing every APC."
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 3
	supervisors = "The Captain, The RD, The CE"
	//selection_color = "#aaff00"
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_MATSCI"

	outfit = /datum/outfit/job/nk006/matsci
	plasmaman_outfit = /datum/outfit/plasmaman

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/science,
		/datum/job_department/nk006/support/engineering,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SCI

	display_order = JOB_DISPLAY_ORDER_ROBOTICIST
	bounty_types = CIV_JOB_ROBO

	department_for_prefs = /datum/job_department/nk006/specialist/science

	family_heirlooms = list(/obj/item/toy/plush/pkplush)

	mail_goodies = list(
		/obj/item/storage/box/flashes = 20,
		/obj/item/stack/sheet/iron/twenty = 15,
		/obj/item/modular_computer/laptop = 5
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Mechanical Mage"

	tgjob = 0

/datum/outfit/job/nk006/matsci
	name = JOB_NK6_MATSCI
	jobtype = /datum/job/nk006/matsci

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/matsci
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/support/engineer
	//head = /obj/item/clothing/head/soft/green
	ears = /obj/item/radio/headset/nk006/headset_specialist
	l_pocket = /obj/item/modular_computer/pda/nk006/science/matsci
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/sci
	satchel = /obj/item/storage/backpack/satchel/nk006/sci
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/sci

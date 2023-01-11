/datum/id_trim/job/nk006/emt
	assignment = JOB_NK6_EMT
	intern_alt_name = "Paramedic in-Training"
	trim_state = "trim_paramedic"
	orbit_icon = "truck-medical"
	sechud_icon_state = SECHUD_PARAMEDIC
	minimal_access = list(
		ACCESS_CARGO,
		ACCESS_CONSTRUCTION,
		ACCESS_HYDROPONICS,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MEDICAL,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINING,
		ACCESS_MINING_STATION,
		ACCESS_MORGUE,
		ACCESS_SCIENCE,
		ACCESS_SERVICE,
		)
	extra_access = list(
		ACCESS_SURGERY,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_CMO,
		)
	department_color = COLOR_NK006_MEDICAL
	subdepartment_color = COLOR_NK006_MEDICAL
	job = /datum/job/nk006/emt



/datum/job/nk006/emt
	title = JOB_NK6_EMT
	description = "Skitter around the station and patch-up boo-boos.  Pester the First Officer for all-access.  Die alongside the Damage Control team."
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Captain, the CMO"
	selection_color = "#ff0000"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_EMT"

	outfit = /datum/outfit/job/nk006/emt
	plasmaman_outfit = /datum/outfit/plasmaman/chief_medical_officer
	
	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/medical,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_PARAMEDIC
	bounty_types = CIV_JOB_MED

	mail_goodies = list(
		/obj/item/reagent_containers/hypospray/medipen = 20,
		/obj/item/reagent_containers/hypospray/medipen/oxandrolone = 10,
		/obj/item/reagent_containers/hypospray/medipen/salacid = 10,
		/obj/item/reagent_containers/hypospray/medipen/salbutamol = 10,
		/obj/item/reagent_containers/hypospray/medipen/penacid = 10,
		/obj/item/reagent_containers/hypospray/medipen/survival/luxury = 5
	)
	family_heirlooms = list(/obj/item/storage/medkit/ancient/heirloom)

	department_for_prefs = /datum/job_department/nk006/specialist/medical

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Scouting Cleric"
	
	tgjob = 0

/datum/outfit/job/nk006/emt
	name = JOB_NK6_EMT
	jobtype = /datum/job/nk006/emt

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/emt
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/emt
	head = /obj/item/clothing/head/beret/nk006/emt
	ears = /obj/item/radio/headset/nk006/headset_med/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/medical/emt
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/medical
	satchel = /obj/item/storage/backpack/satchel/nk006/medical
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/medical
	
	box = /obj/item/storage/box/survival/medical
	skillchips = list(/obj/item/skillchip/entrails_reader)

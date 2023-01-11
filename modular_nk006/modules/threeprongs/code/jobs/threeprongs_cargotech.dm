/datum/id_trim/job/nk006/cargo
	assignment = JOB_NK6_CARGO
	intern_alt_name = "Postman"
	trim_state = "trim_cargotechnician"
	orbit_icon = "box"
	sechud_icon_state = SECHUD_CARGO_TECHNICIAN
	minimal_access = list(
		ACCESS_CARGO,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MINING,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SHIPPING,
		)
	extra_access = list(
		ACCESS_MINING,
		ACCESS_MINING_STATION,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_QM,
		)
	department_color = COLOR_NK006_CARGO
	subdepartment_color = COLOR_NK006_SUPPORT
	job = /datum/job/nk006/qm



/datum/job/nk006/cargo
	title = JOB_NK6_CARGO
	description = "Keep the crew economically viable.  Coordinate pathfinders & delivery techs to get the mail on time.  Have fun with illict shotguns."
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 2
	supervisors = "the Captain, the QM"
	selection_color = "#af7f3f"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_CARGO"

	outfit = /datum/outfit/job/nk006/cargo
	plasmaman_outfit = /datum/outfit/plasmaman/head_of_personnel
	
	departments_list = list(
		/datum/job_department/nk006/support,
		/datum/job_department/nk006/support/cargo,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_CAR

	display_order = JOB_DISPLAY_ORDER_QUARTERMASTER
	bounty_types = CIV_JOB_RANDOM

	mail_goodies = list(
		/obj/item/pizzabox = 10,
		/obj/item/stack/sheet/mineral/gold = 5,
		/obj/item/stack/sheet/mineral/uranium = 4,
		/obj/item/stack/sheet/mineral/diamond = 3,
		/obj/item/gun/ballistic/rifle/boltaction = 1
	)

	family_heirlooms = list(/obj/item/clipboard)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN | JOB_CAN_BE_INTERN
	rpg_title = "Merchant"
	
	tgjob = 0

/datum/outfit/job/nk006/cargo
	name = JOB_NK6_CARGO
	jobtype = /datum/job/nk006/cargo

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/cargo
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support/cargo
	//head = /obj/item/clothing/head/hats/nk006/cargo
	ears = /obj/item/radio/headset/nk006/headset_cargo
	l_pocket = /obj/item/modular_computer/pda/nk006/cargo
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/cargo
	satchel = /obj/item/storage/backpack/satchel/nk006/cargo
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/cargo

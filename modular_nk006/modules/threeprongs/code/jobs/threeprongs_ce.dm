/datum/id_trim/job/nk006/ce
	assignment = "Chief Engineer"
	intern_alt_name = "Assistant Chief Engineer"
	trim_state = "trim_stationengineer"
	orbit_icon = "user-astronaut"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_CHIEF_ENGINEER
	extra_wildcard_access = list()
	minimal_access = list(
		ACCESS_ATMOSPHERICS,
		ACCESS_AUX_BASE,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_CE,
		ACCESS_COMMAND,
		ACCESS_CONSTRUCTION,
		ACCESS_ENGINEERING,
		ACCESS_ENGINE_EQUIP,
		ACCESS_EVA,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_ENGINE,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINISAT,
		ACCESS_RC_ANNOUNCE,
		ACCESS_TCOMMS,
		ACCESS_TECH_STORAGE,
		)
	minimal_wildcard_access = list(
		ACCESS_CE,
		)
	extra_access = list(
		ACCESS_TELEPORTER,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		)
	department_color = COLOR_NK006_SUPPORT
	subdepartment_color = COLOR_NK006_SUPPORT
	job = /datum/job/nk006/ce



/datum/job/nk006/ce
	title = JOB_NK6_CE
	description = "Babysit the engine.  Build a new station with blackjack and hookers.  Become one with Lord Singuloth."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	selection_color = "#ff7f00"
	req_admin_notify = 1
	minimal_player_age = 7
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_ENGINEERING
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_CE"

	outfit = /datum/outfit/job/nk006/ce
	plasmaman_outfit = /datum/outfit/plasmaman
	
	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/support,
		/datum/job_department/nk006/support/engineering,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM, TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_ENGINEER
	bounty_types = CIV_JOB_ENG

	family_heirlooms = list(/obj/item/clothing/head/utility/hardhat/white, /obj/item/screwdriver, /obj/item/wrench, /obj/item/weldingtool, /obj/item/crowbar, /obj/item/wirecutters)

	mail_goodies = list(
		/obj/item/food/cracker = 25, //you know. for poly
		/obj/item/stack/sheet/mineral/diamond = 15,
		/obj/item/stack/sheet/mineral/uranium/five = 15,
		/obj/item/stack/sheet/mineral/plasma/five = 15,
		/obj/item/stack/sheet/mineral/gold = 15,
		/obj/effect/spawner/random/engineering/tool_advanced = 3
	)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Lightning Wizard"
	
	tgjob = 0

/datum/outfit/job/nk006/ce
	name = JOB_NK6_CE
	jobtype = /datum/job/nk006/ce

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/nk006/ce
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support/ce
	head = /obj/item/clothing/head/hats/nk006/ce
	ears = /obj/item/radio/headset/nk006/headset_ce/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/ce

	backpack = /obj/item/storage/backpack/nk006/ce
	satchel = /obj/item/storage/backpack/satchel/nk006/ce
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/ce
	
	box = /obj/item/storage/box/survival/engineer
	skillchips = list(/obj/item/skillchip/job/engineer)

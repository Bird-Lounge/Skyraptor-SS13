/datum/id_trim/job/nk006/damcon
	assignment = JOB_NK6_DAMCON
	intern_alt_name = "Damage Control Cadet"
	trim_state = "trim_atmospherictechnician"
	orbit_icon = "fan"
	sechud_icon_state = SECHUD_ATMOSPHERIC_TECHNICIAN
	minimal_access = list(
		ACCESS_ATMOSPHERICS,
		ACCESS_AUX_BASE,
		ACCESS_CONSTRUCTION,
		ACCESS_ENGINEERING,
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_ENGINE,
		ACCESS_MINERAL_STOREROOM,
		)
	extra_access = list(
		ACCESS_ENGINE_EQUIP,
		ACCESS_MINISAT,
		ACCESS_TCOMMS,
		ACCESS_TECH_STORAGE,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_CE,
		)
	department_color = COLOR_NK006_SUPPORT
	subdepartment_color = COLOR_NK006_MEDICAL
	job = /datum/job/nk006/damcon



/datum/job/nk006/damcon
	title = JOB_NK6_DAMCON
	description = "Repair hull breaches & vented rooms.  Fix the wiring the mice ate.  Put out horrific fires & become roast chicken."
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 3
	supervisors = "The Captain, The Chief Engineer, Engine Technicians"
	//selection_color = "#ff7f00"
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_DAMCON"

	outfit = /datum/outfit/job/nk006/damcon
	plasmaman_outfit = /datum/outfit/plasmaman
	
	departments_list = list(
		/datum/job_department/nk006/support,
		/datum/job_department/nk006/support/engineering,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_ENG

	liver_traits = list(TRAIT_ENGINEER_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN
	bounty_types = CIV_JOB_ATMOS

	family_heirlooms = list(/obj/item/clothing/head/utility/hardhat, /obj/item/screwdriver, /obj/item/wrench, /obj/item/weldingtool, /obj/item/crowbar, /obj/item/wirecutters, /obj/item/lighter, /obj/item/lighter/greyscale, /obj/item/storage/box/matches)

	mail_goodies = list(
		/obj/item/storage/box/lights/mixed = 20,
		/obj/item/lightreplacer = 10,
		/obj/item/holosign_creator/engineering = 8,
		/obj/item/clothing/head/utility/hardhat/red/upgraded = 1,
		/obj/item/rpd_upgrade/unwrench = 30,
		/obj/item/grenade/gas_crystal/crystal_foam = 10,
		/obj/item/grenade/gas_crystal/proto_nitrate_crystal = 10,
		/obj/item/grenade/gas_crystal/healium_crystal = 10,
		/obj/item/grenade/gas_crystal/nitrous_oxide_crystal = 5
	)

	department_for_prefs = /datum/job_department/nk006/support/engineering

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Aeromancer"
	
	tgjob = 0

/datum/outfit/job/nk006/damcon
	name = JOB_NK6_DAMCON
	jobtype = /datum/job/nk006/damcon

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/damcon
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support/damcon
	head = /obj/item/clothing/head/utility/hardhat/red
	ears = /obj/item/radio/headset/nk006/headset_engineer
	l_pocket = /obj/item/modular_computer/pda/nk006/engineering/damcon
	pda_slot = ITEM_SLOT_LPOCKET
	r_pocket = /obj/item/clothing/gloves/color/yellow

	backpack = /obj/item/storage/backpack/nk006/engineer
	satchel = /obj/item/storage/backpack/satchel/nk006/engineer
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/engineer
	
	box = /obj/item/storage/box/survival/engineer
	skillchips = list(/obj/item/skillchip/job/engineer)

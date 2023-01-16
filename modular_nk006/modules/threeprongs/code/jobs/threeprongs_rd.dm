/datum/id_trim/job/nk006/rd
	assignment = JOB_NK6_RD
	intern_alt_name = "Assistant Research Directory"
	trim_state = "trim_scientist"
	orbit_icon = "user-graduate"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_RESEARCH_DIRECTOR
	minimal_access = list(
		ACCESS_AI_UPLOAD,
		ACCESS_AUX_BASE,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_COMMAND,
		ACCESS_CONSTRUCTION,
		ACCESS_EVA,
		ACCESS_GATEWAY,
		ACCESS_GENETICS,
		ACCESS_KEYCARD_AUTH,
		ACCESS_NETWORK,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_ENGINE,
		ACCESS_MECH_MINING,
		ACCESS_MECH_SECURITY,
		ACCESS_MECH_SCIENCE,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINISAT,
		ACCESS_MORGUE,
		ACCESS_ORDNANCE,
		ACCESS_ORDNANCE_STORAGE,
		ACCESS_RC_ANNOUNCE,
		ACCESS_RESEARCH,
		ACCESS_ROBOTICS,
		ACCESS_SCIENCE,
		ACCESS_TECH_STORAGE,
		ACCESS_TELEPORTER,
		ACCESS_XENOBIOLOGY,
		)
	minimal_wildcard_access = list(
		ACCESS_RD,
		)
	extra_access = list()
	extra_wildcard_access = list()
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		)
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_SPECIALIST
	job = /datum/job/nk006/rd



/datum/job/nk006/rd
	title = JOB_NK6_RD
	description = "Run around and do SCIENCE.  Explore alien worlds when your Pathfinders and Biologists won't.  Get chestbursted."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	selection_color = "#aaff00"
	req_admin_notify = 1
	minimal_player_age = 7
	exp_required_type_department = EXP_TYPE_SCIENCE
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_RD"

	outfit = /datum/outfit/job/nk006/rd
	plasmaman_outfit = /datum/outfit/plasmaman/research_director

	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/science,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SCI

	liver_traits = list(TRAIT_ROYAL_METABOLISM, TRAIT_BALLMER_SCIENTIST)

	display_order = JOB_DISPLAY_ORDER_RESEARCH_DIRECTOR
	bounty_types = CIV_JOB_SCI

	mail_goodies = list(
		/obj/item/storage/box/monkeycubes = 30,
		/obj/item/circuitboard/machine/sleeper/party = 3,
		/obj/item/borg/upgrade/ai = 2
	)
	family_heirlooms = list(/obj/item/toy/plush/slimeplushie)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Archmage"
	voice_of_god_power = 1.4 //Command staff has authority

	tgjob = 0

/datum/job/nk006/rd/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"

/datum/outfit/job/nk006/rd
	name = JOB_NK6_RD
	jobtype = /datum/job/nk006/rd

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/nk006/rd
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/rd
	head = /obj/item/clothing/head/hats/nk006/rd
	ears = /obj/item/radio/headset/nk006/headset_rd/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/rd
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/rd
	satchel = /obj/item/storage/backpack/satchel/nk006/rd
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/rd

	skillchips = list(/obj/item/skillchip/job/research_director)

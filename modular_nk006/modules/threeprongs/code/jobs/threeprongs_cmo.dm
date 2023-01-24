/datum/id_trim/job/nk006/cmo
	assignment = JOB_NK6_CMO
	intern_alt_name = "Assistant Chief Medical Officer"
	trim_state = "trim_medicaldoctor"
	orbit_icon = "user-md"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_CHIEF_MEDICAL_OFFICER
	extra_wildcard_access = list()
	minimal_access = list(
		ACCESS_NK006_HEAD_CMO,
		ACCESS_NK006_HEAD_ANY,
		ACCESS_NK006_COMMON,
		ACCESS_NK006_SPC,
		ACCESS_NK006_MEDICAL,
		ACCESS_NK006_BIOLOGY,
		)
	minimal_wildcard_access = list(
		ACCESS_NK006_HEAD_CMO,
		)
	extra_access = list(
		ACCESS_TELEPORTER,
		)
	template_access = list(
		ACCESS_NK006_HEAD_CAP,
		ACCESS_NK006_CHANGEIDS,
		)
	department_color = COLOR_NK006_MEDICAL
	subdepartment_color = COLOR_NK006_MEDICAL
	job = /datum/job/nk006/cmo



/datum/job/nk006/cmo
	title = JOB_NK6_CMO
	description = "Oversee the lemmings of your crew.  Kiss everybody's boo-boos.  Get driven to alcohol and drugs."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	//selection_color = "#ff0000"
	req_admin_notify = 1
	minimal_player_age = 7
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_MEDICAL
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_CMO"

	outfit = /datum/outfit/job/nk006/cmo
	plasmaman_outfit = /datum/outfit/plasmaman/chief_medical_officer

	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/medical,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM, TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER
	bounty_types = CIV_JOB_MED

	mail_goodies = list(
		/obj/effect/spawner/random/medical/organs = 10,
		/obj/effect/spawner/random/medical/memeorgans = 8,
		/obj/effect/spawner/random/medical/surgery_tool_advanced = 4,
		/obj/effect/spawner/random/medical/surgery_tool_alien = 1
	)
	family_heirlooms = list(/obj/item/storage/medkit/ancient/heirloom, /obj/item/scalpel, /obj/item/hemostat, /obj/item/circular_saw, /obj/item/retractor, /obj/item/cautery)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "High Cleric"
	voice_of_god_power = 1.4 //Command staff has authority

	tgjob = 0

/datum/job/nk006/cmo/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"

/datum/outfit/job/nk006/cmo
	name = JOB_NK6_CMO
	jobtype = /datum/job/nk006/cmo

	id = /obj/item/card/id/advanced/gold/nk006
	id_trim = /datum/id_trim/job/nk006/cmo
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/cmo
	head = /obj/item/clothing/head/hats/nk006/cmo
	ears = /obj/item/radio/headset/nk006/headset_cmo/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/cmo
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/cmo
	satchel = /obj/item/storage/backpack/satchel/nk006/cmo
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/cmo

	box = /obj/item/storage/box/survival/medical
	skillchips = list(/obj/item/skillchip/entrails_reader)

/datum/id_trim/job/nk006/qm
	assignment = JOB_NK6_QM
	intern_alt_name = "Quartermaster"
	trim_state = "trim_quartermaster"
	orbit_icon = "sack-dollar"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_QUARTERMASTER
	minimal_access = list(
		ACCESS_NK006_HEAD_QM,
		ACCESS_NK006_HEAD_ANY,
		ACCESS_NK006_COMMON,
		ACCESS_NK006_CMD,
		ACCESS_NK006_SUP,
		ACCESS_NK006_SPC,
		ACCESS_NK006_CARGO,
		)
	extra_access = list()
	minimal_wildcard_access = list(
		ACCESS_NK006_HEAD_QM,
	)
	template_access = list(
		ACCESS_NK006_HEAD_CAP,
		ACCESS_NK006_CHANGEIDS,
	)
	department_color = COLOR_NK006_CARGO
	subdepartment_color = COLOR_NK006_CARGO
	job = /datum/job/nk006/qm



/datum/job/nk006/qm
	title = JOB_NK6_QM
	description = "Keep the crew economically viable.  Coordinate pathfinders & delivery techs to get the mail on time.  Have fun with illict shotguns."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	//selection_color = "#af7f3f"
	req_admin_notify = 1
	minimal_player_age = 7
	exp_required_type_department = EXP_TYPE_SUPPLY
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_QM"

	outfit = /datum/outfit/job/nk006/qm
	plasmaman_outfit = /datum/outfit/plasmaman/head_of_personnel

	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/support,
		/datum/job_department/nk006/support/cargo,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_CAR

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_QUARTERMASTER
	bounty_types = CIV_JOB_RANDOM

	mail_goodies = list(
		/obj/item/circuitboard/machine/emitter = 3
	)

	family_heirlooms = list(/obj/item/stamp, /obj/item/stamp/denied)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Steward"
	voice_of_god_power = 1.4 //Command staff has authority, and QM _is_ command staff.

	tgjob = 0

/datum/job/nk006/qm/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"

/datum/outfit/job/nk006/qm
	name = JOB_NK6_QM
	jobtype = /datum/job/nk006/qm

	id = /obj/item/card/id/advanced/gold/nk006
	id_trim = /datum/id_trim/job/nk006/qm
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support/qm
	head = /obj/item/clothing/head/hats/nk006/qm
	ears = /obj/item/radio/headset/nk006/headset_qm/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/qm
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/qm
	satchel = /obj/item/storage/backpack/satchel/nk006/qm
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/qm

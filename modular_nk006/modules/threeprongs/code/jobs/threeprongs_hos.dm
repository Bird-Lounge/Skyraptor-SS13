/datum/id_trim/job/nk006/hos
	assignment = JOB_NK6_HOS
	intern_alt_name = "Assistant Chief of Security"
	trim_state = "trim_securityofficer"
	orbit_icon = "user-shield"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_HEAD_OF_SECURITY
	extra_access = list(ACCESS_TELEPORTER)
	extra_wildcard_access = list()
	minimal_access = list(
		ACCESS_NK006_HEAD_HOS,
		ACCESS_NK006_HEAD_ANY,
		ACCESS_NK006_COMMON,
		ACCESS_NK006_CMD,
		ACCESS_NK006_SECURITY,
		)
	minimal_wildcard_access = list(
		ACCESS_NK006_HEAD_HOS,
		)
	template_access = list(
		ACCESS_NK006_HEAD_CAP,
		ACCESS_NK006_CHANGEIDS,
		)
	department_color = COLOR_NK006_SECURITY
	subdepartment_color = COLOR_NK006_SECURITY
	job = /datum/job/nk006/hos



/datum/job/nk006/hos
	title = JOB_NK6_HOS
	description = "Protect the heads of staff. Oversee your blueshirts.  Die in a prison riot."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	//selection_color = "#007fff"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_SECURITY
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_HOS"

	outfit = /datum/outfit/job/nk006/hos
	plasmaman_outfit = /datum/outfit/plasmaman/head_of_security

	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/command,
		/datum/job_department/nk006/command/security,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM, TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_SECURITY
	bounty_types = CIV_JOB_SEC

	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "High Guard"
	voice_of_god_power = 1.4 //Command staff has authority

	tgjob = 0

/datum/job/nk006/hos/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"

/datum/outfit/job/nk006/hos
	name = JOB_NK6_HOS
	jobtype = /datum/job/nk006/hos

	id = /obj/item/card/id/advanced/gold/nk006
	id_trim = /datum/id_trim/job/nk006/hos
	uniform = /obj/item/clothing/under/trek/nk006_cmd
	belt = /obj/item/storage/belt/nk006/command/hos
	head = /obj/item/clothing/head/hats/nk006/hos
	ears = /obj/item/radio/headset/nk006/headset_hos/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/hos
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/hos
	satchel = /obj/item/storage/backpack/satchel/nk006/hos
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/hos

	box = /obj/item/storage/box/survival/security
	implants = list(/obj/item/implant/mindshield)

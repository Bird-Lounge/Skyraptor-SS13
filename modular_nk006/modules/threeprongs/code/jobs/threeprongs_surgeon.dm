/datum/id_trim/job/nk006/surgeon
	assignment = JOB_NK6_SURGEON
	intern_alt_name = "M.D. in-Training"
	trim_state = "trim_medicaldoctor"
	orbit_icon = "staff-snake"
	sechud_icon_state = SECHUD_MEDICAL_DOCTOR
	extra_access = list(
		ACCESS_NK006_COMMON,
		ACCESS_NK006_SPC,
		ACCESS_NK006_MEDICAL,
		)
	minimal_access = list(
		ACCESS_NK006_BIOLOGY,
		)
	template_access = list(
		ACCESS_NK006_HEAD_CAP,
		ACCESS_NK006_CHANGEIDS,
		ACCESS_NK006_HEAD_CMO,
		)
	department_color = COLOR_NK006_MEDICAL
	subdepartment_color = COLOR_NK006_SPECIALIST
	job = /datum/job/nk006/surgeon



/datum/job/nk006/surgeon
	title = JOB_NK6_SURGEON
	description = "Patch up your crewmates.  Do chemistry when you get bored.  Run around and health-scan everyone in sight."
	faction = FACTION_STATION
	total_positions = 5
	spawn_positions = 3
	supervisors = "the Captain, the CMO"
	//selection_color = "#ff0000"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_SURGEON"

	outfit = /datum/outfit/job/nk006/surgeon
	plasmaman_outfit = /datum/outfit/plasmaman/chief_medical_officer

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/medical,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_MEDICAL_DOCTOR
	bounty_types = CIV_JOB_MED

	mail_goodies = list(
		/obj/item/healthanalyzer/advanced = 15,
		/obj/item/scalpel/advanced = 6,
		/obj/item/retractor/advanced = 6,
		/obj/item/cautery/advanced = 6,
		/obj/item/reagent_containers/cup/bottle/formaldehyde = 6,
		/obj/effect/spawner/random/medical/organs = 5,
		/obj/effect/spawner/random/medical/memeorgans = 1
	)
	family_heirlooms = list(/obj/item/storage/medkit/ancient/heirloom, /obj/item/scalpel, /obj/item/hemostat, /obj/item/circular_saw, /obj/item/retractor, /obj/item/cautery)

	department_for_prefs = /datum/job_department/nk006/specialist/medical

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Cleric"

	tgjob = 0

/datum/outfit/job/nk006/surgeon
	name = JOB_NK6_SURGEON
	jobtype = /datum/job/nk006/surgeon

	id = /obj/item/card/id/advanced/silver/nk006
	id_trim = /datum/id_trim/job/nk006/surgeon
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/surgeon
	head = /obj/item/clothing/head/beret/nk006/surgeon
	ears = /obj/item/radio/headset/nk006/headset_med
	l_pocket = /obj/item/modular_computer/pda/nk006/medical
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/medical
	satchel = /obj/item/storage/backpack/satchel/nk006/medical
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/medical

	box = /obj/item/storage/box/survival/medical
	skillchips = list(/obj/item/skillchip/entrails_reader)

/datum/id_trim/job/nk006/biologist
	assignment = JOB_NK6_BIO
	intern_alt_name = "Asst. Biologist"
	trim_state = "trim_geneticist"
	orbit_icon = "dna"
	sechud_icon_state = SECHUD_GENETICIST
	minimal_access = list(
		ACCESS_MECH_MEDICAL,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_VIROLOGY,
		ACCESS_GENETICS,
		ACCESS_MECH_SCIENCE,
		ACCESS_MORGUE,
		ACCESS_RESEARCH,
		ACCESS_SCIENCE,
		)
	extra_access = list(
		ACCESS_PLUMBING,
		ACCESS_MORGUE,
		ACCESS_SURGERY,
		ACCESS_ROBOTICS,
		ACCESS_TECH_STORAGE,
		ACCESS_XENOBIOLOGY,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_CMO,
		ACCESS_RD,
		)
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_MEDICAL
	job = /datum/job/nk006/biologist



/datum/job/nk006/biologist
	title = JOB_NK6_BIO
	description = "Cure alien diseases.  Cure aliens OF diseases.  Play with your DNA and become a horrifying mutant."
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 3
	supervisors = "The Captain, The RD, The CMO"
	selection_color = "#aaff00"
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_BIO"

	outfit = /datum/outfit/job/nk006/bioligist
	plasmaman_outfit = /datum/outfit/plasmaman

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/science,
		/datum/job_department/nk006/specialist/medical,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SCI

	display_order = JOB_DISPLAY_ORDER_VIROLOGIST
	bounty_types = CIV_JOB_VIRO

	department_for_prefs = /datum/job_department/nk006/specialist/science

	family_heirlooms = list(/obj/item/reagent_containers/syringe)

	mail_goodies = list(
		/obj/item/reagent_containers/cup/bottle/random_virus = 15,
		/obj/item/reagent_containers/cup/bottle/formaldehyde = 10,
		/obj/item/reagent_containers/cup/bottle/synaptizine = 10,
		/obj/item/stack/sheet/mineral/plasma = 10,
		/obj/item/stack/sheet/mineral/uranium = 5,
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Plague Mage"

	tgjob = 0

/datum/outfit/job/nk006/bioligist
	name = JOB_NK6_BIO
	jobtype = /datum/job/nk006/biologist

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/biologist
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist
	//head = /obj/item/clothing/head/soft/green
	ears = /obj/item/radio/headset/nk006/headset_bio
	l_pocket = /obj/item/modular_computer/pda/nk006/science/bio
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/bio
	satchel = /obj/item/storage/backpack/satchel/nk006/bio
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/bio

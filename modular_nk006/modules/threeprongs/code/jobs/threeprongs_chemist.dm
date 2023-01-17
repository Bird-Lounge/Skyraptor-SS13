/datum/id_trim/job/nk006/chemist
	assignment = JOB_NK6_CHEMIST
	intern_alt_name = "Pharmacist"
	trim_state = "trim_chemist"
	orbit_icon = "prescription-bottle"
	sechud_icon_state = SECHUD_CHEMIST
	minimal_access = list(
		ACCESS_MECH_MEDICAL,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_PHARMACY,
		ACCESS_PLUMBING,
		)
	extra_access = list(
		ACCESS_MORGUE,
		ACCESS_SURGERY,
		ACCESS_VIROLOGY,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_CMO,
		)
	department_color = COLOR_NK006_MEDICAL
	subdepartment_color = COLOR_NK006_SCIALT
	job = /datum/job/nk006/chemist



/datum/job/nk006/chemist
	title = JOB_NK6_CHEMIST
	description = "Cook up healing meds.  Create nightmares for the Biologists.  Get gibbed by your failed methamphetamine recipe."
	faction = FACTION_STATION
	spawn_positions = 2
	total_positions = 3
	supervisors = "the Captain, the CMO, the RD"
	selection_color = "#7fff00"
	exp_requirements = 60
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_CHEMIST"

	outfit = /datum/outfit/job/nk006/chemist
	plasmaman_outfit = /datum/outfit/plasmaman/chemist

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/medical,
		/datum/job_department/nk006/specialist/science,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MED

	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CHEMIST
	bounty_types = CIV_JOB_CHEM

	mail_goodies = list(
		/obj/item/reagent_containers/cup/bottle/flash_powder = 15,
		/obj/item/reagent_containers/cup/bottle/exotic_stabilizer = 5,
		/obj/item/reagent_containers/cup/bottle/leadacetate = 5,
		/obj/item/paper/secretrecipe = 1
	)
	family_heirlooms = list(/obj/item/book/manual/wiki/chemistry, /obj/item/ph_booklet)

	department_for_prefs = /datum/job_department/nk006/specialist/medical

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Alchemist"

	tgjob = 0

/datum/outfit/job/nk006/chemist
	name = JOB_NK6_CHEMIST
	jobtype = /datum/job/nk006/chemist

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/chemist
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/bio_chem
	//head = /obj/item/clothing/head/beret/nk006/chemist
	ears = /obj/item/radio/headset/nk006/headset_bio/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/medical/chemist
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/medical
	satchel = /obj/item/storage/backpack/satchel/nk006/medical
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/medical

	box = /obj/item/storage/box/survival/medical

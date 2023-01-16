/datum/id_trim/job/nk006/botanist
	assignment = JOB_NK6_BOTANY
	intern_alt_name = "Gardener"
	trim_state = "trim_botanist"
	orbit_icon = "seedling"
	sechud_icon_state = SECHUD_BOTANIST
	minimal_access = list(
		ACCESS_HYDROPONICS,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SERVICE,
		)
	extra_access = list(
		ACCESS_BAR,
		ACCESS_KITCHEN,
		ACCESS_MORGUE,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	department_color = COLOR_NK006_SPECIALIST
	subdepartment_color = COLOR_NK006_SERVICE
	job = /datum/job/nk006/botanist



/datum/job/nk006/botanist
	title = JOB_NK6_BOTANY
	description = "Grow plants.  Create organic warcrimes.  Obliterate the blob."
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 3
	supervisors = "The Captain, The RD, the HOP."
	selection_color = "#00ff00"
	config_tag = "NK006_BOTANY"

	outfit = /datum/outfit/job/nk006/botanist
	plasmaman_outfit = /datum/outfit/plasmaman

	departments_list = list(
		/datum/job_department/nk006/specialist,
		/datum/job_department/nk006/specialist/science,
		/datum/job_department/nk006/support/service,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV

	display_order = JOB_DISPLAY_ORDER_BOTANIST
	bounty_types = CIV_JOB_GROW

	department_for_prefs = /datum/job_department/nk006/specialist

	family_heirlooms = list(/obj/item/cultivator,/obj/item/reagent_containers/cup/watering_can/wood,/obj/item/toy/plush/beeplushie)

	mail_goodies = list(
		/obj/item/reagent_containers/cup/bottle/mutagen = 20,
		/obj/item/reagent_containers/cup/bottle/saltpetre = 20,
		/obj/item/reagent_containers/cup/bottle/diethylamine = 20,
		/obj/item/gun/energy/floragun = 10,
		/obj/item/reagent_containers/cup/watering_can/advanced = 10,
		/obj/effect/spawner/random/food_or_drink/seed_rare = 5,// These are strong, rare seeds, so use sparingly.
		/obj/item/food/monkeycube/bee = 2
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Gardener"

	tgjob = 0

/datum/outfit/job/nk006/botanist
	name = JOB_NK6_BOTANY
	jobtype = /datum/job/nk006/botanist

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/nk006/botanist
	uniform = /obj/item/clothing/under/trek/nk006_spc
	belt = /obj/item/storage/belt/nk006/specialist/botany
	//head = /obj/item/clothing/head/soft/green
	ears = /obj/item/radio/headset/nk006/headset_specialist
	l_pocket = /obj/item/modular_computer/pda/nk006/science
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/botany
	satchel = /obj/item/storage/backpack/satchel/nk006/botany
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/botany

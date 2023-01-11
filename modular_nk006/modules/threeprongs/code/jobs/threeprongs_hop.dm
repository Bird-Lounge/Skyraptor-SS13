/datum/id_trim/job/nk006/hop
	assignment = JOB_NK6_HOP
	intern_alt_name = "Second Officer"
	trim_state = "trim_headofpersonnel"
	orbit_icon = "dog"
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_HEAD_OF_PERSONNEL
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		)
	department_color = COLOR_NK006_SERVICE
	subdepartment_color = COLOR_NK006_SERVICE
	job = /datum/job/nk006/hop



/datum/job/nk006/hop
	title = JOB_NK6_HOP
	description = "Give everyone all-access.  Become the other Support heads when they go missing.  Get unwillingly promoted when the Captain dies on a diplomatic mission."
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Captain"
	selection_color = "#00ff00"
	req_admin_notify = 1
	minimal_player_age = 10
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_SERVICE
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "NK006_HOP"

	outfit = /datum/outfit/job/nk006/hop
	plasmaman_outfit = /datum/outfit/plasmaman/head_of_personnel
	
	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/support,
		/datum/job_department/nk006/support/service,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV

	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL
	bounty_types = CIV_JOB_RANDOM

	mail_goodies = list(
		/obj/item/card/id/advanced/silver = 10,
		/obj/item/stack/sheet/bone = 5
	)

	family_heirlooms = list(/obj/item/reagent_containers/cup/glass/trophy/silver_cup)

	department_for_prefs = /datum/job_department/nk006/heads

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Commander-in-Chief"
	voice_of_god_power = 1.4 //Command staff has authority
	
	tgjob = 0

/datum/job/nk006/hop/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"

/datum/job/nk006/hop/get_mail_goodies(mob/recipient)
	. = ..()
	//This code should eventually be pulled to all heads to let them revive their heads.
	//Also serves as a pseudo-deathrattle for stolen headpets; if you get strange reagent in the mail, you know they're gone and it's time to quest for VENGEANCE.
	for(var/mob/living/basic/pet/dog/corgi/ian/staff_pet in GLOB.dead_mob_list)
		. += list(/datum/reagent/medicine/strange_reagent = 20)
		break

/datum/outfit/job/nk006/hop
	name = JOB_NK6_HOP
	jobtype = /datum/job/nk006/hop

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/nk006/hop
	uniform = /obj/item/clothing/under/trek/nk006_sup
	belt = /obj/item/storage/belt/nk006/support/hop
	head = /obj/item/clothing/head/hats/nk006/hop
	ears = /obj/item/radio/headset/nk006/headset_hop/alt
	l_pocket = /obj/item/modular_computer/pda/nk006/heads/hop
	pda_slot = ITEM_SLOT_LPOCKET

	backpack = /obj/item/storage/backpack/nk006/hop
	satchel = /obj/item/storage/backpack/satchel/nk006/hop
	duffelbag = /obj/item/storage/backpack/duffelbag/nk006/hop

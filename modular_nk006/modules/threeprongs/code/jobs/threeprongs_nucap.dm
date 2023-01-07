/datum/job/nk006/nucap
	title = JOB_NK6_NUCAP
	description = "Lead the crew.  Argue with your first officer.  Die horribly on a diplomatic mission."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("CentCom")
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "Nanotrasen officials and Space Law"
	selection_color = "#6600ff"
	req_admin_notify = 1
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "CAPTAIN"

	outfit = /datum/outfit/job/nk006/nucap
	plasmaman_outfit = /datum/outfit/plasmaman/captain
	departments_list = list(
		/datum/job_department/nk006/heads,
		/datum/job_department/nk006/command,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC
	
	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN
	department_for_prefs = /datum/job_department/nk006/heads

	family_heirlooms = list(/obj/item/reagent_containers/cup/glass/flask/gold)

	mail_goodies = list(
		/obj/item/clothing/mask/cigarette/cigar/havana = 20,
		/obj/item/storage/fancy/cigarettes/cigars/havana = 15,
		/obj/item/reagent_containers/cup/glass/bottle/champagne = 5,
		/obj/item/reagent_containers/cup/glass/bottle/champagne/cursed = 5,
		/obj/item/toy/captainsaid/collector = 20,
		/obj/item/skillchip/sabrage = 5,
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_BOLD_SELECT_TEXT | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Star Duke"

	voice_of_god_power = 1.4 //Command staff has authority
	
	tgjob = 0

/datum/job/nk006/nucap/get_captaincy_announcement(mob/living/captain)
	return "Captain [captain.real_name] on deck!"

/datum/outfit/job/nk006/nucap
	name = "NK006 Captain"
	jobtype = /datum/job/nk006/nucap

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/captain
	uniform = /obj/item/clothing/under/trek/nk006_cmd
	suit = /obj/item/clothing/under/trek/nk006_cmd
	belt = /obj/item/modular_computer/pda/nk006/heads/captain
	ears = /obj/item/radio/headset/nk006/headset_cap/alt
	gloves = /obj/item/clothing/gloves/color/captain
	head = /obj/item/clothing/head/hats/caphat
	shoes = /obj/item/clothing/shoes/laceup

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain
	
	implants = list(/obj/item/implant/mindshield)
	skillchips = list(/obj/item/skillchip/disk_verifier)

	var/special_charter

/datum/outfit/job/nk006/nucap/pre_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	var/list/job_changes = SSmapping.config.job_changes
	if(!length(job_changes))
		return
	var/list/captain_changes = job_changes[JOB_CAPTAIN]
	if(!length(captain_changes))
		return
	special_charter = captain_changes["special_charter"]
	if(!special_charter)
		return
	backpack_contents.Remove(/obj/item/station_charter)
	l_hand = /obj/item/station_charter/banner

/datum/outfit/job/nk006/nucap/post_equip(mob/living/carbon/human/equipped, visualsOnly)
	. = ..()
	var/obj/item/station_charter/banner/celestial_charter = equipped.held_items[LEFT_HANDS]
	if(!celestial_charter)
		return
	celestial_charter.name_type = special_charter

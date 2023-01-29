//END ACCESS REGIONS, BEGIN EXTENSIONS TO ID_ACCESS SUBSYSTEM
/// Adds our custom access areas to the description list.
/datum/controller/subsystem/id_access/setup_access_descriptions()
	. = ..()
	desc_by_access["[ACCESS_NK006_COMMON]"] = "Commons"
	desc_by_access["[ACCESS_NK006_CMD]"] = "Command Department"
	desc_by_access["[ACCESS_NK006_SUP]"] = "Support Department"
	desc_by_access["[ACCESS_NK006_SPC]"] = "Specialist Department"
	//sub-departments
	desc_by_access["[ACCESS_NK006_MEDICAL]"] = "Medbay"
	desc_by_access["[ACCESS_NK006_BIOLOGY]"] = "Biology"
	desc_by_access["[ACCESS_NK006_ENGINE]"] = "Engines"
	desc_by_access["[ACCESS_NK006_ATMOS]"] = "Atmospherics"
	desc_by_access["[ACCESS_NK006_CARGO]"] = "Cargonia"
	desc_by_access["[ACCESS_NK006_SECURITY]"] = "Security"
	//heads of staff offices
	desc_by_access["[ACCESS_NK006_HEAD_ANY]"] = "Heads' Meeting Room"
	desc_by_access["[ACCESS_NK006_HEAD_CAP]"] = "Captain's Office"
	desc_by_access["[ACCESS_NK006_HEAD_HOP]"] = "HOP's Office"
	desc_by_access["[ACCESS_NK006_HEAD_CMO]"] = "CMO's Office"
	desc_by_access["[ACCESS_NK006_HEAD_CE]"] = "CE's Office"
	desc_by_access["[ACCESS_NK006_HEAD_HOS]"] = "HOS' Office"
	desc_by_access["[ACCESS_NK006_HEAD_RD]"] = "RD's Office"
	desc_by_access["[ACCESS_NK006_HEAD_QM]"] = "QM's Office"

/datum/controller/subsystem/id_access/setup_region_lists()
	. = ..()
	accesses_by_region[REGION_ALL_GLOBAL] = REGION_ACCESS_ALL_GLOBAL + REGION_ACCESS_NK006_CAPTAIN
	station_regions = REGION_AREA_STATION + REGION_NK006_CAPTAIN

/// Adds our custom PDAs, ID trims, etc to the ID_ACCESS system.
/datum/controller/subsystem/id_access/setup_tgui_lists()
	//heads of staff
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/captain] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/hop] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/cmo] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/ce] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/hos] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/rd] = list(REGION_ACCESS_NK006_HEADSPECIAL)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/heads/qm] = list(REGION_ACCESS_NK006_HEADSPECIAL)

	//assistant PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/command] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_COMMAND, REGION_ACCESS_NK006_HOS)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/support] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_SUPPORT, REGION_ACCESS_NK006_CE, REGION_ACCESS_NK006_QM)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/specialist] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_SPECIALIST, REGION_ACCESS_NK006_CMO, REGION_ACCESS_NK006_RD)

	//security-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/security] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_HOS)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/security/lawyer] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_HOS, REGION_ACCESS_NK006_HOP)

	//engineering-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/engineering] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CE)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/engineering/damcon] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CE)

	//cargo-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/cargo] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_QM)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/cargo/mine] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_QM)

	//service-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/service] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_HOP)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/service/janitor] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_HOP)

	//medbay-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/medical] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CMO)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/medical/emt] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CMO)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/medical/chemist] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CMO, REGION_ACCESS_NK006_RD)

	//science-exclusive PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/science] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_RD)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/science/bio] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_RD, REGION_ACCESS_NK006_CMO)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/science/matsci] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_RD, REGION_ACCESS_NK006_CE)

	//misc PDAs
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/medical/psych] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_CMO, REGION_ACCESS_NK006_HOP)
	PDA_PAINTING_REGIONS[/obj/item/modular_computer/pda/nk006/science/botany] = list(REGION_ACCESS_NK006_HEADSPECIAL, REGION_ACCESS_NK006_RD, REGION_ACCESS_NK006_HOP)
	. = ..() //custom stuff has been added to necessary global lists

/// Adds our custom heads to the departmental managers list for TGUI
/datum/controller/subsystem/id_access/initialize_head_categories()
	. = ..()
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_CAP]"] = list(
			"regions" = list(REGION_NK006_HEADSPECIAL, REGION_NK006_CAPTAIN, REGION_NK006_HOP, REGION_NK006_HOS, REGION_NK006_CMO, REGION_NK006_CE, REGION_NK006_RD, REGION_NK006_QM),
			"head" = JOB_NK6_NUCAP,
			"templates" = list(),
			"pdas" = list(),
		)
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_HOP]"] = list(
			"regions" = list(REGION_NK006_HOP),
			"head" = JOB_NK6_HOP,
			"templates" = list(),
			"pdas" = list(),
		)
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_CMO]"] = list(
			"regions" = list(REGION_NK006_CMO),
			"head" = JOB_NK6_CMO,
			"templates" = list(),
			"pdas" = list(),
		)
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_CE]"] = list(
			"regions" = list(REGION_NK006_CE),
			"head" = JOB_NK6_CE,
			"templates" = list(),
			"pdas" = list(),
		)
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_HOS]"] = list(
			"regions" = list(REGION_NK006_HOS),
			"head" = JOB_NK6_HOS,
			"templates" = list(),
			"pdas" = list(),
		)
	sub_department_managers_tgui["[ACCESS_NK006_HEAD_QM]"] = list(
			"regions" = list(REGION_NK006_QM),
			"head" = JOB_NK6_QM,
			"templates" = list(),
			"pdas" = list(),
		)

/datum/controller/subsystem/id_access/setup_access_flags()
	. = ..()
	accesses_by_flag["[ACCESS_FLAG_NK006]"] = REGION_ACCESS_NK006_CAPTAIN
	for(var/access in accesses_by_flag["[ACCESS_FLAG_NK006]"])
		flags_by_access |= list("[access]" = ACCESS_FLAG_NK006)

/datum/controller/subsystem/id_access/setup_wildcard_dict()
	. = ..()
	wildcard_flags_by_wildcard[WILDCARD_NAME_NK006] = WILDCARD_FLAG_NK006

/datum/computer_file/program/card_mod
	changeids = ACCESS_NK006_CHANGEIDS
	allregion = REGION_NK006_CAPTAIN
	transfer_access = list(ACCESS_NK006_HEAD_ANY)

/datum/computer_file/program/ai_restorer
	transfer_access = list(ACCESS_NK006_HEAD_RD)

/datum/computer_file/program/borg_monitor
	transfer_access = list(ACCESS_NK006_SPC)

/datum/computer_file/program/crew_manifest
	transfer_access = list(ACCESS_NK006_HEAD_ANY)

/datum/computer_file/program/scipaper_program
	transfer_access = list(ACCESS_NK006_SPC, ACCESS_NK006_SUP)

/datum/computer_file/program/job_management
	transfer_access = list(ACCESS_NK006_CHANGEIDS) //TODO: stop the HOP from being able to make infinite captains
	/*blacklisted += JOB_NK6_NUCAP
	blacklisted += JOB_NK6_HOP
	blacklisted += JOB_NK6_CMO
	blacklisted += JOB_NK6_CE
	blacklisted += JOB_NK6_RD
	blacklisted += JOB_NK6_QM
	blacklisted += JOB_NK6_HOS*/

/datum/computer_file/program/portrait_printer
	transfer_access = list(ACCESS_NK006_SUP)

/datum/computer_file/program/power_monitor
	transfer_access = list(ACCESS_NK006_SUP)

/datum/computer_file/program/radar/lifeline
	transfer_access = list(ACCESS_NK006_COMMON)

/datum/computer_file/program/radar/custodial_locator
	transfer_access = list(ACCESS_NK006_SUP)

/datum/computer_file/program/records/medical
	transfer_access = list(ACCESS_NK006_SPC, ACCESS_NK006_HEAD_ANY)

/datum/computer_file/program/records/security
	transfer_access = list(ACCESS_NK006_CMD, ACCESS_NK006_HEAD_ANY)

/datum/computer_file/program/secureye
	transfer_access = list(ACCESS_NK006_CMD)

/datum/computer_file/program/supermatter_monitor
	transfer_access = list(ACCESS_NK006_ENGINE)

/datum/computer_file/program/science
	transfer_access = list(ACCESS_NK006_SPC)




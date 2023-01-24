#define JOB_NK6_NUCAP "Commander"					//making it completely distinct for reasons of SPESS IS EATING MY FACE GUYS PLEASE SEND HELP.  IMPLEMENTED, albiet with temporary gear
#define JOB_NK6_HOP "First Officer"					//IMPLEMENTED, temporary gear
#define JOB_NK6_HOS "Chief of Security"				//IMPLEMENTED, temporary gear
#define JOB_NK6_CE "Chief of Engineering"			//IMPLEMENTED, temporary gear
#define JOB_NK6_QM "Chief of Resources"				//IMPLEMENTED, temporary gear
#define JOB_NK6_RD "Chief of Science"				//UNIMPLEMENTED
#define JOB_NK6_CMO "Chief of Medicine"				//IMPLEMENTED, temporary gear
//departmental assistants
#define JOB_NK6_ASST_CMD "Command Crew"				//IMPLEMENTED
#define JOB_NK6_ASST_SUP "Support Crew"				//IMPLEMENTED
#define JOB_NK6_ASST_SPC "Specialist Crew"			//IMPLEMENTED
//sec crew
#define JOB_NK6_SECOFF "Security"					//UNIMPLEMENTED
#define JOB_NK6_LAWYER "Attorney"					//UNIMPLEMENTED, LOW PRIORITY
//engineering crew
#define JOB_NK6_DAMCON "Damage Control Technician"	//IMPLEMENTED
#define JOB_NK6_ENGITECH "Engineering Technician"	//IMPLEMENTED
//cargo crew
#define JOB_NK6_CARGO "Delivery Technician"			//IMPLEMENTED
#define JOB_NK6_MINE "Pathfinder"					//UNIMPLEMENTED
//service crew
#define JOB_NK6_CULINARY "Culinary Artist"			//UNIMPLEMENTED
#define JOB_NK6_JANITOR "Sanitation Officer"		//UNIMPLEMENTED
//TODO: clowns?
//medical crew
#define JOB_NK6_SURGEON "Surgeon"					//IMPLEMENTED
#define JOB_NK6_EMT "Emergency Medical Technician"	//IMPLEMENTED
#define JOB_NK6_PSYCH "Therapist"					//UNIMPLEMENTED, LOW PRIORITY
#define JOB_NK6_CHEMIST "Chemistry Technician"		//MPLEMENTED
//science crew
#define JOB_NK6_SCI "Science Officer"				//IMPLEMENTED
#define JOB_NK6_MATSCI "Material Scientist"			//IMPLEMENTED-ISH, LOW PRIORITY
#define JOB_NK6_BIO "Biologist"						//IMPLEMENTED
#define JOB_NK6_BOTANY "Hydroponics Technician"		//IMPLEMENTED-ISH, LOW PRIORITY



//END JOB DEFINES, BEGIN ACCESS DEFINES
#define ACCESS_NK006_COMMON "nk006_common"
#define ACCESS_NK006_CMD "nk006_cmd"
#define ACCESS_NK006_SUP "nk006_sup"
#define ACCESS_NK006_SPC "nk006_spc"

#define ACCESS_NK006_MEDICAL "nk006_medical"
#define ACCESS_NK006_BIOLOGY "nk006_biology"
#define ACCESS_NK006_ENGINE "nk006_engines"
#define ACCESS_NK006_ATMOS "nk006_atmos"
#define ACCESS_NK006_CARGO "nk006_cargo"
#define ACCESS_NK006_SECURITY "nk006_security"

#define ACCESS_NK006_HEAD_ANY "nk006_head_any"
#define ACCESS_NK006_HEAD_CAP "nk006_head_cap"
#define ACCESS_NK006_HEAD_HOP "nk006_head_hop"
#define ACCESS_NK006_HEAD_CMO "nk006_head_cmo"
#define ACCESS_NK006_HEAD_CE "nk006_head_ce"
#define ACCESS_NK006_HEAD_HOS "nk006_head_hos"
#define ACCESS_NK006_HEAD_RD "nk006_head_rd"
#define ACCESS_NK006_HEAD_QM "nk006_head_qm"

#define ACCESS_NK006_CHANGEIDS "nk006_changeids"



//END JOB DEFINES, BEGIN BITFLAGS FOR OUR STUFF
/// Bitflag for our custom accesses.
#define ACCESS_FLAG_NK006 (1 << 8)



//END BITFLAGS, BEGIN OH GOD IT [[BURNS]]
#define WILDCARD_FLAG_NK006 ACCESS_FLAG_NK006
#define WILDCARD_NAME_NK006 "All-Access"
#define WILDCARD_LIMIT_NK006_GENERAL list(WILDCARD_NAME_NK006 = list(limit = 3, usage = list()))
#define WILDCARD_LIMIT_NK006_HEADS list(WILDCARD_NAME_NK006 = list(limit = -1, usage = list()))



//END INITIAL ACCESS IDENTIFIERS, BEGIN ACCESS LISTS BY FLAG
#define NK006_AXLIST_HEADS list( \
	ACCESS_NK006_HEAD_ANY, \
	ACCESS_NK006_HEAD_CAP, \
	ACCESS_NK006_HEAD_CE, \
	ACCESS_NK006_HEAD_CMO, \
	ACCESS_NK006_HEAD_HOS, \
	ACCESS_NK006_HEAD_HOP, \
	ACCESS_NK006_HEAD_QM, \
	ACCESS_NK006_HEAD_RD, \
)



//END ACCESS LISTS BY FLAG, BEGIN GENERIC ACCESS REGIONS

/// Name for the Command region.
#define REGION_NK006_COMMAND "Command Department"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under the Command department.
#define REGION_ACCESS_NK006_COMMAND list( \
	ACCESS_NK006_COMMON, \
	ACCESS_NK006_CMD, \
	ACCESS_NK006_SECURITY, \
)

/// Name for the Support region.
#define REGION_NK006_SUPPORT "Support Department"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under the Support department.
#define REGION_ACCESS_NK006_SUPPORT list( \
	ACCESS_NK006_SUP, \
	ACCESS_NK006_ENGINE, \
	ACCESS_NK006_ATMOS, \
	ACCESS_NK006_CARGO, \
)

/// Name for the Specialist region.
#define REGION_NK006_SPECIALIST "Specialist Department"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under the Specialist department.
#define REGION_ACCESS_NK006_SPECIALIST list( \
	ACCESS_NK006_SPC, \
	ACCESS_NK006_MEDICAL, \
	ACCESS_NK006_BIOLOGY, \
)

//END GENERIC ACCESS REGIONS, BEGIN JOB ACCESS REGIONS

/// Name for the captain's all-access region.
#define REGION_NK006_CAPTAIN "Captain's Purview"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under the Captain's purview- that is, all of them!
#define REGION_ACCESS_NK006_CAPTAIN list( \
	ACCESS_NK006_COMMON, \
	ACCESS_NK006_CMD, \
	ACCESS_NK006_SUP, \
	ACCESS_NK006_SPC, \
	ACCESS_NK006_MEDICAL, \
	ACCESS_NK006_BIOLOGY, \
	ACCESS_NK006_ENGINE, \
	ACCESS_NK006_ATMOS, \
	ACCESS_NK006_CARGO, \
	ACCESS_NK006_SECURITY, \
	ACCESS_NK006_HEAD_ANY, \
	ACCESS_NK006_HEAD_CAP, \
	ACCESS_NK006_HEAD_CE, \
	ACCESS_NK006_HEAD_CMO, \
	ACCESS_NK006_HEAD_HOS, \
	ACCESS_NK006_HEAD_HOP, \
	ACCESS_NK006_HEAD_QM, \
	ACCESS_NK006_HEAD_RD, \
	ACCESS_NK006_CHANGEIDS, \
)

/// Name for the HOP's all-access region.
#define REGION_NK006_HOP "HOP's Purview"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under the HOP's purview- that is, all of them!
#define REGION_ACCESS_NK006_HOP list( \
	ACCESS_NK006_COMMON, \
	ACCESS_NK006_CMD, \
	ACCESS_NK006_SUP, \
	ACCESS_NK006_SPC, \
	ACCESS_NK006_MEDICAL, \
	ACCESS_NK006_BIOLOGY, \
	ACCESS_NK006_ENGINE, \
	ACCESS_NK006_ATMOS, \
	ACCESS_NK006_CARGO, \
	ACCESS_NK006_SECURITY, \
	ACCESS_NK006_HEAD_ANY, \
	ACCESS_NK006_HEAD_CAP, \
	ACCESS_NK006_HEAD_CE, \
	ACCESS_NK006_HEAD_CMO, \
	ACCESS_NK006_HEAD_HOS, \
	ACCESS_NK006_HEAD_HOP, \
	ACCESS_NK006_HEAD_QM, \
	ACCESS_NK006_HEAD_RD, \
	ACCESS_NK006_CHANGEIDS, \
)

/// Name for the CMO's medbay-access region.
#define REGION_NK006_CMO "Medical"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under Medbay's purview.
#define REGION_ACCESS_NK006_CMO list( \
	ACCESS_NK006_SPC, \
	ACCESS_NK006_MEDICAL, \
	ACCESS_NK006_BIOLOGY, \
	ACCESS_NK006_HEAD_CMO, \
)

/// Name for the CE's engineering-access region.
#define REGION_NK006_CE "Engines"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under Engineering's purview.
#define REGION_ACCESS_NK006_CE list( \
	ACCESS_NK006_SUP, \
	ACCESS_NK006_ENGINE, \
	ACCESS_NK006_ATMOS, \
	ACCESS_NK006_HEAD_CE, \
)

/// Name for the RD's science-access region.
#define REGION_NK006_RD "Science"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under Science/Research's purview.
#define REGION_ACCESS_NK006_RD list( \
	ACCESS_NK006_SPC, \
	ACCESS_NK006_BIOLOGY, \
	ACCESS_NK006_ATMOS, \
	ACCESS_NK006_HEAD_RD, \
)

/// Name for the HOS's security-access region.
#define REGION_NK006_HOS "Sec"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under Security's purview.
#define REGION_ACCESS_NK006_HOS list( \
	ACCESS_NK006_CMD, \
	ACCESS_NK006_SECURITY, \
	ACCESS_NK006_HEAD_HOS, \
)

/// Name for the QM's cargo-access region.
#define REGION_NK006_QM "Cargo"
/// Used to seed the accesses_by_region list in SSid_access. A list of areas that fall under Cargo's purview.
#define REGION_ACCESS_NK006_QM list( \
	ACCESS_NK006_SUP, \
	ACCESS_NK006_CARGO, \
	ACCESS_NK006_HEAD_QM, \
)

/// Name for the QM's cargo-access region.
#define REGION_NK006_HEADSPECIAL "Heads of Staff"
/// Used to seed the accesses_by_region list in SSid_access. Specialty region for PDA/trim painting purposes.
#define REGION_ACCESS_NK006_HEADSPECIAL list( \
	ACCESS_NK006_HEAD_ANY, \
	ACCESS_NK006_HEAD_CAP, \
	ACCESS_NK006_HEAD_HOP, \
	ACCESS_NK006_HEAD_CMO, \
	ACCESS_NK006_HEAD_CE, \
	ACCESS_NK006_HEAD_HOS, \
	ACCESS_NK006_HEAD_RD, \
	ACCESS_NK006_HEAD_QM, \
	ACCESS_NK006_CHANGEIDS, \
)



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




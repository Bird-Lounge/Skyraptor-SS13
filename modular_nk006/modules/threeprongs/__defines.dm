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

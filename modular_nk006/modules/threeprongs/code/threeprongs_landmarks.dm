/obj/effect/landmark/start/nk006
	name = "start-nk006"
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_effects.dmi'
	icon_state = "start"

// == HEADS OF STAFF
/obj/effect/landmark/start/nk006/cap
	name = JOB_NK6_NUCAP
	icon_state = "Captain"

/obj/effect/landmark/start/nk006/hop
	name = JOB_NK6_HOP
	icon_state = "HOP"

/obj/effect/landmark/start/nk006/hos
	name = JOB_NK6_HOS
	icon_state = "HOS"

/obj/effect/landmark/start/nk006/ce
	name = JOB_NK6_CE
	icon_state = "CE"

/obj/effect/landmark/start/nk006/qm
	name = JOB_NK6_QM
	icon_state = "QM"

/obj/effect/landmark/start/nk006/cmo
	name = JOB_NK6_CMO
	icon_state = "CMO"

/obj/effect/landmark/start/nk006/rd
	name = JOB_NK6_RD
	icon_state = "RD"



// == SECURITY
/obj/effect/landmark/start/nk006/secoff
	name = JOB_NK6_SECOFF
	icon_state = "Secoff"

/obj/effect/landmark/start/nk006/lawyer
	name = JOB_NK6_LAWYER
	icon_state = "Lawyer"



// == ENGINEERING
/obj/effect/landmark/start/nk006/engineer
	name = JOB_NK6_ENGITECH
	icon_state = "Engineer"

/obj/effect/landmark/start/nk006/damcon
	name = JOB_NK6_DAMCON
	icon_state = "Damcon"



// == CARGO
/obj/effect/landmark/start/nk006/cargo
	name = JOB_NK6_CARGO
	icon_state = "Cargo"

/obj/effect/landmark/start/nk006/miner
	name = JOB_NK6_MINE
	icon_state = "Miner"



// == SERVICE
/obj/effect/landmark/start/nk006/chef
	name = JOB_NK6_CULINARY
	icon_state = "Chef"

/obj/effect/landmark/start/nk006/janitor
	name = JOB_NK6_JANITOR
	icon_state = "Janitor"



// == MEDICAL
/obj/effect/landmark/start/nk006/surgeon
	name = JOB_NK6_SURGEON
	icon_state = "Surgeon"

/obj/effect/landmark/start/nk006/emt
	name = JOB_NK6_EMT
	icon_state = "EMT"

/obj/effect/landmark/start/nk006/psych
	name = JOB_NK6_PSYCH
	icon_state = "Psych"



// == SCI
/obj/effect/landmark/start/nk006/scientist
	name = JOB_NK6_SCI
	icon_state = "Sci"

/obj/effect/landmark/start/nk006/robo
	name = JOB_NK6_MATSCI
	icon_state = "Robo"

/obj/effect/landmark/start/nk006/bio
	name = JOB_NK6_BIO
	icon_state = "Bio"

/obj/effect/landmark/start/nk006/botany
	name = JOB_NK6_BOTANY
	icon_state = "Botany"

/obj/effect/landmark/start/nk006/chem
	name = JOB_NK6_CHEMIST
	icon_state = "Chem"



// == ASSISTANTS
/obj/effect/landmark/start/nk006/asst_cmd
	name = JOB_NK6_ASST_CMD
	icon_state = "CommandAsst"

/obj/effect/landmark/start/nk006/asst_sup
	name = JOB_NK6_ASST_SUP
	icon_state = "SupportAsst"

/obj/effect/landmark/start/nk006/asst_spc
	name = JOB_NK6_ASST_SPC
	icon_state = "SpecialistAsst"



/// ACCESS HELPERS
/obj/effect/mapping_helpers/airlock/access/any/nk006/
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_etc.dmi'
	icon_state = "access_helper_any"

/obj/effect/mapping_helpers/airlock/access/any/nk006/get_access()
	var/list/access_list = ..()
	//access_list += ACCESS_NK006_COMMON
	return access_list



//COMMAND ACCESSES
/obj/effect/mapping_helpers/airlock/access/any/nk006/command
	icon_state = "access_helper_cmd"

/obj/effect/mapping_helpers/airlock/access/any/nk006/command/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_CMD
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/command/security
	icon_state = "access_helper_sec"

/obj/effect/mapping_helpers/airlock/access/any/nk006/command/security/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_SECURITY
	access_list -= ACCESS_NK006_CMD
	return access_list



//SUPPORT ACCESSES
/obj/effect/mapping_helpers/airlock/access/any/nk006/support
	icon_state = "access_helper_sup"

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_SUP
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/engine
	icon_state = "access_helper_eng"

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/engine/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_ENGINE
	access_list -= ACCESS_NK006_SUP
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/atmos
	icon_state = "access_helper_tox"

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/atmos/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_ATMOS
	access_list -= ACCESS_NK006_SUP
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/botany
	icon_state = "access_helper_botany"

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/botany/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_SPC
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/cargo
	icon_state = "access_helper_cargo"

/obj/effect/mapping_helpers/airlock/access/any/nk006/support/cargo/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_CARGO
	access_list -= ACCESS_NK006_SUP
	return access_list



//SPECIALIST ACCESSES
/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist
	icon_state = "access_helper_spc"

/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_SPC
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist/medical
	icon_state = "access_helper_med"

/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist/medical/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_MEDICAL
	access_list -= ACCESS_NK006_SPC
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist/bio
	icon_state = "access_helper_bio"

/obj/effect/mapping_helpers/airlock/access/any/nk006/specialist/bio/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_BIOLOGY
	access_list -= ACCESS_NK006_SPC
	return access_list

//HEADS OF STAFF ACCESS CATEGORIES
/obj/effect/mapping_helpers/airlock/access/any/nk006/heads
	icon_state = "access_helper_head"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/captain
	icon_state = "access_helper_head_cap"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/captain/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_CAP
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/hop
	icon_state = "access_helper_head_hop"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/hop/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_HOP
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/cmo
	icon_state = "access_helper_head_cmo"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/cmo/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_CMO
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/ce
	icon_state = "access_helper_head_ce"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/ce/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_CE
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/hos
	icon_state = "access_helper_head_hos"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/hos/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_HOS
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/rd
	icon_state = "access_helper_head_rd"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/rd/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_RD
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/qm
	icon_state = "access_helper_head_qm"

/obj/effect/mapping_helpers/airlock/access/any/nk006/heads/qm/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_NK006_HEAD_QM
	access_list -= ACCESS_NK006_HEAD_ANY
	return access_list

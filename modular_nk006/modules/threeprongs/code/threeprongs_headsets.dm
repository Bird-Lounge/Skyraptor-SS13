// == Encryption keys
/obj/item/encryptionkey/nk006
	name = "nk006-series encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#ffff00#afafaf"

/obj/item/encryptionkey/nk006/headset_heads
	name = "staff-head radio encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#ffff00#afafaf"

/obj/item/encryptionkey/nk006/headset_command
	name = "command radio encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_COMMAND = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#6600ff#afafaf"

/obj/item/encryptionkey/nk006/headset_captain
	name = "captain radio encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_CMDSEC = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SUPENG = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_ALLCRG = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#6600ff#ffff00"

/obj/item/encryptionkey/nk006/headset_cmdsec
	name = "security radio encryption key"
	icon_state = "cypherkey_security"
	channels = list(RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_CMDSEC = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#6600ff#007fff"

/obj/item/encryptionkey/nk006/headset_hos
	name = "hos radio encryption key"
	icon_state = "cypherkey_security"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_CMDSEC = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#007fff#ffff00"

/obj/item/encryptionkey/nk006/headset_min
	name = "mining radio encryption key"
	icon_state = "cypherkey_security"
	channels = list(RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_ALLCRG = 1, RADIO_CHANNEL_NK6_SPCMED = 0)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#6600ff#af7f3f"

/obj/item/encryptionkey/nk006/headset_dip
	name = "diplomatic radio encryption key"
	icon_state = "cypherkey_security"
	channels = list(RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_ALLSRV = 1, RADIO_CHANNEL_NK6_SPECIALIST = 0)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#6600ff#00ff00"

/obj/item/encryptionkey/nk006/headset_support
	name = "support radio encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#ff6600#afafaf"

/obj/item/encryptionkey/nk006/headset_supeng
	name = "engineering radio encryption key"
	icon_state = "cypherkey_engineering"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SUPENG = 1, RADIO_CHANNEL_NK6_SPCMED = 0)
	greyscale_config = /datum/greyscale_config/encryptionkey_engineering
	greyscale_colors = "#ff6600#ff0000"

/obj/item/encryptionkey/nk006/headset_ce
	name = "ce radio encryption key"
	icon_state = "cypherkey_engineering"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SUPENG = 1, RADIO_CHANNEL_NK6_SPCMED = 0)
	greyscale_config = /datum/greyscale_config/encryptionkey_engineering
	greyscale_colors = "#ff6600#ffff00"

/obj/item/encryptionkey/nk006/headset_cargo
	name = "cargo radio encryption key"
	icon_state = "cypherkey_cargo"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_ALLCRG = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cargo
	greyscale_colors = "#ff6600#af7f3f"

/obj/item/encryptionkey/nk006/headset_qm
	name = "qm radio encryption key"
	icon_state = "cypherkey_cargo"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_ALLCRG = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cargo
	greyscale_colors = "#af7f3f#ffff00"

/obj/item/encryptionkey/nk006/headset_service
	name = "service radio encryption key"
	icon_state = "cypherkey_service"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_service
	greyscale_colors = "#ff6600#00ff00"

/obj/item/encryptionkey/nk006/headset_hop
	name = "hop radio encryption key"
	icon_state = "cypherkey_service"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_CMDSEC = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SUPENG = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_ALLCRG = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_service
	greyscale_colors = "#00ff00#ffff00"

/obj/item/encryptionkey/nk006/headset_specialist
	name = "specialist radio encryption key"
	icon_state = "cypherkey_research"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_research
	greyscale_colors = "#aaff00#afafaf"

/obj/item/encryptionkey/nk006/headset_sci
	name = "science radio encryption key"
	icon_state = "cypherkey_research"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_ALLCRG = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_research
	greyscale_colors = "#aaff00#007fff"

/obj/item/encryptionkey/nk006/headset_rd
	name = "rd radio encryption key"
	icon_state = "cypherkey_research"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_ALLCRG = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_research
	greyscale_colors = "#aaff00#ffff00"

/obj/item/encryptionkey/nk006/headset_med
	name = "medical radio encryption key"
	icon_state = "cypherkey_medical"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_SUPPORT = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#aaff00#ff0000"

/obj/item/encryptionkey/nk006/headset_bio
	name = "bology radio encryption key"
	icon_state = "cypherkey_medical"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#aaff00#00ff00"

/obj/item/encryptionkey/nk006/headset_robo
	name = "material sciences radio encryption key"
	icon_state = "cypherkey_engineering"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SUPENG = 1, RADIO_CHANNEL_NK6_SUPPORT = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_engineering
	greyscale_colors = "#aaff00#ff6600"

/obj/item/encryptionkey/nk006/headset_cmo
	name = "cmo radio encryption key"
	icon_state = "cypherkey_medical"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_SUPPORT = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#ff0000#ffff00"

/obj/item/encryptionkey/nk006/headset_botany
	name = "botany radio encryption key"
	icon_state = "cypherkey_service"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_service
	greyscale_colors = "#aaff00#00ff00"

/obj/item/encryptionkey/nk006/headset_psych
	name = "psych radio encryption key"
	icon_state = "cypherkey_service"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_ALLSRV = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_CMDSEC = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_service
	greyscale_colors = "#00ff00#ff0000"





// == Actual radios
/obj/item/radio/headset/nk006
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_headsets.dmi'
	name = "generic radio headset"
	desc = "A cheap headset with no departmental keys."
	icon_state = "common_headset"


/obj/item/radio/headset/nk006/headset_command
	name = "command radio headset"
	desc = "A generic headset for the command department."
	icon_state = "command_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_command


/obj/item/radio/headset/nk006/headset_cap
	name = "captain's radio headset"
	desc = "A headset for the Captain."
	icon_state = "cap_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_captain

/obj/item/radio/headset/nk006/headset_cap/alt
	name = "captain's bowman headset"
	desc = "An improved headset for the Captain. Protects ears from flashbangs."
	icon_state = "cap_headset_alt"

/obj/item/radio/headset/nk006/headset_cap/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_sec
	name = "security radio headset"
	desc = "A headset for security."
	icon_state = "sec_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_cmdsec

/obj/item/radio/headset/nk006/headset_sec/alt
	name = "security bowman headset"
	desc = "An improved headset for security. Protects ears from flashbangs."
	icon_state = "sec_headset_alt"

/obj/item/radio/headset/nk006/headset_sec/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_hos
	name = "security chief's radio headset"
	desc = "A headset for the head of security."
	icon_state = "hos_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_hos

/obj/item/radio/headset/nk006/headset_hos/alt
	name = "security chief's bowman headset"
	desc = "An improved headset for the head of security. Protects ears from flashbangs."
	icon_state = "hos_headset_alt"

/obj/item/radio/headset/nk006/headset_hos/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_dip
	name = "diplomatic radio headset"
	desc = "A headset for the diplomatic corps."
	icon_state = "dip_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_cmdsec


/obj/item/radio/headset/nk006/headset_min
	name = "pathfinder's radio headset"
	desc = "A headset for Pathfinders."
	icon_state = "mine_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_min

/obj/item/radio/headset/nk006/headset_min/alt
	name = "pathfinder's bowman headset"
	desc = "An improved headset for Pathfinders. Protects ears from flashbangs."
	icon_state = "mine_headset_alt"

/obj/item/radio/headset/nk006/headset_min/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


// == SUPPORT


/obj/item/radio/headset/nk006/headset_support
	name = "support radio headset"
	desc = "A generic headset for the support department."
	icon_state = "support_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_support


/obj/item/radio/headset/nk006/headset_engineer
	name = "engineering radio headset"
	desc = "A generic headset for engineers.  Includes optional Medical comms for coordination."
	icon_state = "engi_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_supeng


/obj/item/radio/headset/nk006/headset_ce
	name = "chief engineer's radio headset"
	desc = "A headset for the Chief Engineer.  Includes optional Medical comms for coordination."
	icon_state = "ce_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_ce

/obj/item/radio/headset/nk006/headset_ce/alt
	name = "chief engineer's bowman headset"
	desc = "An improved headset for the Chief Engineer.  Includes optional Medical comms for coordination. Protects ears from flashbangs."
	icon_state = "ce_headset_alt"

/obj/item/radio/headset/nk006/headset_ce/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_cargo
	name = "cargo radio headset"
	desc = "A generic headset for cargo use."
	icon_state = "cargo_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_cargo


/obj/item/radio/headset/nk006/headset_qm
	name = "quartermaster's radio headset"
	desc = "A headset for the Quartermaster."
	icon_state = "qm_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_qm

/obj/item/radio/headset/nk006/headset_qm/alt
	name = "quartermaster's bowman headset"
	desc = "An improved headset for the Quartermaster. Protects ears from flashbangs."
	icon_state = "qm_headset_alt"

/obj/item/radio/headset/nk006/headset_qm/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_service
	name = "service radio headset"
	desc = "A generic headset for service use."
	icon_state = "service_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_service


/obj/item/radio/headset/nk006/headset_hop
	name = "head of personnel's radio headset"
	desc = "A headset for the Head of Personnel.  Includes all access as the crew's #2."
	icon_state = "hop_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_hop

/obj/item/radio/headset/nk006/headset_hop/alt
	name = "head of personnel's bowman headset"
	desc = "An improved headset for the Head of Personnel.  Includes all access as the crew's #2. Protects ears from flashbangs."
	icon_state = "hop_headset_alt"

/obj/item/radio/headset/nk006/headset_hop/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


// == SPECIALISTS


/obj/item/radio/headset/nk006/headset_specialist
	name = "specialist radio headset"
	desc = "A generic headset for the specialist department."
	icon_state = "specialist_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_specialist


/obj/item/radio/headset/nk006/headset_med
	name = "medical radio headset"
	desc = "A headset for medical staff.  Has basic access to other department comms for emergencies."
	icon_state = "med_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_med

/obj/item/radio/headset/nk006/headset_med/alt
	name = "medical bowman headset"
	desc = "An improved headset for paramedics in the line of fire.  Has basic access to other department comms for emergencies. Protects ears from flashbangs."
	icon_state = "med_headset_alt"

/obj/item/radio/headset/nk006/headset_med/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_cmo
	name = "chief medical officer's radio headset"
	desc = "A headset for the CMO.  Has basic access to other department comms for emergencies."
	icon_state = "cmo_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_cmo

/obj/item/radio/headset/nk006/headset_cmo/alt
	name = "chief medical officer's bowman headset"
	desc = "An improved headset for the CMO.  Has basic access to other department comms for emergencies. Protects ears from flashbangs."
	icon_state = "cmo_headset_alt"

/obj/item/radio/headset/nk006/headset_cmo/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_sci
	name = "science radio headset"
	desc = "A headset for science officers.  Has basic access to other department comms & Cargo for upgrades."
	icon_state = "sci_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_sci

/obj/item/radio/headset/nk006/headset_sci/alt
	name = "science bowman headset"
	desc = "An improved headset for science crew.  Has basic access to other department comms & Cargo for upgrades. Protects ears from flashbangs."
	icon_state = "sci_headset_alt"

/obj/item/radio/headset/nk006/headset_sci/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_bio
	name = "biology radio headset"
	desc = "A headset for biologists.  A combination of sci + med headsets."
	icon_state = "sci_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_bio

/obj/item/radio/headset/nk006/headset_bio/alt
	name = "biology bowman headset"
	desc = "An improved headset for chemists.  A combination of sci + med headsets. Protects ears from flashbangs- and exploding Inacusiate."
	icon_state = "sci_headset_alt"

/obj/item/radio/headset/nk006/headset_bio/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_robo
	name = "material sciences radio headset"
	desc = "A headset for material sciences experts.  A combination of sci + eng headsets."
	icon_state = "robo_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_bio

/obj/item/radio/headset/nk006/headset_robo/alt
	name = "material sciences bowman headset"
	desc = "An improved headset for materials scientists.  A combination of sci + eng headsets. Protects ears from flashbangs- and Atmosia as it goes up in a boom."
	icon_state = "robo_headset_alt"

/obj/item/radio/headset/nk006/headset_robo/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_rd
	name = "research director's radio headset"
	desc = "A headset for the head of research and dvelopment.  Has Support and Cargo access to coordinate upgrades."
	icon_state = "rd_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_rd

/obj/item/radio/headset/nk006/headset_rd/alt
	name = "research director's bowman headset"
	desc = "An improved headset for the head of research and development.  Has Support and Cargo access to coordinate upgrades. Protects ears from flashbangs."
	icon_state = "rd_headset_alt"

/obj/item/radio/headset/nk006/headset_rd/alt/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))


/obj/item/radio/headset/nk006/headset_botany
	name = "botany radio headset"
	desc = "A headset for the botanists.  Has service and specialist access."
	icon_state = "botany_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_botany


/obj/item/radio/headset/nk006/headset_psych
	name = "psych's radio headset"
	desc = "A headset for the station's psych/therapist.  Has medical, service, and security access."
	icon_state = "psych_headset"
	keyslot = /obj/item/encryptionkey/nk006/headset_psych

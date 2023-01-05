// == Encryption keys

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
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_COMMAND = 1, RADIO_CHANNEL_NK6_CMDSEC = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SPTENG = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1, RADIO_CHANNEL_NK6_ALLCRG = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
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

/obj/item/encryptionkey/nk006/headset_support
	name = "support radio encryption key"
	icon_state = "cypherkey_cube"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#ff6600#afafaf"

/obj/item/encryptionkey/nk006/headset_spteng
	name = "engineering radio encryption key"
	icon_state = "cypherkey_engineering"
	channels = list(RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SPTENG = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_engineering
	greyscale_colors = "#ff6600#ff0000"

/obj/item/encryptionkey/nk006/headset_ce
	name = "ce radio encryption key"
	icon_state = "cypherkey_engineering"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_SPTENG = 1)
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
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SUPPORT = 1, RADIO_CHANNEL_NK6_ALLSRV = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_service
	greyscale_colors = "#00ff00#ffff00"

/obj/item/encryptionkey/nk006/headset_specialist
	name = "specialist radio encryption key"
	icon_state = "cypherkey_research"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_research
	greyscale_colors = "#aaff00#afafaf"

/obj/item/encryptionkey/nk006/headset_rd
	name = "rd radio encryption key"
	icon_state = "cypherkey_research"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_research
	greyscale_colors = "#aaff00#ffff00"

/obj/item/encryptionkey/nk006/headset_spcmed
	name = "medical radio encryption key"
	icon_state = "cypherkey_medical"
	channels = list(RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#aaff00#ff0000"

/obj/item/encryptionkey/nk006/headset_cmo
	name = "cmo radio encryption key"
	icon_state = "cypherkey_medical"
	channels = list(RADIO_CHANNEL_NK6_ALLHEADS = 1, RADIO_CHANNEL_NK6_SPECIALIST = 1, RADIO_CHANNEL_NK6_SPCMED = 1)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#ff0000#ffff00"





// == Actual radios
/obj/machinery/telecomms/server/presets/nk006/command
	id = "Command Server"
	freq_listening = list(FREQ_NK6_COMMAND, FREQ_NK6_CMDSEC)
	autolinkers = list("nk6_command", "nk6_cmdsec")

/obj/machinery/telecomms/server/presets/nk006/support
	id = "Support Server"
	freq_listening = list(FREQ_NK6_SUPPORT, FREQ_NK6_SUPENG)
	autolinkers = list("nk6_support", "nk6_supeng")

/obj/machinery/telecomms/server/presets/nk006/specialist
	id = "Specialist Server"
	freq_listening = list(FREQ_NK6_SPECIALIST, FREQ_NK6_SPCMED)
	autolinkers = list("nk6_specialist", "nk6_spcmed")

/obj/machinery/telecomms/server/presets/nk006/universal
	id = "Universal Sub-Departmental Server"
	freq_listening = list(FREQ_NK6_ALLCRG, FREQ_NK6_ALLSRV)
	autolinkers = list("nk6_allcrg", "nk6_allsrv")

/obj/machinery/telecomms/server/presets/nk006/common
	id = "Common Server"
	freq_listening = list(FREQ_COMMON, FREQ_NK6_ALLHEADS)
	autolinkers = list("common", "nk6_allheads")


// == servers done, now for receivers
//--PRESET LEFT--//

/obj/machinery/telecomms/receiver/nk006/preset_left
	id = "Receiver A"
	network = "tcommsat"
	autolinkers = list("receiverA") // link to relay
	freq_listening = list(FREQ_COMMON, FREQ_NK6_COMMAND, FREQ_NK6_SUPPORT, FREQ_NK6_SPECIALIST, FREQ_NK6_ALLSRV)


//--PRESET RIGHT--//

/obj/machinery/telecomms/receiver/nk006/preset_right
	id = "Receiver B"
	network = "tcommsat"
	autolinkers = list("receiverB") // link to relay
	freq_listening = list(FREQ_NK6_ALLHEADS, FREQ_NK6_CMDSEC, FREQ_NK6_SUPENG, FREQ_NK6_SPCMED, FREQ_NK6_ALLCRG)


// == busses
//Preset Buses

/obj/machinery/telecomms/bus/nk006/preset_one
	id = "Bus 1"
	network = "tcommsat"
	freq_listening = list(FREQ_NK6_COMMAND, FREQ_NK6_CMDSEC, FREQ_NK6_ALLHEADS)
	autolinkers = list("processor1", "nk6_command", "nk6_cmdsec", "nk6_allheads")

/obj/machinery/telecomms/bus/nk006/preset_two
	id = "Bus 2"
	network = "tcommsat"
	freq_listening = list(FREQ_NK6_SUPPORT, FREQ_NK6_SUPENG)
	autolinkers = list("processor2", "nk6_support", "nk6_supeng")

/obj/machinery/telecomms/bus/nk006/preset_three
	id = "Bus 3"
	network = "tcommsat"
	freq_listening = list(FREQ_NK6_SPECIALIST, FREQ_NK6_SPCMED)
	autolinkers = list("processor3", "nk6_specialist", "nk6_spcmed")

/obj/machinery/telecomms/bus/nk006/preset_four
	id = "Bus 4"
	network = "tcommsat"
	freq_listening = list(FREQ_NK6_ALLCRG, FREQ_NK6_ALLSRV, FREQ_COMMON)
	autolinkers = list("processor4", "common", "nk6_allcrg", "nk6_allsrv", "messaging")

/obj/machinery/telecomms/bus/nk006/preset_four/Initialize(mapload)
	. = ..()
	for(var/i = MIN_FREQ, i <= MAX_FREQ, i += 2)
		freq_listening |= i

// == hub
//Preset HUB

/obj/machinery/telecomms/hub/nk006/preset
	id = "Hub"
	network = "tcommsat"
	autolinkers = list("hub", "relay", "s_relay", "m_relay", "r_relay", "h_relay", "common", "nk6_allheads",
	"nk6_command", "nk6_cmdsec", "nk6_support", "nk6_supeng", "nk6_specialist", "nk6_spcmed", "nk6_allcrg", "nk6_allsrv",
	"receiverA", "receiverB", "broadcasterA", "broadcasterB", "autorelay", "messaging")


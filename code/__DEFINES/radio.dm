// Radios use a large variety of predefined frequencies.

//say based modes like binary are in living/say.dm

//NK006 channels
#define RADIO_CHANNEL_NK6_COMMAND "Command"
#define RADIO_KEY_NK6_COMMAND "c"
#define RADIO_TOKEN_NK6_COMMAND ":c"

#define RADIO_CHANNEL_NK6_SUPPORT "Support"
#define RADIO_KEY_NK6_SUPPORT "u"
#define RADIO_TOKEN_NK6_SUPPORT ":u"

#define RADIO_CHANNEL_NK6_SPECIALIST "Specialist"
#define RADIO_KEY_NK6_SPECIALIST "s"
#define RADIO_TOKEN_NK6_SPECIALIST ":s"

#define RADIO_CHANNEL_NK6_CMDSEC "Security"
#define RADIO_KEY_NK6_CMDSEC "y"
#define RADIO_TOKEN_NK6_CMDSEC ":y"

#define RADIO_CHANNEL_NK6_SUPENG "Engineering"
#define RADIO_KEY_NK6_SUPENG "e"
#define RADIO_TOKEN_NK6_SUPENG ":e"

#define RADIO_CHANNEL_NK6_SPCMED "Medical"
#define RADIO_KEY_NK6_SPCMED "m"
#define RADIO_TOKEN_NK6_SPCMED ":m"

#define RADIO_CHANNEL_NK6_ALLCRG "Cargo"
#define RADIO_KEY_NK6_ALLCRG "r"
#define RADIO_TOKEN_NK6_ALLCRG ":r"

#define RADIO_CHANNEL_NK6_ALLSRV "Service"
#define RADIO_KEY_NK6_ALLSRV "v"
#define RADIO_TOKEN_NK6_ALLSRV ":v"

#define RADIO_CHANNEL_NK6_ALLHEADS "Heads"
#define RADIO_KEY_NK6_ALLHEADS "h"
#define RADIO_TOKEN_NK6_ALLHEADS ":h"

//original TG channels

#define RADIO_CHANNEL_COMMON "Common"
#define RADIO_KEY_COMMON ";"

#define RADIO_CHANNEL_SECURITY "TG Security"
#define RADIO_KEY_SECURITY "t"
#define RADIO_TOKEN_SECURITY ":t"

#define RADIO_CHANNEL_ENGINEERING "TG Engineering"
#define RADIO_KEY_ENGINEERING "g"
#define RADIO_TOKEN_ENGINEERING ":g"

#define RADIO_CHANNEL_COMMAND "TG Command"
#define RADIO_KEY_COMMAND "d"
#define RADIO_TOKEN_COMMAND ":d"

#define RADIO_CHANNEL_SCIENCE "TG Science"
#define RADIO_KEY_SCIENCE "n"
#define RADIO_TOKEN_SCIENCE ":n"

#define RADIO_CHANNEL_MEDICAL "TG Medical"
#define RADIO_KEY_MEDICAL "a"
#define RADIO_TOKEN_MEDICAL ":a"

#define RADIO_CHANNEL_SUPPLY "TG Supply"
#define RADIO_KEY_SUPPLY "l"
#define RADIO_TOKEN_SUPPLY ":l"

#define RADIO_CHANNEL_SERVICE "TG Service"
#define RADIO_KEY_SERVICE "i"
#define RADIO_TOKEN_SERVICE ":i"

#define RADIO_CHANNEL_AI_PRIVATE "AI Private"
#define RADIO_KEY_AI_PRIVATE "o"
#define RADIO_TOKEN_AI_PRIVATE ":o"


#define RADIO_CHANNEL_SYNDICATE "Syndicate"
#define RADIO_KEY_SYNDICATE "t"
#define RADIO_TOKEN_SYNDICATE ":t"

#define RADIO_CHANNEL_CENTCOM "CentCom"  //Centcom gets .o on our server because sec gets .y.  Fucking.  i spent 3 hours debugging why sec comms were broken and CC being .y was why all along
#define RADIO_KEY_CENTCOM "o"
#define RADIO_TOKEN_CENTCOM ":o"

#define RADIO_CHANNEL_UPLINK "Uplink"
#define RADIO_KEY_UPLINK "z"
#define RADIO_TOKEN_UPLINK ":z"

#define RADIO_CHANNEL_CTF_RED "Red Team"
#define RADIO_CHANNEL_CTF_BLUE "Blue Team"
#define RADIO_CHANNEL_CTF_GREEN "Green Team"
#define RADIO_CHANNEL_CTF_YELLOW "Yellow Team"


#define MIN_FREE_FREQ 1201 // -------------------------------------------------
// Frequencies are always odd numbers and range from 1201 to 1599.

#define FREQ_UPLINK 1211	// Dummy loopback frequency, used for radio uplink. Not seen in game.
#define FREQ_SYNDICATE 1213  // Nuke op comms frequency, dark brown
#define FREQ_CTF_RED 1215  // CTF red team comms frequency, red
#define FREQ_CTF_BLUE 1217  // CTF blue team comms frequency, blue
#define FREQ_CTF_GREEN 1219  // CTF green team comms frequency, green
#define FREQ_CTF_YELLOW 1221  // CTF yellow team comms frequency, yellow
#define FREQ_CENTCOM 1337  // CentCom comms frequency, gray
#define FREQ_SUPPLY 1347  // Supply comms frequency, light brown
#define FREQ_SERVICE 1349  // Service comms frequency, green
#define FREQ_SCIENCE 1351  // Science comms frequency, plum
#define FREQ_COMMAND 1353  // Command comms frequency, gold
#define FREQ_MEDICAL 1355  // Medical comms frequency, soft blue
#define FREQ_ENGINEERING 1357  // Engineering comms frequency, orange
#define FREQ_SECURITY 1359  // Security comms frequency, 

#define FREQ_NK6_ALLHEADS 1399 //heads-of-staff.  gold
#define FREQ_NK6_COMMAND 1401 //command department.  violet
#define FREQ_NK6_CMDSEC 1403 //command subdept, sec.  blue
#define FREQ_NK6_SUPPORT 1405 //support department.  orange
#define FREQ_NK6_SUPENG 1407 //support subdept, eng.  white
#define FREQ_NK6_SPECIALIST 1409 //specialist department.  chartreuse
#define FREQ_NK6_SPCMED 1411 //specialist subdept, med.  red
#define FREQ_NK6_ALLCRG 1413 //multidept subdept, cargo.  brown
#define FREQ_NK6_ALLSRV 1415 //multidept subdept, service.  green

#define FREQ_HOLOGRID_SOLUTION 1433
#define FREQ_STATUS_DISPLAYS 1435

#define MIN_FREQ 1441 // ------------------------------------------------------
// Only the 1441 to 1489 range is freely available for general conversation.
// This represents 1/8th of the available spectrum.

#define FREQ_NAV_BEACON 1445
#define FREQ_AI_PRIVATE 1447  // AI private comms frequency, magenta
#define FREQ_PRESSURE_PLATE 1447
#define FREQ_ELECTROPACK 1449
#define FREQ_MAGNETS 1449
#define FREQ_LOCATOR_IMPLANT 1451
#define FREQ_SIGNALER 1457  // the default for new signalers
#define FREQ_COMMON 1459  // Common comms frequency, dark green

#define MAX_FREQ 1489 // ------------------------------------------------------

#define MAX_FREE_FREQ 1599 // -------------------------------------------------

// Transmission types.
#define TRANSMISSION_WIRE 0  // some sort of wired connection, not used
#define TRANSMISSION_RADIO 1  // electromagnetic radiation (default)
#define TRANSMISSION_SUBSPACE 2  // subspace transmission (headsets only)
#define TRANSMISSION_SUPERSPACE 3  // reaches independent (CentCom) radios only

// Filter types, used as an optimization to avoid unnecessary proc calls.
#define RADIO_SIGNALER "signaler"
#define RADIO_AIRLOCK "airlock"
#define RADIO_MAGNETS "magnets"

#define DEFAULT_SIGNALER_CODE 30

//Requests Console
#define REQ_NO_NEW_MESSAGE 0
#define REQ_NORMAL_MESSAGE_PRIORITY 1
#define REQ_HIGH_MESSAGE_PRIORITY 2
#define REQ_EXTREME_MESSAGE_PRIORITY 3

#define REQ_DEP_TYPE_ASSISTANCE (1<<0)
#define REQ_DEP_TYPE_SUPPLIES (1<<1)
#define REQ_DEP_TYPE_INFORMATION (1<<2)

///give this to can_receive to specify that there is no restriction on what z level this signal is sent to
#define RADIO_NO_Z_LEVEL_RESTRICTION 0

/// Radio frequency is unlocked and can be ajusted by anyone
#define RADIO_FREQENCY_UNLOCKED 0
/// Radio frequency is locked, unchangeable by players
#define RADIO_FREQENCY_LOCKED 1
/// Radio frequency is locked and unchangeable, but can be unlocked by an emag
#define RADIO_FREQENCY_EMAGGABLE_LOCK 2

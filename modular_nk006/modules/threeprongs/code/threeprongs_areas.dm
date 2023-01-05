/area/station/nk006/
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_areas.dmi'
	icon_state = "unknown"
	name = "Generic NK006 Maints"
	ambience_index = AMBIENCE_MAINT
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED | PERSISTENT_ENGRAVINGS
	airlock_wires = /datum/wires/airlock/maint
	sound_environment = SOUND_AREA_TUNNEL_ENCLOSED
	forced_ambience = TRUE
	ambient_buzz = 'sound/ambience/source_corridor2.ogg'
	ambient_buzz_vol = 20

//// == NONDEPARTMENTAL ==

/area/station/nk006/maints
	name = "Maints"
	icon_state = "general_maints"
/area/station/nk006/maints/cmd
	name = "Command Maints"
	icon_state = "general_maints"
/area/station/nk006/maints/sup
	name = "Support Maints"
	icon_state = "general_maints"
/area/station/nk006/maints/spc
	name = "Specialist Maints"
	icon_state = "general_maints"

/area/station/nk006/general
	name = "General"
	icon_state = "general_maints"
	sound_environment = SOUND_AREA_STANDARD_STATION
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/area/station/nk006/general/fab
	name = "General Fab"
	icon_state = "general_fab"

/area/station/nk006/general/halls
	name = "General Halls"
	icon_state = "general_halls"

/area/station/nk006/general/halls/central
	name = "Central Halls"
	icon_state = "general_halls"

/area/station/nk006/general/halls/north
	name = "Northern Halls"
	icon_state = "general_halls"

/area/station/nk006/general/halls/south
	name = "Southern Halls"
	icon_state = "general_halls"

/area/station/nk006/general/halls/east
	name = "Eastern Halls"
	icon_state = "general_halls"

/area/station/nk006/general/halls/west
	name = "Western Halls"
	icon_state = "general_halls"

//// == COMMAND DEPARTMENT ==

/area/station/nk006/command
	name = "Command"
	icon_state = "command"
	ambientsounds = list('sound/ambience/signal.ogg')
	airlock_wires = /datum/wires/airlock/command
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/nk006/command/fab
	name = "Command Fab"
	icon_state = "command_fab"

/area/station/nk006/command/cap
	name = "Captain's Quarters"
	icon_state = "command_cap"

/area/station/nk006/command/sec
	name = "Security"
	icon_state = "command_sec"

/area/station/nk006/command/sec/prison
	name = "Prison"
	icon_state = "security_prison"

/area/station/nk006/command/sec/prison/botany
	name = "Prison Farm"
	icon_state = "security_prison"

/area/station/nk006/command/sec/prison/restrooms
	name = "Prison Restrooms"
	icon_state = "security_prison"

/area/station/nk006/command/sec/armory
	name = "Security Armory"
	icon_state = "command_sec"

/area/station/nk006/command/hos
	name = "HOS Quarters"
	icon_state = "command_hos"

/area/station/nk006/command/dip
	name = "Diplomatic Corps."
	icon_state = "command_dip"

/area/station/nk006/command/min
	name = "Pathfinders' Quarters"
	icon_state = "command_min"

//// == SUPPORT DEPARTMENT ==
/area/station/nk006/support
	name = "Support"
	icon_state = "support"
	ambience_index = AMBIENCE_ENGI
	airlock_wires = /datum/wires/airlock/engineering
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/nk006/support/fab
	name = "Support Fab"
	icon_state = "support_fab"

/area/station/nk006/support/eng
	name = "Engineering"
	icon_state = "support_eng"

/area/station/nk006/support/eng/engine
	name = "Engine Room"
	icon_state = "engine_general"

/area/station/nk006/support/eng/engine/sm
	name = "Supermatter Room"
	icon_state = "engine_sm"

/area/station/nk006/support/eng/engine/sm/chamber
	name = "Supermatter Chamber"
	icon_state = "engine_sm"

/area/station/nk006/support/eng/engine/sng
	name = "Singularity Engine"
	icon_state = "engine_sng"

/area/station/nk006/support/eng/engine/teg
	name = "Tesla Engine"
	icon_state = "engine_teg"

/area/station/nk006/support/atm
	name = "Atmosia"
	icon_state = "support_atm"

/area/station/nk006/support/atm/mix
	name = "Atmosia Mix Chamber"
	icon_state = "atmosia_mix"

/area/station/nk006/support/atm/engine
	name = "Atmosia Engine"
	icon_state = "atmosia_engine"

/area/station/nk006/support/atm/turbine
	name = "Atmosia Turbine"
	icon_state = "atmosia_engine"

/area/station/nk006/support/ce
	name = "CE's Quarters"
	icon_state = "support_ce"

/area/station/nk006/support/crg
	name = "Cargo Bay"
	icon_state = "support_crg"

/area/station/nk006/support/crg/sort
	name = "Cargo Sorting"
	icon_state = "support_crg"

/area/station/nk006/support/crg/disposals
	name = "Disposals"
	icon_state = "support_crg"

/area/station/nk006/support/qm
	name = "QM's Quarters"
	icon_state = "support_qm"

/area/station/nk006/support/srv
	name = "Service Hall"
	icon_state = "support_srv"

/area/station/nk006/support/srv/kitchen
	name = "Kitchen"
	icon_state = "crew_kitchen"

/area/station/nk006/support/srv/bar
	name = "Bar"
	icon_state = "crew_bar"

/area/station/nk006/support/srv/quarters
	name = "Crew Quarters"
	icon_state = "crew_quarters"

/area/station/nk006/support/srv/quarters/restroom
	name = "Unisex Restrooms"
	icon_state = "crew_quarters"

/area/station/nk006/support/srv/vip
	name = "VIP Quarters"
	icon_state = "crew_vip"

/area/station/nk006/support/srv/vip/restroom
	name = "VIP Restrooms"
	icon_state = "crew_vip"

/area/station/nk006/support/srv/janitorial
	name = "Janitorial Storage"
	icon_state = "crew_janitorial"

/area/station/nk006/support/hop
	name = "HOP's Quarters"
	icon_state = "support_hop"

//// == SPECIALISTS ==
/area/station/nk006/specialist
	name = "Specialist"
	icon_state = "specialist"
	ambience_index = AMBIENCE_MEDICAL
	airlock_wires = /datum/wires/airlock/medbay
	sound_environment = SOUND_AREA_STANDARD_STATION
	min_ambience_cooldown = 90 SECONDS
	max_ambience_cooldown = 180 SECONDS

/area/station/nk006/specialist/fab
	name = "Specialist Fab"
	icon_state = "specialist_fab"

/area/station/nk006/specialist/med
	name = "Medbay"
	icon_state = "specialist_med"

/area/station/nk006/specialist/med/storage
	name = "Medbay Storage"
	icon_state = "specialist_med"

/area/station/nk006/specialist/med/chemistry
	name = "Medbay Chem Lab"
	icon_state = "medbay_chemistry"

/area/station/nk006/specialist/med/chemistry/pharma
	name = "Medbay Pharmacy"
	icon_state = "medbay_pharma"

/area/station/nk006/specialist/med/surgery
	name = "Medbay Treatment Centre"
	icon_state = "medbay_surgery"

/area/station/nk006/specialist/med/surgery/private
	name = "Medbay Operating Room"
	icon_state = "medbay_surgery"

/area/station/nk006/specialist/med/morgue
	name = "Medbay Morgue"
	icon_state = "medbay_morgue"

/area/station/nk006/specialist/cmo
	name = "CMO's Quarters"
	icon_state = "specialist_cmo"

/area/station/nk006/specialist/gen
	name = "Genetics"
	icon_state = "specialist_gen"

/area/station/nk006/specialist/sci
	name = "Science Lab"
	icon_state = "specialist_sci"

/area/station/nk006/specialist/sci/storage
	name = "Science Storage"
	icon_state = "specialist_sci"

/area/station/nk006/specialist/rob
	name = "Robotics Lab"
	icon_state = "specialist_rob"

/area/station/nk006/specialist/xnb
	name = "Xenobiology"
	icon_state = "specialist_xnb"

/area/station/nk006/specialist/xnb/vro
	name = "Virology"
	icon_state = "specialist_vro"

/area/station/nk006/specialist/xnb/vro/contain
	name = "Virology Containment"
	icon_state = "specialist_vro"

/area/station/nk006/specialist/rd
	name = "RD's Quarters"
	icon_state = "specialist_rd"

/area/station/nk006/specialist/bot
	name = "Botany"
	icon_state = "specialist_bot"
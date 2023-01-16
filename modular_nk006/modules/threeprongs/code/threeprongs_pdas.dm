// Base Color, Side Colors, Stripe Color, Button Colors
/datum/greyscale_config/tablet/nk006_pda
	name = "Two-Tone PDA"
	json_config = 'modular_nk006/modules/threeprongs/code/greyscales/pda_twotone.json'






// GENERIC PDA for FIXING THINGS
/obj/item/modular_computer/pda/nk006
	name = "generic PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#FF6600#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
	)



/**
 * Heads of Staff
 */

/obj/item/modular_computer/pda/nk006/heads
	greyscale_colors = "#FFFFFF#FF0000#FFFF00#7f7f00"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
	)


/obj/item/modular_computer/pda/nk006/heads/captain
	name = "captain PDA"
	greyscale_colors = "#FFFFFF#6600FF#FFFF00#7f7f00"
	inserted_item = /obj/item/pen/fountain/captain

/obj/item/modular_computer/pda/nk006/heads/captain/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_TABLET_CHECK_DETONATE, PROC_REF(tab_no_detonate))
	for(var/datum/computer_file/program/messenger/messenger_app in stored_files)
		messenger_app.spam_mode = TRUE

/obj/item/modular_computer/pda/nk006/heads/captain/proc/tab_no_detonate()
	SIGNAL_HANDLER
	return COMPONENT_TABLET_NO_DETONATE


/obj/item/modular_computer/pda/nk006/heads/hop
	name = "head of personnel PDA"
	greyscale_colors = "#FFFFFF#00FF00#FFFF00#7f7f00"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/job_management,
	)

/obj/item/modular_computer/pda/nk006/heads/hos
	name = "security chief PDA"
	greyscale_colors = "#FFFFFF#007FFF#FFFF00#7f7f00"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/records/security,
	)

/obj/item/modular_computer/pda/nk006/heads/ce
	name = "chief engineer PDA"
	greyscale_colors = "#FFFFFF#FF6600#FFFF00#7f7f00"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/supermatter_monitor,
	)

/obj/item/modular_computer/pda/nk006/heads/qm
	name = "quartermaster PDA"
	greyscale_colors = "#FFFFFF#AF7F3F#FFFF00#7f7f00"
	inserted_item = /obj/item/pen/survival
	stored_paper = 20
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/shipping,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/heads/cmo
	name = "chief medical officer PDA"
	greyscale_colors = "#FFFFFF#FF0000#FFFF00#7f7f00"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/phys_scanner/all,
		/datum/computer_file/program/records/medical,
	)

/obj/item/modular_computer/pda/nk006/heads/rd
	name = "chief medical officer PDA"
	greyscale_colors = "#FFFFFF#AAFF00#FFFF00#7f7f00"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/phys_scanner/chemistry,
		/datum/computer_file/program/signal_commander,
	)


// generic assistant-type PDAs
/obj/item/modular_computer/pda/nk006/command
	name = "command PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#6600FF#FFFFFF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
	)

/obj/item/modular_computer/pda/nk006/support
	name = "support PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF6600#FFFFFF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
	)

/obj/item/modular_computer/pda/nk006/specialist
	name = "specialist PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#FFFFFF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/crew_manifest,
	)

//sec PDAs
/obj/item/modular_computer/pda/nk006/security
	name = "security PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#007FFF#6600FF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/crew_manifest,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/security/lawyer
	name = "lawyer PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#007FFF#00FF00#7f7f7f"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/records/security,
	)

/obj/item/modular_computer/pda/nk006/security/lawyer/Initialize(mapload)
	. = ..()
	for(var/datum/computer_file/program/messenger/messenger_app in stored_files)
		messenger_app.spam_mode = TRUE

//engi PDAs
/obj/item/modular_computer/pda/nk006/engineering
	name = "engineering PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF6600#FF7F00#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/supermatter_monitor,
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/alarm_monitor,
	)

/obj/item/modular_computer/pda/nk006/engineering/damcon
	name = "damage control PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF6600#FF0000#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/phys_scanner/medical,
		/datum/computer_file/program/radar/lifeline,
	)

//cargo PDAs
/obj/item/modular_computer/pda/nk006/cargo
	name = "cargo PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AF7F3F#FF6600#7f7f7f"
	stored_paper = 20
	starting_programs = list(
		/datum/computer_file/program/shipping,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/cargo/mine
	name = "pathfinders' PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AF7F3F#6600FF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/shipping,
		/datum/computer_file/program/skill_tracker,
		/datum/computer_file/program/phys_scanner/medical,
		/datum/computer_file/program/radar/lifeline,
	)

//service PDAs
/obj/item/modular_computer/pda/nk006/service
	name = "service PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#00FF00#FF6600#7f7f7f"

/obj/item/modular_computer/pda/nk006/service/janitor
	name = "janitorial PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#00FF00#FF7F00#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/skill_tracker,
		/datum/computer_file/program/radar/custodial_locator,
	)

//medical PDAs
/obj/item/modular_computer/pda/nk006/medical
	name = "medical PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF0000#AAFF00#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/phys_scanner/medical,
		/datum/computer_file/program/phys_scanner/chemistry,
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/medical/emt
	name = "emergency medtechs' PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF0000#FF6600#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/phys_scanner/medical,
		/datum/computer_file/program/phys_scanner/chemistry,
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/radar/lifeline,
	)

/obj/item/modular_computer/pda/nk006/medical/chemist
	name = "chemist's PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF0000#7FFF00#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/phys_scanner/chemistry, //todo: chem dispenser recipe list accessible from PDA
	)

//science PDAs
/obj/item/modular_computer/pda/nk006/science
	name = "science PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#007FFF#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/signal_commander,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/science/bio
	name = "biologist PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#FF0000#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/phys_scanner/medical,
		/datum/computer_file/program/phys_scanner/chemistry,
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/nk006/science/matsci
	name = "materials science PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#FF6600#7f7f7f"
	starting_programs = list(
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/signal_commander,
		/datum/computer_file/program/robocontrol,
	)

//specialist service PDAs
/obj/item/modular_computer/pda/nk006/medical/psych
	name = "therapists' PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#FF0000#00FF00#7f7f7f"

/obj/item/modular_computer/pda/nk006/science/botany
	name = "botanists' PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#00FF00#7f7f7f"

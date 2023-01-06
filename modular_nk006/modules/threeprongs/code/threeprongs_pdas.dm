// Base Color, Side Colors, Stripe Color, Button Colors
/datum/greyscale_config/tablet/nk006_pda
	name = "Two-Tone PDA"
	json_config = 'modular_nk006/modules/threeprongs/code/greyscales/pda_twotone.json'






// GENERIC PDA for FIXING THINGS
/obj/item/modular_computer/pda/nk006
	name = "generic PDA"
	greyscale_config = /datum/greyscale_config/tablet/nk006_pda
	greyscale_colors = "#FFFFFF#AAFF00#FF6600#7f7f00"
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
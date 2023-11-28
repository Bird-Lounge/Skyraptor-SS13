/proc/possess(obj/O in world)
	set name = "Possess Obj"
	set category = "Object"

	if((O.obj_flags & DANGEROUS_POSSESSION) && CONFIG_GET(flag/forbid_singulo_possession))
		to_chat(usr, "[O] is too powerful for you to possess.", confidential = TRUE)
		return

	var/turf/T = get_turf(O)

	if(T)
		log_admin("[key_name(usr)] has possessed [O] ([O.type]) at [AREACOORD(T)]")
		message_admins("[key_name(usr)] has possessed [O] ([O.type]) at [AREACOORD(T)]")
	else
		log_admin("[key_name(usr)] has possessed [O] ([O.type]) at an unknown location")
		message_admins("[key_name(usr)] has possessed [O] ([O.type]) at an unknown location")

	if(!usr.control_object) //If you're not already possessing something...
		usr.name_archive = usr.real_name

	usr.forceMove(O)
	usr.real_name = O.name
	usr.name = O.name
	usr.reset_perspective(O)
	usr.control_object = O
	O.AddElement(/datum/element/weather_listener, /datum/weather/ash_storm, ZTRAIT_ASHSTORM, GLOB.ash_storm_sounds)
<<<<<<< HEAD

	/// SKYRAPTOR ADDITION: modular weather sounds
	for(var/spath in subtypesof(/datum/mapping_weather_handler))
		var/datum/mapping_weather_handler/S = new spath()
		S.add_weathertype(O)
	/// SKYRAPTOR ADDITION END

	SSblackbox.record_feedback("tally", "admin_verb", 1, "Possess Object") // If you are copy-pasting this, ensure the 4th parameter is unique to the new proc!
=======
	BLACKBOX_LOG_ADMIN_VERB("Possess Object")
>>>>>>> 566c7ba9c23 (Removes some code soul (`IF YOU ARE COPY PASTING THIS...`), replaces it with a macro (#79935))

/proc/release()
	set name = "Release Obj"
	set category = "Object"

	if(!usr.control_object) //lest we are banished to the nullspace realm.
		return

	if(usr.name_archive) //if you have a name archived
		usr.real_name = usr.name_archive
		usr.name_archive = ""
		usr.name = usr.real_name
		if(ishuman(usr))
			var/mob/living/carbon/human/H = usr
			H.name = H.get_visible_name()

	usr.control_object.RemoveElement(/datum/element/weather_listener, /datum/weather/ash_storm, ZTRAIT_ASHSTORM, GLOB.ash_storm_sounds)

	/// SKYRAPTOR ADDITION: modular weather sounds
	for(var/spath in subtypesof(/datum/mapping_weather_handler))
		var/datum/mapping_weather_handler/S = new spath()
		S.del_weathertype(usr.control_object)
	/// SKYRAPTOR ADDITION END

	usr.forceMove(get_turf(usr.control_object))
	usr.reset_perspective()
	usr.control_object = null
	BLACKBOX_LOG_ADMIN_VERB("Release Object")

/proc/givetestverbs(mob/M in GLOB.mob_list)
	set desc = "Give this guy possess/release verbs"
	set category = "Debug"
	set name = "Give Possessing Verbs"
	add_verb(M, GLOBAL_PROC_REF(possess))
	add_verb(M, GLOBAL_PROC_REF(release))
	BLACKBOX_LOG_ADMIN_VERB("Give Possessing Verbs")

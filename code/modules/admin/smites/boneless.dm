/// Gives the target critically bad wounds
/datum/smite/boneless
	name = ":B:oneless"

/datum/smite/boneless/effect(client/user, mob/living/target)
	. = ..()

	if (!iscarbon(target))
		to_chat(user, span_warning("This must be used on a carbon mob."), confidential = TRUE)
		return

	var/mob/living/carbon/carbon_target = target
	for(var/obj/item/bodypart/limb as anything in carbon_target.bodyparts)
<<<<<<< HEAD
		var/type_wound = pick(list(
			/datum/wound/blunt/bone/critical,
			/datum/wound/blunt/bone/severe,
			/datum/wound/blunt/bone/critical,
			/datum/wound/blunt/bone/severe,
			/datum/wound/blunt/bone/moderate,
=======
		var/severity = pick_weight(list(
			WOUND_SEVERITY_MODERATE = 1,
			WOUND_SEVERITY_SEVERE = 2,
			WOUND_SEVERITY_CRITICAL = 2,
>>>>>>> bb1a4a05bca (Fixes Boneless Smite (#78449))
		))
		limb.force_wound_upwards(type_wound, smited = TRUE)

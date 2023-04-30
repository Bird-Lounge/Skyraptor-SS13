/datum/emote/living/carbon/snake_scream
	key = "agony"
	key_third_person = "agonizes"
	message = "seizes up and falls limp, their eyes dead and lifeless..."
	muzzle_ignore = FALSE
	hands_use_check = FALSE
	emote_type = EMOTE_AUDIBLE | EMOTE_VISIBLE
	audio_cooldown = 1 SECONDS
	vary = FALSE

/datum/emote/living/carbon/snake_scream/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(isliving(user))
		var/mob/living/liveuser = user
		liveuser.set_resting(TRUE, TRUE, FALSE)
		if(liveuser.death_message)
			message = liveuser.death_message
		else
			message = "seizes up and falls limp, their eyes dead and lifeless..."

/datum/emote/living/carbon/snake_scream/get_sound(mob/living/user)
	return pick('modular_nk006/modules/newemotes/sounds/snake_fucking_died.ogg')

/datum/emote/living/carbon/snake_scream/jc
	key = "jcagony"
	key_third_person = "agonizes like jc"

/datum/emote/living/carbon/snake_scream/jc/get_sound(mob/living/user)
	return pick('modular_nk006/modules/newemotes/sounds/jc_fucking_died.ogg')

/datum/emote/living/carbon/meme_screem
	key = "oldscream"
	key_third_person = "oldscreams"
	message = "lets out an agonized scream!"
	muzzle_ignore = FALSE
	hands_use_check = FALSE
	emote_type = EMOTE_AUDIBLE | EMOTE_VISIBLE
	audio_cooldown = 1 SECONDS
	vary = FALSE

/datum/emote/living/carbon/meme_scream/get_sound(mob/living/user)
	return pick('sound/voice/human/malescream_2.ogg')
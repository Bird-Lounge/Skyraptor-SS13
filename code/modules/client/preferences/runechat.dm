/datum/preference/toggle/enable_runechat
	category = PREFERENCE_CATEGORY_GAME_PREFERENCES
	savefile_key = "chat_on_map"
	savefile_identifier = PREFERENCE_PLAYER

/datum/preference/toggle/enable_runechat_non_mobs
	category = PREFERENCE_CATEGORY_GAME_PREFERENCES
	savefile_key = "see_chat_non_mob"
	savefile_identifier = PREFERENCE_PLAYER

/datum/preference/toggle/see_rc_emotes
	category = PREFERENCE_CATEGORY_GAME_PREFERENCES
	savefile_key = "see_rc_emotes"
	savefile_identifier = PREFERENCE_PLAYER

/datum/preference/numeric/max_chat_length
	category = PREFERENCE_CATEGORY_GAME_PREFERENCES
	savefile_key = "max_chat_length"
	savefile_identifier = PREFERENCE_PLAYER

	minimum = 1
	maximum = CHAT_MESSAGE_MAX_LENGTH

/datum/preference/numeric/max_chat_length/create_default_value()
	return CHAT_MESSAGE_MAX_LENGTH

/datum/preference/color/runechat_color
	savefile_key = "runechat_color"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL

/datum/preference/color/runechat_color/apply_to_human(mob/living/carbon/human/target, value)
	target.chat_color = value
	target.chat_color_darkened = "#[num2hex(GETREDPART(value)*0.85, 2)][num2hex(GETGREENPART(value)*0.85, 2)][num2hex(GETBLUEPART(value)*0.85, 2)]"
	target.chat_color_name = "__PREFS__"

/datum/preference/color/runechat_color/create_default_value()
	// from code/datums/chatmessage.dm - this is a port of colorize_string to create consistent colors for charprefs
	// seed to help randomness
	var/static/rseed = rand(1,26)

	// get hsl using the selected 6 characters of the md5 hash
	var/hash = copytext(md5("[hex2num(rand(1048576, 16777215))]"), rseed, rseed + 6)
	var/h = hex2num(copytext(hash, 1, 3)) * (360 / 255)
	var/s = (hex2num(copytext(hash, 3, 5)) >> 2) * ((CM_COLOR_SAT_MAX - CM_COLOR_SAT_MIN) / 63) + CM_COLOR_SAT_MIN
	var/l = (hex2num(copytext(hash, 5, 7)) >> 2) * ((CM_COLOR_LUM_MAX - CM_COLOR_LUM_MIN) / 63) + CM_COLOR_LUM_MIN

	// convert to rgb
	var/h_int = round(h/60) // mapping each section of H to 60 degree sections
	var/c = (1 - abs(2 * l - 1)) * s
	var/x = c * (1 - abs((h / 60) % 2 - 1))
	var/m = l - c * 0.5
	x = (x + m) * 255
	c = (c + m) * 255
	m *= 255
	switch(h_int)
		if(0)
			return "#[num2hex(c, 2)][num2hex(x, 2)][num2hex(m, 2)]"
		if(1)
			return "#[num2hex(x, 2)][num2hex(c, 2)][num2hex(m, 2)]"
		if(2)
			return "#[num2hex(m, 2)][num2hex(c, 2)][num2hex(x, 2)]"
		if(3)
			return "#[num2hex(m, 2)][num2hex(x, 2)][num2hex(c, 2)]"
		if(4)
			return "#[num2hex(x, 2)][num2hex(m, 2)][num2hex(c, 2)]"
		if(5)
			return "#[num2hex(c, 2)][num2hex(m, 2)][num2hex(x, 2)]"

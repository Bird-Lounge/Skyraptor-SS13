/// SKYRAPTOR EDIT: completely redoing the style list, up to 9 tiers
#define STYLE_FADED 1
#define STYLE_ECLIPSED 2
#define STYLE_DIM 3
#define STYLE_COSMIC 4
#define STYLE_BINARY 5
#define STYLE_AURORA 6
#define STYLE_SPACED 7
#define STYLE_SPACEDPLUS 8
#define STYLE_SPACEDPLUSPLUS 9
/// SKYRAPTOR EDIT END

#define ACTION_KILL "KILL"
#define ACTION_MINOR_KILL "MINOR KILL"
#define ACTION_MAJOR_KILL "MAJOR KILL"
#define ACTION_DISRESPECT "DISRESPECT"
#define ACTION_MELEED "MELEE'D"
#define ACTION_ROCK_MINED "ROCK MINED"
#define ACTION_ORE_MINED "ORE MINED"
#define ACTION_TRAPPER "TRAPPER"
#define ACTION_PARRIED "PARRIED"
#define ACTION_PROJECTILE_BOOST "PROJECTILE BOOST"
#define ACTION_GIBTONITE_HIT "GIBTONITE HIT"
#define ACTION_GIBTONITE_BOOM "GIBTONITE BOOM"
#define ACTION_GIBTONITE_DEFUSED "GIBTONITE DEFUSED"
#define ACTION_MARK_DETONATED "MARK DETONATED"
#define ACTION_GEYSER_MARKED "GEYSER MARKED"

/datum/component/style
	/// Amount of style we have.
	var/style_points = -1
	/// Our style point multiplier.
	var/point_multiplier = 1
	
	/// SKYRAPTOR ADDITION: when this is above 0, you won't lose style points.  do really stylish stuff to get periods of style-loss immunity!
	var/styleloss_cooldown = -1
	/// SKYRAPTOR ADDITION: used so that cumulatively stylish things (e.g, managing to ace a swarm with gibtonite) can count
	var/style_gained_this_tick
	
	/// The current rank we have.
	var/rank = STYLE_FADED
	/// The last point affecting actions we've done
	var/list/actions = list()
	/// The style meter shown on screen.
	var/atom/movable/screen/style_meter_background/meter
	/// The image of the style meter.
	var/atom/movable/screen/style_meter/meter_image
	/// The timer for meter updating
	var/timerid
	/// Highest score attained by this component, to avoid as much overhead when considering to award a high score to the client
	var/high_score = 0
	/// Weakref to the added projectile parry component
	var/datum/weakref/projectile_parry
	/// What rank, minimum, the user needs to be to hotswap items
	var/hotswap_rank = STYLE_COSMIC
	/// If this is multitooled, making it make funny noises on the user's rank going up
	var/multitooled = FALSE
	/// A static list of lists of all the possible sounds to play when multitooled, in numerical order
	var/static/list/rankup_sounds = list(
		list(
			'sound/items/style/combo_dull1.ogg',
			'sound/items/style/combo_dull2.ogg',
			'sound/items/style/combo_dull3.ogg',
		),
		list(
			'sound/items/style/combo_cool1.ogg',
			'sound/items/style/combo_cool2.ogg',
			'sound/items/style/combo_cool3.ogg',
		),
		list(
			'sound/items/style/combo_brutal1.ogg',
			'sound/items/style/combo_brutal2.ogg',
			'sound/items/style/combo_brutal3.ogg',
		),
		list(
			'sound/items/style/combo_absolute1.ogg',
			'sound/items/style/combo_absolute2.ogg',
			'sound/items/style/combo_absolute3.ogg',
		),
		list(
			'sound/items/style/combo_spaced1.ogg',
			'sound/items/style/combo_spaced2.ogg',
		),
	)


/datum/component/style/Initialize(multitooled = FALSE)
	if(!ismob(parent))
		return COMPONENT_INCOMPATIBLE

	var/mob/mob_parent = parent

	meter = new()
	meter_image = new()
	meter.vis_contents += meter_image
	meter_image.add_filter("meter_mask", 1, list(type = "alpha", icon = icon('modular_skyraptor/modules/aesthetics/ui_greenened/hud/style_meter.dmi', "style_meter"), flags = MASK_INVERSE)) /// SKYRAPTOR EDIT: style meter *Weh
	meter.update_appearance()
	meter_image.update_appearance()

	update_screen()

	if(mob_parent.hud_used)
		mob_parent.hud_used.static_inventory += meter
		mob_parent.hud_used.show_hud(mob_parent.hud_used.hud_version)

	START_PROCESSING(SSdcs, src)

	if(multitooled)
		src.multitooled = multitooled

	RegisterSignal(src, COMSIG_ATOM_TOOL_ACT(TOOL_MULTITOOL), PROC_REF(on_parent_multitool))

/datum/component/style/RegisterWithParent()
	RegisterSignal(parent, COMSIG_MOB_ITEM_AFTERATTACK, PROC_REF(hotswap))
	RegisterSignal(parent, COMSIG_MOB_MINED, PROC_REF(on_mine))
	RegisterSignal(parent, COMSIG_MOB_APPLY_DAMAGE, PROC_REF(on_take_damage))
	RegisterSignal(parent, COMSIG_MOB_EMOTED("flip"), PROC_REF(on_flip))
	RegisterSignal(parent, COMSIG_MOB_EMOTED("spin"), PROC_REF(on_spin))
	RegisterSignal(parent, COMSIG_MOB_ITEM_ATTACK, PROC_REF(on_attack))
	RegisterSignal(parent, COMSIG_LIVING_UNARMED_ATTACK, PROC_REF(on_punch))
	RegisterSignal(SSdcs, COMSIG_GLOB_MOB_DEATH, PROC_REF(on_death))
	RegisterSignal(parent, COMSIG_LIVING_RESONATOR_BURST, PROC_REF(on_resonator_burst))
	RegisterSignal(parent, COMSIG_LIVING_PROJECTILE_PARRIED, PROC_REF(on_projectile_parry))
	RegisterSignal(parent, COMSIG_LIVING_DEFUSED_GIBTONITE, PROC_REF(on_gibtonite_defuse))
	RegisterSignal(parent, COMSIG_LIVING_CRUSHER_DETONATE, PROC_REF(on_crusher_detonate))
	RegisterSignal(parent, COMSIG_LIVING_DISCOVERED_GEYSER, PROC_REF(on_geyser_discover))

	projectile_parry = WEAKREF(parent.AddComponent(\
		/datum/component/projectile_parry,\
		list(\
			/obj/projectile/colossus,\
			/obj/projectile/temp/watcher,\
			/obj/projectile/kinetic,\
			/obj/projectile/bileworm_acid,\
			/obj/projectile/herald,\
			/obj/projectile/kiss,\
			)\
		)
	)


/datum/component/style/UnregisterFromParent()
	UnregisterSignal(parent, COMSIG_MOB_ITEM_AFTERATTACK)
	UnregisterSignal(parent, COMSIG_MOB_MINED)
	UnregisterSignal(parent, COMSIG_MOB_APPLY_DAMAGE)
	UnregisterSignal(parent, list(COMSIG_MOB_EMOTED("flip"), COMSIG_MOB_EMOTED("spin")))
	UnregisterSignal(parent, list(COMSIG_MOB_ITEM_ATTACK, COMSIG_LIVING_UNARMED_ATTACK))
	UnregisterSignal(SSdcs, COMSIG_GLOB_MOB_DEATH)
	UnregisterSignal(parent, COMSIG_LIVING_RESONATOR_BURST)
	UnregisterSignal(parent, COMSIG_LIVING_PROJECTILE_PARRIED)
	UnregisterSignal(parent, COMSIG_LIVING_DEFUSED_GIBTONITE)
	UnregisterSignal(parent, COMSIG_LIVING_CRUSHER_DETONATE)
	UnregisterSignal(parent, COMSIG_LIVING_DISCOVERED_GEYSER)

	if(projectile_parry)
		qdel(projectile_parry.resolve())


/datum/component/style/Destroy(force, silent)
	STOP_PROCESSING(SSdcs, src)
	var/mob/mob_parent = parent
	if(mob_parent.hud_used)
		mob_parent.hud_used.static_inventory -= meter
		mob_parent.hud_used.show_hud(mob_parent.hud_used.hud_version)
	return ..()


/datum/component/style/process(seconds_per_tick)
	point_multiplier = round(max(point_multiplier - 0.2 * seconds_per_tick, 1), 0.1)
	if(styleloss_cooldown > 0) /// SKYRAPTOR ADDITION: styleloss cooldown system
		styleloss_cooldown -= seconds_per_tick
	else
		change_points(-4 * seconds_per_tick * ROUND_UP((style_points + 1) / 200), use_multiplier = FALSE)
	if(style_gained_this_tick > 120) // equivalent to 3 ores simultaneously, or about 5 rocks, at lowest rank.
		if(styleloss_cooldown < 0)
			styleloss_cooldown = 0
		styleloss_cooldown += style_gained_this_tick / 240 //3 ores would grant 1/2 a second of cooldown immunity at lowest rank.
	style_gained_this_tick = 0 /// SKYRAPTOR ADDITION END
	update_screen()



/datum/component/style/proc/add_action(action, amount)
	if(length(actions) > 8) /// SKYRAPTOR EDIT: 9 actions is too much, it'll clip off-screen
		actions.Cut(1, 2)
	if(length(actions))
		var/last_action = actions[length(actions)]
		if(action == actions[last_action])
			amount *= 0.5
	var/id
	while(!id || (id in actions))
		id = "action[rand(1, 1000)]"
	actions[id] = action
	change_points(amount)
	addtimer(CALLBACK(src, PROC_REF(remove_action), id), 10 SECONDS)

/datum/component/style/proc/remove_action(action_id)
	actions -= action_id
	update_screen()

/datum/component/style/proc/change_points(amount, use_multiplier = TRUE)
	if(!amount)
		return

	var/modified_amount = amount * (amount > 0 ? 1 - 0.1 * rank : 1) * (use_multiplier ? point_multiplier : 1)
	if(modified_amount > 0)
		style_gained_this_tick += modified_amount + (amount / 2) //reduces the loss of scaling due to higher ranks/point mults
	style_points = max(style_points + modified_amount, -1)
	update_screen()

	if(style_points > high_score)
		var/mob/mob_parent = parent
		if((mob_parent.flags_1 & ADMIN_SPAWNED_1) || (mob_parent.datum_flags & DF_VAR_EDITED) || (datum_flags & DF_VAR_EDITED) || !SSachievements.achievements_enabled || !mob_parent.client) // No varediting/spawning this or the owner
			return

		var/award_status = mob_parent.client.get_award_status(/datum/award/score/style_score)

		if(award_status >= style_points)
			high_score = style_points
			return

		mob_parent.client.give_award(/datum/award/score/style_score, mob_parent, style_points - award_status)
		high_score = style_points

/datum/component/style/proc/update_screen(rank_changed)
	var/go_back = null
	if(!isnull(rank_changed))
		timerid = null
		if(rank_changed == point_to_rank())
			go_back = rank > rank_changed ? 100 : 0

			if(multitooled && (rank_changed > rank)) // make funny noises
				var/mob/mob_parent = parent
				// TODO: we need to make new rankup sounds for the new ranks
				//mob_parent.playsound_local(get_turf(mob_parent), pick(rankup_sounds[rank_changed]), 70, vary = FALSE)

			if((rank < hotswap_rank) && (rank_changed >= hotswap_rank))
				var/mob/mob_parent = parent
				mob_parent.balloon_alert(mob_parent, "hotswapping enabled")

			else if((rank >= hotswap_rank) && (rank_changed < hotswap_rank))
				var/mob/mob_parent = parent
				mob_parent.balloon_alert(mob_parent, "hotswapping disabled")

			rank = rank_changed
	meter.maptext = "[format_rank_string(rank)][generate_multiplier(rank)][generate_actions()]"
	//meter.maptext_y = 80 - 10 * length(actions) /// SKYRAPTOR EDIT: adjusting for new fonts
	update_meter(point_to_rank(), go_back)

/datum/component/style/proc/update_meter(new_rank, go_back)
	if(!isnull(go_back))
		animate(meter_image.get_filter("meter_mask"), time = 0 SECONDS, flags = ANIMATION_END_NOW, x = go_back)
	animate(meter_image.get_filter("meter_mask"), time = 1 SECONDS, x = (rank > new_rank ? 0 : ((rank < new_rank) || (style_points >= 500) ? 100 : (style_points % 100) + 1)))
	if(!isnull(new_rank) && new_rank != rank && !timerid)
		timerid = addtimer(CALLBACK(src, PROC_REF(update_screen), new_rank), 1 SECONDS)

/datum/component/style/proc/rank_to_color(new_rank)
	switch(new_rank)
		if(STYLE_FADED)
			return "#FFFFFF"
		if(STYLE_ECLIPSED)
			return "#333333"
		if(STYLE_DIM)
			return "#aaaaaa"
		if(STYLE_COSMIC)
			return "#6600FF"
		if(STYLE_BINARY)
			return "#00AAFF"
		if(STYLE_AURORA)
			return "#FF0066"
		if(STYLE_SPACED)
			return "#FF0000"
		if(STYLE_SPACEDPLUS)
			return "#FF6600"
		if(STYLE_SPACEDPLUSPLUS)
			return "#AAFF00"

/datum/component/style/proc/point_to_rank()
	switch(style_points)
		if(-1 to 99)
			return STYLE_FADED
		if(100 to 199)
			return STYLE_ECLIPSED
		if(200 to 299)
			return STYLE_DIM
		if(300 to 399)
			return STYLE_COSMIC
		if(400 to 499)
			return STYLE_BINARY
		if(500 to 599)
			return STYLE_AURORA
		if(600 to 699)
			return STYLE_SPACED
		if(700 to 799)
			return STYLE_SPACEDPLUS
	return STYLE_SPACEDPLUSPLUS

/datum/component/style/proc/rank_to_oremult(new_rank)
	switch(new_rank)
		if(STYLE_FADED)
			return 0.75
		if(STYLE_ECLIPSED)
			return 0.8
		if(STYLE_DIM)
			return 0.9
		if(STYLE_COSMIC)
			return 1.05
		if(STYLE_BINARY)
			return 1.25
		if(STYLE_AURORA)
			return 1.5
		if(STYLE_SPACED)
			return 1.8
		if(STYLE_SPACEDPLUS)
			return 2.15
		if(STYLE_SPACEDPLUSPLUS)
			return 2.45


/datum/component/style/proc/rank_to_string(new_rank)
	switch(new_rank)
		if(STYLE_FADED)
			return "FADED"
		if(STYLE_ECLIPSED)
			return "ECLIPSED"
		if(STYLE_DIM)
			return "DIM"
		if(STYLE_COSMIC)
			return "COSMIC"
		if(STYLE_BINARY)
			return "BINARY"
		if(STYLE_AURORA)
			return "AURORA"
		if(STYLE_SPACED)
			return "SPACED!"
		if(STYLE_SPACEDPLUS)
			return "SPACED!!"
		if(STYLE_SPACEDPLUSPLUS)
			return "SPACED!!!"

/datum/component/style/proc/format_rank_string(new_rank)
	var/rank_string = rank_to_string(new_rank)
	var/final_string = ""
	final_string += "<span class='context' valign='top'><font color='[rank_to_color(new_rank)]'><b>[rank_string[1]]</b>" /// SKYRAPTOR EDIT: using context instead of maptext on these because the end result is bad otherwise
	final_string += "<span class='context' valign='top'>[copytext(rank_string, 2)]</span></font></span>" /// SKYRAPTOR EDIT: using context instead of maptext on these because the end result is bad otherwise
	return final_string

/datum/component/style/proc/generate_multiplier(new_rank)
	return "<span class='maptext' valign='top'>, [point_multiplier]x/[rank_to_oremult(new_rank)*100]%</span>" /// SKYRAPTOR EDIT: shifted to be part of the main style meter

/datum/component/style/proc/generate_actions()
	var/action_string = ""
	for(var/action in actions)
		action_string += "<br><span class='maptext' valign='top'>+ <font color='[action_to_color(actions[action])]'>[actions[action]]</font></span>"
	return action_string

/datum/component/style/proc/action_to_color(action)
	switch(action)
		if(ACTION_KILL)
			return "#CC0000"
		if(ACTION_MINOR_KILL)
			return "#AA3333"
		if(ACTION_MAJOR_KILL)
			return "#FF1100"
		if(ACTION_DISRESPECT)
			return "#FF6600"
		if(ACTION_MELEED)
			return "#CC3366"
		if(ACTION_ROCK_MINED)
			return "#AAAAAA"
		if(ACTION_ORE_MINED)
			return "#AAFF00"
		if(ACTION_TRAPPER)
			return "#993300"
		if(ACTION_PARRIED)
			return "#66FF00"
		if(ACTION_PROJECTILE_BOOST)
			return "#00FFAA"
		if(ACTION_GIBTONITE_HIT)
			return "#112244"
		if(ACTION_GIBTONITE_BOOM)
			return "#FF00FF"
		if(ACTION_GIBTONITE_DEFUSED)
			return "#6600FF"
		if(ACTION_MARK_DETONATED)
			return "#AA6633"
		if(ACTION_GEYSER_MARKED)
			return "#00AAFF"

/// A proc that lets a user, when their rank >= `hotswap_rank`, swap items in storage with what's in their hands, simply by clicking on the stored item with a held item
/datum/component/style/proc/hotswap(mob/living/source, atom/target, obj/item/weapon, proximity_flag, click_parameters)
	SIGNAL_HANDLER

	if((rank < hotswap_rank) || !isitem(target) || !(target in source.get_all_contents()))
		return

	var/obj/item/item_target = target

	if(!(item_target.item_flags & IN_STORAGE))
		return

	var/datum/storage/atom_storage = item_target.loc.atom_storage

	if(!atom_storage.can_insert(weapon, source, messages = FALSE))
		source.balloon_alert(source, "unable to hotswap!")
		return

	atom_storage.attempt_insert(weapon, source, override = TRUE)
	INVOKE_ASYNC(source, TYPE_PROC_REF(/mob/living, put_in_hands), target)
	source.visible_message(span_notice("[source] quickly swaps [weapon] out with [target]!"), span_notice("You quickly swap [weapon] with [target]."))


/datum/component/style/proc/on_parent_multitool(datum/source, mob/living/user, obj/item/tool, list/recipes)
	multitooled = !multitooled
	user.balloon_alert(user, "meter [multitooled ? "" : "un"]hacked")


// Point givers
/datum/component/style/proc/on_punch(mob/living/carbon/human/punching_person, atom/attacked_atom, proximity)
	SIGNAL_HANDLER

	if(!proximity || !punching_person.combat_mode || !isliving(attacked_atom))
		return

	var/mob/living/disrespected = attacked_atom
	if(disrespected.stat || faction_check(punching_person.faction, disrespected.faction) || !(FACTION_MINING in disrespected.faction))
		return

	add_action(ACTION_DISRESPECT, 60 * (ismegafauna(disrespected) ? 2 : 1))

/datum/component/style/proc/on_attack(mob/living/attacking_person, mob/living/attacked_mob)
	SIGNAL_HANDLER

	if(!istype(attacked_mob) || attacked_mob.stat)
		return

	var/mob/living/attacked = attacked_mob
	var/mob/mob_parent = parent
	if(faction_check(attacking_person.faction, attacked.faction) || !(FACTION_MINING in attacked.faction) || (istype(mob_parent.get_active_held_item(), /obj/item/kinetic_crusher) && attacked.has_status_effect(/datum/status_effect/crusher_mark)))
		return

	add_action(ACTION_MELEED, 50 * (ismegafauna(attacked) ? 1.5 : 1))

/datum/component/style/proc/on_mine(datum/source, turf/closed/mineral/rock, give_exp)
	SIGNAL_HANDLER

	if(istype(rock, /turf/closed/mineral/gibtonite))
		var/turf/closed/mineral/gibtonite/gib_rock = rock
		switch(gib_rock.stage)
			if(GIBTONITE_UNSTRUCK)
				add_action(ACTION_GIBTONITE_HIT, 40)
				return

			if(GIBTONITE_ACTIVE)
				add_action(ACTION_GIBTONITE_BOOM, 50)
				return

			if(GIBTONITE_DETONATE)
				add_action(ACTION_GIBTONITE_BOOM, 50)
				return

	if(rock.mineralType)
		if(give_exp)
			add_action(ACTION_ORE_MINED, 40)
		rock.mineralAmt = ROUND_UP(rock.mineralAmt * rank_to_oremult(point_to_rank())) // You start out getting 20% less ore, but it goes up to 20% more at S-tier

	else if(give_exp)
		add_action(ACTION_ROCK_MINED, 25)

/datum/component/style/proc/on_resonator_burst(datum/source, mob/creator, mob/living/hit_living)
	SIGNAL_HANDLER

	if(faction_check(creator.faction, hit_living.faction) || (hit_living.stat != CONSCIOUS) || !(FACTION_MINING in hit_living.faction))
		return

	add_action(ACTION_TRAPPER, 70)

/datum/component/style/proc/on_projectile_parry(datum/source, obj/projectile/parried)
	SIGNAL_HANDLER

	if(parried.firer == parent)
		add_action(ACTION_PROJECTILE_BOOST, 160) // This is genuinely really impressive
	else
		add_action(ACTION_PARRIED, 110)

/datum/component/style/proc/on_gibtonite_defuse(datum/source, det_time)
	SIGNAL_HANDLER

	add_action(ACTION_GIBTONITE_DEFUSED, min(40, 20 * (10 - det_time))) // 40 to 180 points depending on speed

/datum/component/style/proc/on_crusher_detonate(datum/source, mob/living/target, obj/item/kinetic_crusher/crusher, backstabbed)
	SIGNAL_HANDLER

	if(target.stat == DEAD)
		return

	var/has_brimdemon_trophy = locate(/obj/item/crusher_trophy/brimdemon_fang) in crusher.trophies

	add_action(ACTION_MARK_DETONATED, round((backstabbed ? 60 : 30) * (ismegafauna(target) ? 1.5 : 1) * (has_brimdemon_trophy ? 1.25 : 1)))


/datum/component/style/proc/on_geyser_discover(datum/source, obj/structure/geyser/geyser)
	SIGNAL_HANDLER

	add_action(ACTION_GEYSER_MARKED, 100)


// Emote-based multipliers
/datum/component/style/proc/on_flip()
	SIGNAL_HANDLER

	point_multiplier = round(min(point_multiplier + 0.5, 3), 0.1)
	update_screen()

/datum/component/style/proc/on_spin()
	SIGNAL_HANDLER

	point_multiplier = round(min(point_multiplier + 0.3, 3), 0.1)
	update_screen()


// Negative effects
/datum/component/style/proc/on_take_damage(...)
	SIGNAL_HANDLER

	point_multiplier = round(max(point_multiplier - 0.3, 1), 0.1)
	change_points(-30, use_multiplier = FALSE)

/datum/component/style/proc/on_death(datum/source, mob/living/died, gibbed)
	SIGNAL_HANDLER

	var/mob/mob_parent = parent
	if(died == parent)
		change_points(-500, use_multiplier = FALSE)
		return
	else if(faction_check(mob_parent.faction, died.faction) || !(FACTION_MINING in died.faction) || (died.z != mob_parent.z) || !(died in view(mob_parent.client?.view, get_turf(mob_parent))))
		return
	if(styleloss_cooldown < 0)
		styleloss_cooldown = 0
	if(ismegafauna(died))
		add_action(ACTION_MAJOR_KILL, 350)
		styleloss_cooldown += 15

	else if(died.maxHealth >= 75) //at least legions
		add_action(ACTION_KILL, 125)
		styleloss_cooldown += 7

	else if(died.maxHealth >= 30) //at least goliath children, dont count legion skulls
		add_action(ACTION_MINOR_KILL, 75)
		styleloss_cooldown += 3

#undef STYLE_FADED
#undef STYLE_ECLIPSED
#undef STYLE_DIM
#undef STYLE_COSMIC
#undef STYLE_BINARY
#undef STYLE_AURORA
#undef STYLE_SPACED
#undef STYLE_SPACEDPLUS
#undef STYLE_SPACEDPLUSPLUS

#undef ACTION_KILL
#undef ACTION_MINOR_KILL
#undef ACTION_MAJOR_KILL
#undef ACTION_DISRESPECT
#undef ACTION_MELEED
#undef ACTION_ROCK_MINED
#undef ACTION_ORE_MINED
#undef ACTION_TRAPPER
#undef ACTION_PARRIED
#undef ACTION_PROJECTILE_BOOST
#undef ACTION_GIBTONITE_HIT
#undef ACTION_GIBTONITE_BOOM
#undef ACTION_GIBTONITE_DEFUSED
#undef ACTION_MARK_DETONATED
#undef ACTION_GEYSER_MARKED

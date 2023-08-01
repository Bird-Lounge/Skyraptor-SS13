/atom/movable/screen/lobby/background
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/background.dmi'

/atom/movable/screen/lobby/button/character_setup
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/character_setup.dmi'

/atom/movable/screen/lobby/button/ready
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/ready.dmi'

/atom/movable/screen/lobby/button/join
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/join.dmi'

/atom/movable/screen/lobby/button/observe
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/observe.dmi'

/atom/movable/screen/lobby/button/bottom
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/bottom_buttons.dmi'

/atom/movable/screen/lobby/button/bottom/poll/update_overlays() //this is a wee bit ugly but we roll with it
	. = ..()
	if(new_poll)
		. += mutable_appearance('modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/poll_overlay.dmi', "new_poll")

/atom/movable/screen/lobby/button/collapse
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/lobby_ui/collapse_expand.dmi'

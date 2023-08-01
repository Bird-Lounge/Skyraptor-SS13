/atom/movable/screen/pai/radio
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

/atom/movable/screen/robot
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

/datum/hud/robot
	ui_style = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

/datum/hud/robot/New(mob/owner)
	. = ..()
	hotkeybuttons -= pull_icon
	pull_icon.icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'
	hotkeybuttons += pull_icon

/atom/movable/screen/combattoggle/robot
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

/atom/movable/screen/zone_sel/robot
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

/atom/movable/screen/healths/robot
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/screen_cyborg.dmi'

// MOB.DM holds STANDARD HUD.DMI REF, so we had to MODIFY IT THERE



/// Style meter fixening HUGHNGH
/atom/movable/screen/style_meter_background
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/style_meter.dmi'
	maptext_height = 109
	maptext_width = 102
	maptext_x = 7
	maptext_y = 7

/atom/movable/screen/style_meter
	icon = 'modular_skyraptor/modules/aesthetics/ui_greenened/hud/style_meter.dmi'

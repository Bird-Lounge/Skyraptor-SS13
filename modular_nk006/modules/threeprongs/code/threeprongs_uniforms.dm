// I was going to make hodge-podge Trek-esque uniforms out of base spess suits anyways
// MIGHT AS WELL JUST CANONICALLY GIVE EVERYONE 'FLEET LOOKING UNIFORMS INSTEAD

/obj/item/clothing/under/trek/nk006_cmd
	name = "command uniform"
	desc = "The standard uniform of Command crew.  Durably woven for damage resistance, and tightly fit."
	icon_state = "trek_voy"
	inhand_icon_state = "y_suit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#6600ff"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 50, ACID = 50, WOUND = 10)
	strip_delay = 50

/obj/item/clothing/under/trek/nk006_sup
	name = "support uniform"
	desc = "The standard uniform of Support crew.  Fire and acid resistant weave protects against faulty engines, and cargo pockets grant that extra bit of storage."
	icon_state = "trek_voy"
	inhand_icon_state = "y_suit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#ff6600"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 80, ACID = 40)

/obj/item/clothing/under/trek/nk006_spc
	name = "specialist uniform"
	desc = "The standard uniform of Specialist crew.  The weave has nylon integrated for better resistance to biological agents."
	icon_state = "trek_voy"
	inhand_icon_state = "y_suit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#aaff00"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 10, BIO = 50, FIRE = 20, ACID = 30)

/obj/item/clothing/under/trek/nk006_all
	name = "off-duty uniform"
	desc = "The standard uniform of off-duty crew."
	icon_state = "trek_voy"
	inhand_icon_state = "y_suit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#ffffff"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
// I was going to make hodge-podge Trek-esque uniforms out of base spess suits anyways
// MIGHT AS WELL JUST CANONICALLY GIVE EVERYONE 'FLEET LOOKING UNIFORMS INSTEAD

/obj/item/clothing/under/trek/nk006_cmd
	name = "command uniform"
	desc = "The standard uniform of Command crew.  Durably woven for damage resistance, and tightly fit."
	icon_state = "trek_voy"
	inhand_icon_state = "jumpsuit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#6600ff"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 10, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 50, ACID = 50, WOUND = 10)
	strip_delay = 50
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/trek/nk006_cmd/Initialize(mapload)
	create_storage(max_slots = 3, max_specific_storage = WEIGHT_CLASS_SMALL)
	..()

/obj/item/clothing/under/trek/nk006_sup
	name = "support uniform"
	desc = "The standard uniform of Support crew.  Fire and acid resistant weave protects against faulty engines, and cargo pockets grant that extra bit of storage."
	icon_state = "trek_voy"
	inhand_icon_state = "jumpsuit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#ff6600"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 80, ACID = 40)
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/trek/nk006_sup/Initialize(mapload)
	create_storage(max_slots = 5, max_specific_storage = WEIGHT_CLASS_NORMAL)
	..()

/obj/item/clothing/under/trek/nk006_spc
	name = "specialist uniform"
	desc = "The standard uniform of Specialist crew.  The weave has nylon integrated for better resistance to biological agents."
	icon_state = "trek_voy"
	inhand_icon_state = "jumpsuit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#aaff00"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 10, BIO = 50, FIRE = 20, ACID = 30)
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/trek/nk006_spc/Initialize(mapload)
	create_storage(max_slots = 3, max_specific_storage = WEIGHT_CLASS_SMALL)
	..()

/obj/item/clothing/under/trek/nk006_all
	name = "off-duty uniform"
	desc = "The standard uniform of off-duty crew.  It's more durable than your skivvies, and the pockets are pretty deep."
	icon_state = "trek_voy"
	inhand_icon_state = "jumpsuit"
	greyscale_config = /datum/greyscale_config/trek
	greyscale_config_worn = /datum/greyscale_config/trek/worn
	greyscale_colors = "#ffffff"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 10, FIRE = 20, ACID = 30) //assistant clothes get the worst out of each above protection category, but still better than nothing
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/trek/nk006_all/Initialize(mapload)
	create_storage(max_slots = 3, max_specific_storage = WEIGHT_CLASS_NORMAL) //they don't get extra pockets, but they do get deeper ones, like Support crew
	..()





// HATS FOR HEADS OF STAFF
/obj/item/clothing/head/hats/nk006
	name = "centcom cap"
	desc = "A parade-worthy armored cap with gemstone inlays.  It's good to be the king of kings."
	icon_state = "cap_cc"
	worn_icon_state = "cap_cc_worn"
	icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_hats.dmi'
	worn_icon = 'modular_nk006/modules/threeprongs/icons/threeprongs_hats.dmi'
	flags_inv = 0
	armor = list(MELEE = 25, BULLET = 15, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, FIRE = 50, ACID = 50, WOUND = 5)
	strip_delay = 60
	dog_fashion = null

/obj/item/clothing/head/hats/nk006/captain
	name = "captain's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king."
	icon_state = "cap_captain"
	worn_icon_state = "cap_captain_worn"

/obj/item/clothing/head/hats/nk006/hos
	name = "chief of security's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's right hand."
	icon_state = "cap_hos"
	worn_icon_state = "cap_hos_worn"

/obj/item/clothing/head/hats/nk006/hop
	name = "first officer's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's left hand."
	icon_state = "cap_hop"
	worn_icon_state = "cap_hop_worn"

/obj/item/clothing/head/hats/nk006/ce
	name = "chief engineer's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's architect."
	icon_state = "cap_ce"
	worn_icon_state = "cap_ce_worn"

/obj/item/clothing/head/hats/nk006/qm
	name = "chief of resources' cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's vaultkeeper."
	icon_state = "cap_qm"
	worn_icon_state = "cap_qm_worn"

/obj/item/clothing/head/hats/nk006/cmo
	name = "chief medical officer's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's head cleric."
	icon_state = "cap_cmo"
	worn_icon_state = "cap_cmo_worn"

/obj/item/clothing/head/hats/nk006/rd
	name = "chief of science's cap"
	desc = "A parade-worthy armored cap.  It's good to be the king's court wizard."
	icon_state = "cap_cmo"
	worn_icon_state = "cap_cmo_worn"



// BERETS FOR SOME CREW
/obj/item/clothing/head/beret/nk006
	name = "intern's beret"
	desc = "A robust beret with the icon of Central Command on it. Uses reinforced fabric to offer sufficient protection."
	icon_state = "beret_badge"
	greyscale_config = /datum/greyscale_config/beret_badge
	greyscale_config_worn = /datum/greyscale_config/beret_badge/worn
	greyscale_colors = "#FFFFFF#AFFF00"
	armor = list(MELEE = 35, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 0, FIRE = 20, ACID = 50, WOUND = 4)
	strip_delay = 60
	dog_fashion = null
	flags_1 = NONE

/obj/item/clothing/head/beret/nk006/surgeon
	name = "surgeon's beret"
	desc = "A regular beret for surgeons with some nylon in its fabric.  Looks snazzy, keeps germs off your patients."
	greyscale_colors = "#FF0000#AFFF00"
	armor = list(BIO = 50)
	strip_delay = 20

/obj/item/clothing/head/beret/nk006/emt
	name = "emergency medtech's beret"
	desc = "A snazzy beret for EMTs with a carbon-fiber/nylon weave for protection."
	greyscale_colors = "#FF0000#FF6600"
	armor = list(MELEE = 10, LASER = 5, ENERGY = 5, BIO = 30, FIRE = 10, ACID = 10, WOUND = 5)
	strip_delay = 20
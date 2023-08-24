/obj/item/storage/backpack/duffelbag
	icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_inv.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_worn.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_lefthand.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_righthand.dmi'



/// Cargo storage (why didn't they have these to begin with??)
/obj/item/storage/backpack/cargo
	name = "cargo backpack"
	desc = "A tough, heavy-duty bag full of room for mail storage."
	icon_state = "backpack-cargo"
	inhand_icon_state = "backpack-cargo"

	icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_inv.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_worn.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_lefthand.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_righthand.dmi'

/obj/item/storage/backpack/satchel/cargo
	name = "cargo satchel"
	desc = "A tough, heavy-duty satchel full of room for mail storage."
	icon_state = "satchel-cargo"
	inhand_icon_state = "satchel-cargo"

	icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_inv.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_worn.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_lefthand.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_righthand.dmi'

/obj/item/storage/backpack/duffelbag/cargo
	name = "cargo duffelbag"
	desc = "A tough, heavy-duty duffelbag full of room for mail storage."
	icon_state = "duffel-cargo"
	inhand_icon_state = "duffel-cargo"

	icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_inv.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_worn.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_lefthand.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_righthand.dmi'

/obj/item/storage/backpack/messenger/cargo
	name = "cargo messenger bag"
	desc = "A tough, heavy-duty messenger bag full of room for mail storage."
	icon_state = "messenger_cargo"
	inhand_icon_state = "messenger_cargo"

	icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_inv.dmi'
	worn_icon = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_worn.dmi'
	lefthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_lefthand.dmi'
	righthand_file = 'modular_skyraptor/modules/aesthetics/unshitty_bags/backpack_righthand.dmi'



/// Outfit overrides to give cargo their new drip
/datum/outfit/job/cargo_tech
	backpack = /obj/item/storage/backpack/cargo
	satchel = /obj/item/storage/backpack/satchel/cargo
	duffelbag = /obj/item/storage/backpack/duffelbag/cargo
	messenger = /obj/item/storage/backpack/messenger/cargo

/datum/outfit/job/quartermaster
	backpack = /obj/item/storage/backpack/cargo
	satchel = /obj/item/storage/backpack/satchel/cargo
	duffelbag = /obj/item/storage/backpack/duffelbag/cargo
	messenger = /obj/item/storage/backpack/messenger/cargo

/datum/gear/utility/guns
	display_name = "guns"
	flags = GEAR_HAS_COLOR_SELECTION
	cost = 4
	sort_category = "Utility"
	path = /obj/item/weapon/gun/projectile/

/datum/gear/utility/guns/New()
	..()
	var/guns = list()
	guns["holdout reolver"] = /obj/item/weapon/gun/projectile/revolver/holdout
	guns["holdout pistol"] = /obj/item/weapon/gun/projectile/pistol/holdout
	guns["pistol"] = /obj/item/weapon/gun/projectile/pistol/sec
	gear_tweaks += new/datum/gear_tweak/path(guns)

/datum/gear/suit/resomicoat
		display_name = "small coat (Resomi)"
		path = /obj/item/clothing/suit/storage/toggle/Resomicoat
		sort_category = "Xenowear"
		whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi
	display_name = "smock, grey (Resomi)"
	path = /obj/item/clothing/under/resomi
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/rainbow
	display_name = "smock, rainbow (Resomi)"
	path = /obj/item/clothing/under/resomi/rainbow
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/white
	display_name = "smock, colored (Resomi)"
	path = /obj/item/clothing/under/resomi/white
	whitelisted = list(SPECIES_RESOMI)
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/resomi/eng
	display_name = "uniform, Engineering (Resomi)"
	path = /obj/item/clothing/under/resomi/yellow
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/sec
	display_name = "uniform, Security (Resomi)"
	path = /obj/item/clothing/under/resomi/red
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/med
	display_name = "uniform, Medical (Resomi)"
	path = /obj/item/clothing/under/resomi/medical
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/science
	display_name = "uniform, Science (Resomi)"
	path = /obj/item/clothing/under/resomi/science
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/dress
	display_name = "small dress (Resomi)"
	path = /obj/item/clothing/under/resomi/dress
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/uniform
	display_name = "small uniform (Resomi)"
	path = /obj/item/clothing/under/resomi/uniform
	whitelisted = list(SPECIES_RESOMI)

/datum/gear/uniform/resomi/formal
	display_name = "small formal uniform (Resomi)"
	path = /obj/item/clothing/under/resomi/formal
	whitelisted = list(SPECIES_RESOMI)
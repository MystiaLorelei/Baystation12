/datum/gear/utility/guns
	display_name = "guns"
	flags = GEAR_HAS_COLOR_SELECTION
	cost = 4
	sort_category = "Utility"
	path = /obj/item/weapon/gun/projectile/

/datum/gear/utility/guns/New()
	..()
	var/guns = list()
	guns["holdout"] = /obj/item/weapon/gun/projectile/pistol
	guns[".45 gun"] = /obj/item/weapon/gun/projectile/sec
	gear_tweaks += new/datum/gear_tweak/path(guns)

/datum/gear/eyes
	display_name = "eyepatch"
	path = /obj/item/clothing/glasses/eyepatch
	slot = slot_glasses
	sort_category = "Glasses and Eyewear"

/datum/gear/eyes/glasses
	display_name = "prescription glasses"
	path = /obj/item/clothing/glasses/regular

/datum/gear/eyes/shades/
	display_name = "sunglasses"
	path = /obj/item/clothing/glasses/sunglasses
	cost = 1

// Alien clothing.
/datum/gear/suit/unathi_mantle
	display_name = "hide mantle (Unathi)"
	path = /obj/item/clothing/suit/unathi/mantle
	cost = 1
	whitelisted = list(SPECIES_UNATHI)
	sort_category = "Xenowear"

/datum/gear/suit/unathi_robe
	display_name = "roughspun robe (Unathi)"
	path = /obj/item/clothing/suit/unathi/robe
	cost = 1
	whitelisted = list(SPECIES_UNATHI)
	sort_category = "Xenowear"

//Skrell Chains
/datum/gear/ears/skrell/chains
	display_name = "headtail chain selection (Skrell)"
	path = /obj/item/clothing/ears/skrell/chain
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/ears/skrell/chains/New()
	..()
	var/list/chaintypes = list()
	for(var/chain_style in subtypesof(/obj/item/clothing/ears/skrell/chain))
		var/obj/item/clothing/ears/skrell/chain/chain = chain_style
		chaintypes[initial(chain.name)] = chain
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(chaintypes))

/datum/gear/ears/skrell/colored/chain
	display_name = "colored headtail chain (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/chain
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)
	flags = GEAR_HAS_COLOR_SELECTION

//Skrell Bands
/datum/gear/ears/skrell/bands
	display_name = "headtail band selection (Skrell)"
	path = /obj/item/clothing/ears/skrell/band
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/ears/skrell/bands/New()
	..()
	var/list/bandtypes = list()
	for(var/band_style in subtypesof(/obj/item/clothing/ears/skrell/band))
		var/obj/item/clothing/ears/skrell/band/band = band_style
		bandtypes[initial(band.name)] = band
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(bandtypes))

/datum/gear/ears/skrell/colored/band
	display_name = "colored headtail bands (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/band
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)
	flags = GEAR_HAS_COLOR_SELECTION

//Skrell Cloth
/datum/gear/ears/skrell/cloth/male
	display_name = "male colored headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_male
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/ears/skrell/cloth/male/New()
	..()
	var/list/valid_colors = list("#c20c00", "#0227f7", "#6262ff", "#454545", "#009900", "#e17291")
	gear_tweaks = list(new/datum/gear_tweak/color(valid_colors))

/datum/gear/ears/skrell/cloth/female
	display_name = "female colored headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_female
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_SKRELL)

/datum/gear/ears/skrell/cloth/female/New()
	..()
	var/list/valid_colors = list("#c20c00", "#0227f7", "#6262ff", "#454545", "#009900", "#e17291")
	gear_tweaks = list(new/datum/gear_tweak/color(valid_colors))

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

/datum/gear/uniform/harness
	display_name = "gear harness (Full Body Prosthetic, Diona, Giant Armoured Serpentid)"
	path = /obj/item/clothing/under/harness
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_IPC,SPECIES_DIONA, SPECIES_NABBER)

/datum/gear/mask/ipc_monitor
	display_name = "display monitor (IPC)"
	path = /obj/item/clothing/mask/monitor
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_IPC)
	cost = 1

/datum/gear/shoes/toeless
	display_name = "toeless jackboots"
	path = /obj/item/clothing/shoes/jackboots/unathi
	sort_category = "Xenowear"

/datum/gear/shoes/wrk_toeless
	display_name = "toeless workboots"
	path = /obj/item/clothing/shoes/workboots/toeless
	sort_category = "Xenowear"

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
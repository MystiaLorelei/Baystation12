/datum/gear/suit/lab_xyn_machine
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/gloves/dress/modified
	display_name = "modified gloves, dress"
	path = /obj/item/clothing/gloves/color/white/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/gloves/duty/modified
	display_name = "modified gloves, duty"
	path = /obj/item/clothing/gloves/duty/modified
	sort_category = "Xenowear"
	whitelisted = list(SPECIES_UNATHI)

/datum/gear/suit/unathi/savage_hunter
	allowed_branches = CIVILIAN_BRANCHES
	whitelisted = list(SPECIES_UNATHI)

	// Resomi Clothing
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
	allowed_roles = RESTRICTED_ROLES

/datum/gear/uniform/resomi/white
	display_name = "smock, colored (Resomi)"
	path = /obj/item/clothing/under/resomi/white
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/resomi/eng
	display_name = "uniform, Engineering (Resomi)"
	path = /obj/item/clothing/under/resomi/yellow
	allowed_roles = list("Maintenance Assistant", "Roboticist", "Passenger", "Research Assistant", "Merchant")

/datum/gear/uniform/resomi/sec
	display_name = "uniform, Security (Resomi)"
	path = /obj/item/clothing/under/resomi/red
	allowed_roles = list("Security Guard", "Passenger", "Research Assistant", "Merchant")

/datum/gear/uniform/resomi/med
	display_name = "uniform, Medical (Resomi)"
	path = /obj/item/clothing/under/resomi/medical
	allowed_roles = list("Medical Contractor", "Chemist", "Counselor", "Passenger", "Research Assistant", "Merchant")

/datum/gear/uniform/resomi/science
	display_name = "uniform, Science (Resomi)"
	path = /obj/item/clothing/under/resomi/science

/datum/gear/uniform/resomi/dress
	display_name = "small dress (Resomi)"
	path = /obj/item/clothing/under/resomi/dress

/datum/gear/uniform/resomi/uniform
	display_name = "small uniform (Resomi)"
	path = /obj/item/clothing/under/resomi/uniform

/datum/gear/uniform/resomi/formal
	display_name = "small formal uniform (Resomi)"
	path = /obj/item/clothing/under/resomi/formal

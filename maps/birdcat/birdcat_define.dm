/datum/map/birdcat
	name = "Bearcat"
	full_name = "Bearcat"
	path = "birdcat"

	station_name  = "FTV Bearcat"
	station_short = "Bearcat"

	dock_name     = "FTS Capitalist's Rest"
	boss_name     = "FTU Merchant Navy"
	boss_short    = "Merchant Admiral"
	company_name  = "Legit Cargo Ltd."
	company_short = "LC"
	overmap_event_areas = 11

	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_icon = 'maps/birdcat/birdcat_lobby.dmi'
	lobby_screens = list("spess","aesthetic")

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"
	use_overmap = 1
	num_exoplanets = 3
	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

/datum/map/birdcat/map_info(victim)
	to_chat(victim, "You're aboard the <b>[station_name],</b> an independent vessel affiliated with Free Trade Union, on a SPACE FRONTIER. No major corporation or government has laid claim on the planets in this sector, so their exploitation is entirely up to you - mine, poach and deforest all you want.")

/datum/map/birdcat/setup_map()
	..()
	GLOB.traders += new /datum/trader/xeno_shop
	GLOB.traders += new /datum/trader/medical
	GLOB.traders += new /datum/trader/mining

/datum/map/birdcat/perform_map_generation()
	new /datum/random_map/automata/cave_system(null,1,1,4,world.maxx,world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null,1,1,4,64, 64)             // Create the mining ore distribution map.
	new /datum/random_map/automata/cave_system(null,1,1,5,world.maxx,world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null,1,1,5,64, 64)             // Create the mining ore distribution map.
	return 1
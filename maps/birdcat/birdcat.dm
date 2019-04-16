#if !defined(using_map_DATUM)
	#include "birdcat_unit_testing.dm"

	#include "../../code/datums/music_tracks/desire.dm"
	#include "../../code/datums/music_tracks/endless_space.dm"
	#include "../../code/datums/music_tracks/clouds_of_fire.dm"
	#include "../../code/datums/music_tracks/title1.dm"
	#include "../../code/datums/music_tracks/title3.dm"
	#include "../../code/datums/music_tracks/pod.dm"
	#include "../../code/datums/music_tracks/burningrangers.dm"
	#include "../../code/datums/music_tracks/elevator.dm"

	#include "birdcat_areas.dm"
	#include "birdcat_jobs.dm"
	#include "birdcat_lobby.dm"
	#include "birdcat_shuttles.dm"
	#include "birdcat_overmap.dm"
	#include "birdcat_overrides.dm"
	#include "birdcat_loadouts.dm"
	#include "birdcat-1.dmm"
	#include "birdcat-2.dmm"
	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"

	#define using_map_DATUM /datum/map/birdcat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring birdcat

#endif


/turf/simulated/wall //landlubbers go home
	name = "bulkhead"

/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/turf/simulated/wall/r_wall/hull
	color = COLOR_DARK_BROWN

/obj/machinery/door/airlock/hatch/autoname

/obj/machinery/door/airlock/hatch/autoname/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/machinery/door/airlock/hatch/autoname/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/engineering
	stripe_color = COLOR_AMBER


//wild capitalism
/datum/computer_file/program/merchant
	required_access = null
#if !defined(using_map_DATUM)
	#include "overmap_unit_testing.dm"

	#include "bearcat/bearcat.dm"
	#include "sector/sector.dm"
	#include "sector/sector-2.dmm"
	#include "sector/torch-7.dmm"
	#include "sector/torch-9.dmm"

	#include "../../code/modules/lobby_music/desire.dm"

	#define using_map_DATUM /datum/map/birdcat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Birdcat

#endif

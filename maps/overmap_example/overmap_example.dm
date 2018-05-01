#if !defined(using_map_DATUM)
	#include "overmap_unit_testing.dm"

	#include "overmap_example_lobby.dm"
	#include "bearcat/bearcat.dm"

<<<<<<< HEAD
	#include "../../code/modules/lobby_music/desire.dm"
=======
	#include "../../code/datums/music_tracks/businessend.dm"
	#include "../../code/datums/music_tracks/salutjohn.dm"
>>>>>>> 44b6121b5dc81c87a6be3ea9646b2a629d892b57

	#define using_map_DATUM /datum/map/overmap_example

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Overmap Example

#endif

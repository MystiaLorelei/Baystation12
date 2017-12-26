#if !defined(using_map_DATUM)
	#include "overmap_unit_testing.dm"

	#include "bearcat/bearcat.dm"
	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/marooned/marooned.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	//#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"

	#include "../../code/modules/lobby_music/desire.dm"

	#define using_map_DATUM /datum/map/birdcat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Birdcat

#endif

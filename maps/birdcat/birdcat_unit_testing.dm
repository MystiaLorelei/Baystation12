/datum/map/birdcat
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/scrap/maintenance/engine/port = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/engine/starboard = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/crew/hallway/port = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/crew/hallway/starboard = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/hallway = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/lower = NO_SCRUBBER|NO_VENT,
		/area/exoplanet          = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/desert   = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/grass    = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/snow     = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/garbage  = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/smugglers/base = NO_SCRUBBER,
		/area/smugglers/dorms = NO_SCRUBBER|NO_VENT,
		/area/smugglers/office = NO_SCRUBBER|NO_VENT,
		/area/bluespaceriver/underground = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/bluespaceriver/ground = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/casino/casino_cutter = NO_SCRUBBER|NO_VENT,
		/area/mobius_rift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/icarus/vessel = NO_APC,
		/area/icarus/open = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/scrap/shuttle/lift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/scrap/command/hallway = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/escape_port = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/escape_star = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/shuttle/outgoing = NO_SCRUBBER,
		/area/ship/scrap/maintenance/atmos = NO_SCRUBBER,
		/area/map_template/hydrobase = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/map_template/hydrobase/station = NO_SCRUBBER,
		/area/map_template/marooned = NO_SCRUBBER|NO_VENT|NO_APC
	)

	area_coherency_test_exempt_areas = list(
		/area/space,
		/area/mine/explored,
		/area/mine/unexplored,
		/area/exoplanet,
		/area/exoplanet/desert,
		/area/exoplanet/grass,
		/area/exoplanet/snow,
		/area/exoplanet/garbage,
		/area/icarus/vessel,
		/area/icarus/open,
	)

	area_coherency_test_subarea_count = list()

	area_usage_test_exempted_areas = list(
		/area/djstation,
		/area/outpost,
		/area/outpost/abandoned,
		/area/overmap,
	)

	// not an away site? you probably want to be using area_usage_test_exempted_areas
	area_usage_test_exempted_root_areas = list(
		/area/casino,
		/area/constructionsite,
		/area/derelict,
		/area/lost_supply_base,
		/area/magshield,
		/area/mine,
		/area/ship,
		/area/smugglers,
		/area/slavers_base,
		/area/yacht,
		/area/bluespaceriver,
		/area/mobius_rift,
		/area/icarus,
		/area/errant_pisces,
		/area/lar_maria,
		/area/map_template,
		/area/unishi,
		/area/exoplanet
	)

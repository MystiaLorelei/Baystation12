/obj/effect/overmap/sector/test2
	name = "abandoned drop pod"
	desc = "A explorer grade drop pod is floating abandoned in this system."
	color = "#ff0000"
	start_x = 6
	start_y = 8

	generic_waypoints = list(
		"nav_ingoing2",
		"nav_abandoned_pod",
	)


/obj/machinery/computer/shuttle_control/explore/test2
	name = "abandoned pod console"
	shuttle_tag = "Exploration Pod"

/datum/shuttle/autodock/overmap/abandoned_pod
	name = "Exploration Pod"
	shuttle_area = /area/sector/shuttle/outgoing2
	dock_target = "exploration_pod"
	current_location = "nav_abandoned_pod"

/area/sector/shuttle/outgoing2
  name = "Exploration Pod"

/area/sector/shuttle
	name = "\improper Entry Point"
	icon_state = "tcomsatcham"
	requires_power = 0
	luminosity = 1
	dynamic_lighting = 0

/obj/effect/shuttle_landmark/ingoing1
	name = "Navpoint #1"
	landmark_tag = "nav_ingoing1"

/obj/effect/shuttle_landmark/ingoing2
	name = "Navpoint #2"
	landmark_tag = "nav_ingoing2"

/obj/effect/shuttle_landmark/ingoing3
	name = "Navpoint #3"
	landmark_tag = "nav_ingoing3"

/obj/effect/shuttle_landmark/ingoing4
	name = "Navpoint #4"
	landmark_tag = "nav_ingoing4"

/obj/effect/shuttle_landmark/pod
	name = "Navpoint #5"
	landmark_tag = "nav_abandoned_pod"

//MINING

/obj/effect/overmap/sector/cluster
	name = "asteroid cluster"
	desc = "Large group of asteroids. Mineral content detected."
	icon_state = "sector"
	generic_waypoints = list(
		"nav_cluster_1",
		"nav_cluster_2",
		"nav_cluster_3",
		"nav_cluster_4",
		"nav_cluster_5",
		"nav_cluster_6",
		"nav_cluster_7"
	)
	start_x = 4
	start_y = 5

/obj/effect/shuttle_landmark/cluster/guppy
	name = "Asteroid Navpoint #1"
	landmark_tag = "nav_cluster_1"

/obj/effect/shuttle_landmark/cluster/aquila
	name = "Asteroid Navpoint #2"
	landmark_tag = "nav_cluster_2"

/obj/effect/shuttle_landmark/cluster/exploration_shuttle
	name = "Asteroid Navpoint #3"
	landmark_tag = "nav_cluster_3"

/obj/effect/shuttle_landmark/cluster/ert
	name = "Asteroid Navpoint #4"
	landmark_tag = "nav_cluster_4"

/obj/effect/shuttle_landmark/cluster/ninja
	name = "Asteroid Navpoint #5"
	landmark_tag = "nav_cluster_6"

/obj/effect/shuttle_landmark/cluster/syndie
	name = "Asteroid Landing zone #1"
	landmark_tag = "nav_cluster_5"
	base_area = /area/mine/explored

/obj/effect/shuttle_landmark/cluster/skipjack
	name = "Asteroid Landing zone #2"
	landmark_tag = "nav_cluster_7"
	base_area = /area/mine/explored

//AWAY MISSION

/obj/effect/overmap/sector/away
	name = "faint signal"
	desc = "Faint signal detected, originating from the site's surface."
	icon_state = "sector"
	generic_waypoints = list(
		"nav_away_1",
		"nav_away_2",
		"nav_away_3",
		"nav_away_4",
		"nav_away_5",
		"nav_away_6",
		"nav_away_7"
	)

/obj/effect/shuttle_landmark/away
	base_area = /area/mine/explored

/obj/effect/shuttle_landmark/away/guppy
	name = "Away Landing zone #1"
	landmark_tag = "nav_away_1"

/obj/effect/shuttle_landmark/away/aquila
	name = "Away Landing zone #2"
	landmark_tag = "nav_away_2"

/obj/effect/shuttle_landmark/away/exploration_shuttle
	name = "Away Landing zone #3"
	landmark_tag = "nav_away_3"

/obj/effect/shuttle_landmark/away/ert
	name = "Away Landing zone #4"
	landmark_tag = "nav_away_4"

/obj/effect/shuttle_landmark/away/syndie
	name = "Away Landing zone #5"
	landmark_tag = "nav_away_5"

/obj/effect/shuttle_landmark/away/ninja
	name = "Away Landing zone #6"
	landmark_tag = "nav_away_6"

/obj/effect/shuttle_landmark/away/skipjack
	name = "Away Landing zone #7"
	landmark_tag = "nav_away_7"

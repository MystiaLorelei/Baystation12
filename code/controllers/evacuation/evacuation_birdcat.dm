#define EVAC_OPT_ABANDON_SHIP "abandon_ship"
#define EVAC_OPT_TRANSIT_BURN "transit_burn"
#define EVAC_OPT_CANCEL_ABANDON_SHIP "cancel_abandon_ship"
#define EVAC_OPT_CANCEL_TRANSIT_BURN "cancel_transit_burn"

// Apparently, emergency_evacuation --> "abandon ship" and !emergency_evacuation --> "transit burn"
// That stuff should be moved to the evacuation option datums but someone can do that later
/datum/evacuation_controller/birdcat
	name = "escape pod controller"

	evac_prep_delay    = 5 MINUTES
	evac_launch_delay  = 3 MINUTES
	evac_transit_delay = 1 MINUTES

	transfer_prep_additional_delay     = 5 MINUTES
	autotransfer_prep_additional_delay = 5 MINUTES
	emergency_prep_additional_delay    = 0 MINUTES

	evacuation_options = list(
		EVAC_OPT_ABANDON_SHIP = new /datum/evacuation_option/abandon_ship(),
		EVAC_OPT_TRANSIT_BURN = new /datum/evacuation_option/transit_burn(),
		EVAC_OPT_CANCEL_ABANDON_SHIP = new /datum/evacuation_option/cancel_abandon_ship(),
		EVAC_OPT_CANCEL_TRANSIT_BURN = new /datum/evacuation_option/cancel_transit_burn()
	)

/datum/evacuation_controller/birdcat/finish_preparing_evac()
	. = ..()
	// Lifepods already handled in their code.





/datum/evacuation_controller/birdcat/launch_evacuation()

	state = EVAC_IN_TRANSIT

	if (emergency_evacuation)
		// Abondon Ship





		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.emergency_shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
	else
		// Bluespace Jump
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
		//SetUniversalState(/datum/universal_state/transit_burn, arguments=list(GLOB.using_map.station_levels))

/datum/evacuation_controller/birdcat/finish_evacuation()
	..()
	if(!emergency_evacuation) //transit burn
		SetUniversalState(/datum/universal_state) //clear jump state

/datum/evacuation_controller/birdcat/available_evac_options()
	if (is_on_cooldown())
		return list()
	if (is_idle())
		return list(evacuation_options[EVAC_OPT_TRANSIT_BURN], evacuation_options[EVAC_OPT_ABANDON_SHIP])
	if (is_evacuating())
		if (emergency_evacuation)
			return list(evacuation_options[EVAC_OPT_CANCEL_ABANDON_SHIP])
		else
			return list(evacuation_options[EVAC_OPT_CANCEL_TRANSIT_BURN])

/datum/evacuation_option/abandon_ship
	option_text = "Abandon spacecraft"
	option_desc = "abandon the spacecraft"
	option_target = EVAC_OPT_ABANDON_SHIP
	needs_syscontrol = TRUE
	silicon_allowed = TRUE
	abandon_ship = TRUE

/datum/evacuation_option/abandon_ship/execute(mob/user)
	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate escape procedures.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Escape procedures already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 1))
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated abandonment of the spacecraft.")

/datum/evacuation_option/transit_burn
	option_text = "Initiate transit burn"
	option_desc = "initiate a transit burn"
	option_target = EVAC_OPT_TRANSIT_BURN
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/transit_burn/execute(mob/user)
	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate burn preparation.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Burn preparation already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 0))
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated transit burn preparation.")

/datum/evacuation_option/cancel_abandon_ship
	option_text = "Cancel abandonment"
	option_desc = "cancel abandonment of the spacecraft"
	option_target = EVAC_OPT_CANCEL_ABANDON_SHIP
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/cancel_abandon_ship/execute(mob/user)
	if (evacuation_controller && evacuation_controller.cancel_evacuation())
		log_and_message_admins("[key_name(user)] has cancelled abandonment of the spacecraft.")

/datum/evacuation_option/cancel_transit_burn
	option_text = "Cancel transit burn"
	option_desc = "cancel the jump preparation"
	option_target = EVAC_OPT_CANCEL_TRANSIT_BURN
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/cancel_transit_burn/execute(mob/user)
	if (evacuation_controller && evacuation_controller.cancel_evacuation())
		log_and_message_admins("[key_name(user)] has cancelled the transit burn.")









#undef EVAC_OPT_ABANDON_SHIP
#undef EVAC_OPT_TRANSIT_BURN
#undef EVAC_OPT_CANCEL_ABANDON_SHIP
#undef EVAC_OPT_CANCEL_TRANSIT_BURN
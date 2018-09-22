/datum/species/resomi
	name = SPECIES_RESOMI
	name_plural = "Resomii"
	icobase = 'icons/mob/human_races/species/resomi/r_resomi.dmi'
	deform = 'icons/mob/human_races/species/resomi/r_resomi.dmi'
//	eye_icon = "eyes_resomi"
//	eye_icon_location = 'icons/mob/human_races/species/resomi/resomi.dmi'
	damage_overlays = 'icons/mob/human_races/masks/dam_resomi.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_resomi.dmi'
	blood_mask = 'icons/mob/human_races/masks/blood_resomi.dmi'
	description = "A race of feathered raptors who developed on a cold world, almost \
	outside of the Goldilocks zone. Extremely fragile, they developed hunting skills \
	that emphasized taking out their prey without themselves getting hit. They are an \
	advanced culture on good terms with Skrellian and Human interests."
//	num_alternate_languages = 2
//	language = LANGUAGE_RESOMI
//	default_language = LANGUAGE_RESOMI
//	additional_langs = list(LANGUAGE_GALCOM)
//	name_language = LANGUAGE_RESOMI
	min_age = 15
	max_age = 100
	gluttonous = GLUT_TINY
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	sexybits_location = BP_GROIN
	health_hud_intensity = 3
	blood_color = "#D514F7"
	flesh_color = "#5F7BB0"
	base_color = "#001144"
	tail = "resomitail"
	tail_hair = "feathers"
	reagent_tag = IS_RESOMI
	slowdown = -1
	total_health = 150
	brute_mod = 1.35
	burn_mod =  1.35
	metabolism_mod = 2.0
	pass_flags = PASS_FLAG_TABLE
	mob_size = MOB_SMALL
	strength = STR_HIGH
	holder_type = /obj/item/weapon/holder/human
	//light_sensitive = 6
	darksight_range = 8
	darksight_tint = DARKTINT_GOOD
	gluttonous = GLUT_TINY
	blood_volume = 400
	hunger_factor = DEFAULT_HUNGER_FACTOR * 3
//	economic_modifier = 5
	bump_flag = MONKEY
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL|ALIEN
	cold_level_1 = 180
	cold_level_2 = 130
	cold_level_3 = 70
	heat_level_1 = 320
	heat_level_2 = 370
	heat_level_3 = 600
	heat_discomfort_level = 295
	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
		)
	cold_discomfort_level = 180
	breath_pressure = 12

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/resomi),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/resomi),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/resomi),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/resomi),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/resomi)
		)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver/resomi,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/resomi,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)

	unarmed_types = list(
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/stomp/weak
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/sonar_ping,
		/mob/living/proc/hide
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_RESOMI,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_OTHER
		),
		TAG_FACTION = list(
			FACTION_EXPEDITIONARY,
			FACTION_TORCH_LLC,
			FACTION_NANOTRASEN,
			FACTION_PCRC,
			FACTION_HEPHAESTUS,
			FACTION_OTHER
		),
		TAG_RELIGION = list(
			RELIGION_OTHER,
			RELIGION_ATHEISM,
			RELIGION_DEISM,
			RELIGION_AGNOSTICISM
		),
		TAG_EDUCATION = list(
			EDUCATION_NONE,
			EDUCATION_DROPOUT,
			EDUCATION_HIGH_SCHOOL,
			EDUCATION_TRADE_SCHOOL,
			EDUCATION_UNDERGRAD,
			EDUCATION_MASTERS,
			EDUCATION_DOCTORATE,
			EDUCATION_MEDSCHOOL
		)
	)
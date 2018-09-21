/decl/cultural_info/culture/resomi
	name = CULTURE_RESOMI
	description = "A race of feathered raptors who developed on a cold world, almost \
	outside of the Goldilocks zone. Extremely fragile, they developed hunting skills \
	that emphasized taking out their prey without themselves getting hit. They are an \
	advanced culture on good terms with Skrellian and Human interests."
	language = LANGUAGE_RESOMI
	name_language = LANGUAGE_RESOMI
	additional_langs = list(LANGUAGE_GALCOM)
	economic_power =          5


/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)
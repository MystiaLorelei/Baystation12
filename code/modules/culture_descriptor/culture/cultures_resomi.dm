/decl/cultural_info/culture/resomi
	name = CULTURE_RESOMI
	description = "You are one of the many Resomii who have taken to living in space."
	language = LANGUAGE_RESOMI
	name_language = LANGUAGE_RESOMI
	additional_langs = list(LANGUAGE_GALCOM)
	economic_power =          1


/decl/cultural_info/culture/resomi/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)
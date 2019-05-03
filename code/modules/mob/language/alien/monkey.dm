/datum/language/human/monkey
	name = "Chimpanzee"
	desc = "Ook ook ook."
	speech_verb = "chimpers"
	ask_verb = "chimpers"
	exclaim_verb = "screeches"
	key = "m"
	syllables = list("ook","eek")
	shorthand = "HM"

/datum/language/unathi/monkey
	name = "Stok"
	desc = "Hiss hiss hiss."
	key = "7"
	syllables = list("hiss","gronk")
	shorthand = "UM"

/datum/language/skrell/monkey
	name = "Neaera"
	desc = "Squik squik squik."
	key = "8"
	syllables = list("squick","croak")
	shorthand = "SM"

/datum/language/xenos/monkey
	name = "Farwa"
	desc = "Meow meow meow."
	key = "9"
	syllables = list("meow","mew")
	shorthand = "TM"

/datum/language/bird
	name = "Bird"
	desc = "Chirp chirp, give me food"
	speech_verb = "chirps"
	ask_verb = "tweets"
	exclaim_verb = "squawks"
	key = "m"
	flags = RESTRICTED
	machine_understands = 0
	space_chance = 100
	syllables = list("chirp", "chirpchirp", "chirpchirpchirp", "cheep", "cheepcheep", "cheeeeep", "squawk", "caw", "cawcaw", "caaaaaaw", "cawcawcaw", "warble", "warblechirp", "warblecheep", "chirpwarble", "cheepwarble", "cruck", "whistle", "peent", "hoot", "chatter", "cluck", "cuckoo", "cry", "trill", "quack", "tweet")
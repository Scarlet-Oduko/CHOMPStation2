/datum/trait/neutral/mobegglaying
	name = "Egg Laying"
	desc = "You can lay eggs, much like an avian."
	cost = 0

/datum/trait/neutral/mobegglaying/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/proc/mobegglaying

/datum/trait/neutral/succubus_bite
	name = "Succubus Bite"
	desc = "Allows you to inject your prey with poison, much like a venemous snake."
	cost = 0

/datum/trait/neutral/succubus_bite/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/proc/succubus_bite

/datum/trait/neutral/nutritiongrow
	name = "Growing"
	desc = "After you consume enough nutrition, you start to slowly grow while metabolizing nutrition faster."
	cost = 0
	var_changes = list("grows" = TRUE)

/datum/trait/neutral/nutritionshrink
	name = "Shrinking"
	desc = "If you don't eat enough, your body starts shrinking to make up the difference!"
	cost = 0
	var_changes = list("shrinks" = TRUE)

/datum/trait/neutral/mudking
	name = "Mudking"
	desc = "Somehow you are so filthy that tiles get dirty four times as quick from you walking on them."
	cost = 0
	var_changes = list("mudking" = TRUE)

/datum/trait/neutral/singularity_metabolism
	name = "Metabolism, Singularity"
	desc = "You are insanely hungry. You can seemingly never get enough to eat. Perhaps you had a singularity as an ancestor, or maybe one is currently living inside of your gut."
	cost = 0
	var_changes = list("metabolic_rate" = 2, "hunger_factor" = 1.6, "metabolism" = 0.012)	//2x metabolism speed, 32x hunger speed
	custom_only = FALSE

/datum/trait/neutral/big_mouth
	name = "Fast Eater, Minor"
	desc = "It takes half as many bites to finish food as it does for most people."
	cost = 0
	var_changes = list("bite_mod" = 2)
	custom_only = FALSE

/datum/trait/neutral/big_mouth_extreme
	name = "Fast Eater"
	desc = "It takes a quarter as many bites to finish food as it does for most people."
	cost = 0
	var_changes = list("bite_mod" = 4)
	custom_only = FALSE

// Doing this BC I can't rename the datum without fucking over savefiles, so meh. Hyper > Extreme, right?
/datum/trait/neutral/big_mouth_hyper
	name = "Fast Eater, Major"
	desc = "You will eat anything instantly, in one bite."
	cost = 0
	var_changes = list("bite_mod" = 16) // Setting this intentionally ridiculously high, so anything will overflow and be eaten in one go.
	custom_only = FALSE

// CHOMPNote: Moving YW additions here, to sync our files better with VORE in the event of edits.
/datum/trait/neutral/autohiss_vassilian
	name = "Autohiss (Vassilian)"
	desc = "You buzz your S's, F's, Th's, and R's."
	cost = 0
	var_changes = list(
	autohiss_basic_map = list(
        "s" = list("sz", "z", "zz"),
        "f" = list("zk")
		),
	autohiss_extra_map = list(
		"th" = list("zk", "szk"),
        "r" = list("rk")
	),
	autohiss_exempt = list("Vespinae"))
	excludes = list(/datum/trait/neutral/autohiss_tajaran, /datum/trait/neutral/autohiss_unathi)

/datum/trait/neutral/gargoyle
	name = "Gargoyle (adjustable)"
	desc = "You turn into a statue (or similiar) at will, but also whenever you run out of energy. Being a statue replenishes your energy slowly."
	cost = 0
	custom_only = FALSE //slimes, xenochimera, diona, proteans, etc, basically anything but custom doesn't make sense (as much as I wanna play a petrifying slime)
	//Nah makes perfect sense, they could just be gene modded, not to mention we can expand this to have the statue and description of it renameable as well as color adjustable, to support general petrification
	//TODO: make Gargoyle Statue Desc, Name and Color adjustable.

/datum/trait/neutral/gargoyle/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.LoadComponent(/datum/component/gargoyle)

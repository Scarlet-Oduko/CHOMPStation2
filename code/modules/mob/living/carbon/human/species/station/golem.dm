/datum/species/golem
	name = SPECIES_GOLEM
	name_plural = "golems"

	icobase = 'icons/mob/human_races/r_golem.dmi'
	deform = 'icons/mob/human_races/r_golem.dmi'

	language = "Sol Common" //todo?
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch)
	flags = NO_PAIN | NO_SCAN | NO_POISON | NO_MINOR_CUT | NO_DEFIB
	spawn_flags = SPECIES_IS_RESTRICTED
	siemens_coefficient = 0

	male_scream_sound = null //CHOMPedit
	female_scream_sound = null //CHOMPedit
	// CHOMPEdit Start: Missing Sounds, so none for this race.
	male_gasp_sound = null
	female_gasp_sound = null
	male_pain_sound = null
	female_pain_sound = null
	male_death_sound = null
	female_death_sound = null
	// CHOMPEdit End

	assisted_langs = list()

	breath_type = null
	poison_type = null

	blood_color = "#515573"
	flesh_color = "#137E8F"

	virus_immune = 1

	has_organ = list(
		"brain" = /obj/item/organ/internal/brain/golem
		)

	death_message = "becomes completely motionless..."

	genders = list(NEUTER)

/datum/species/golem/handle_post_spawn(var/mob/living/carbon/human/H)
	if(H.mind)
		H.mind.assigned_role = "Golem"
		H.mind.special_role = "Golem"
	H.real_name = "adamantine golem ([rand(1, 1000)])"
	H.name = H.real_name
	..()

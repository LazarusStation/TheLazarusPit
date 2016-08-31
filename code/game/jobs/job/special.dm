/datum/job/nanotrasenrep
	title = "Nanotrasen Representative"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors     = "the command staff"

	selection_color  = "#ddddff"
	faction          = "Station"
	req_admin_notify = 1

	minimal_player_age = 50
	economic_modifier = 20

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)


	outfit_type = /decl/hierarchy/outfit/job/nanotrasenrep

/datum/job/nanotrasenrep/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/judge
	title = "Corporate Arbiter"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nanotrasen Supreme Court"
	selection_color = "#ddddff"
	economic_modifier = 20
	req_admin_notify = 1
	minimal_player_age = 50

	faction          = "Station"
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)


	outfit_type = /decl/hierarchy/outfit/job/judge

/datum/job/judge/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/blueshield
	title = "Blueshield"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nanotrasen representative"
	selection_color = "#ddddff"
	req_admin_notify = 1
	minimal_player_age = 30

	faction          = "Station"

	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)

	outfit_type = /decl/hierarchy/outfit/job/blueshield

/datum/job/blueshield/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/lawyer
	title = "Lawyer"
	department_flag = COM
	total_positions = 2
	spawn_positions = 2
	supervisors = "the magistrate"
	selection_color = "#ddddff"
	alt_titles = list("Prosecutor")
	minimal_player_age = 10
	faction          = "Station"

	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_heads)
	minimal_access = list(access_lawyer, access_sec_doors, access_heads)

	outfit_type = /decl/hierarchy/outfit/job/lawyer

/datum/job/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/station_marshal
	title = "Station Marshal"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ddddff"
	minimal_player_age = 10

	access = list()

	faction          = "Station"
	minimal_access = list()

	outfit_type = /decl/hierarchy/outfit/job/station_marshal

/datum/job/station_marshal/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


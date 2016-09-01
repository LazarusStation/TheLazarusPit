/datum/job/nanotrasenrep
	title       = "Nanotrasen Representative"
	faction     = "Station"
	supervisors = "the command staff"
	department_flag   = COM
	total_positions   = 1
	spawn_positions   = 1
	req_admin_notify  = 1
	economic_modifier = 20
	selection_color   = "#930729"
	minimal_player_age = 50

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
	title       = "Corporate Arbiter"
	faction     = "Station"
	supervisors = "the Nanotrasen Supreme Court"
	department_flag   = COM
	total_positions   = 1
	spawn_positions   = 1
	selection_color   = "#b80934"
	economic_modifier = 20
	req_admin_notify  = 1
	minimal_player_age = 50
	alt_titles = list("Magistrate")

	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)


	outfit_type = /decl/hierarchy/outfit/job/judge

/datum/job/judge/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/blueshield
	title       = "Blueshield Agent"
	faction     = "Station"
	supervisors = "the Nanotrasen representative"
	department_flag   = COM
	total_positions   = 1
	spawn_positions   = 1
	economic_modifier = 20
	req_admin_notify  = 1
	selection_color   = "#b80934"
	minimal_player_age = 30

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
	title       = "Lawyer"
	faction     = "Station"
	supervisors = "the magistrate"
	department_flag = COM
	total_positions = 2
	spawn_positions = 2
	selection_color = "#b80934"
	minimal_player_age = 10
	economic_modifier  = 10
	alt_titles = list("Prosecutor")

	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_heads)
	minimal_access = list(access_lawyer, access_sec_doors, access_heads)

	outfit_type = /decl/hierarchy/outfit/job/lawyer

/datum/job/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/station_marshal
	title       = "Station Marshal"
	faction     = "Station"
	supervisors = "the head of security"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#b80934"
	minimal_player_age = 10
	economic_modifier  = 10

	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)

	outfit_type = /decl/hierarchy/outfit/job/station_marshal

/datum/job/station_marshal/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


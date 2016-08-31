/datum/job/assistant
	title = "Assistant"
	department = "Civilian"
	department_flag = CIV
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	selection_color = "#515151"
	economic_modifier = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	alt_titles = list("Technical Assistant","Medical Intern","Research Assistant","Visitor")
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()

/datum/job/entertainer
	title = "Entertainer"
	department = "Civilian"
	department_flag = CIV
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "absolutely everyone except assistants"
	selection_color = "#515151"
	economic_modifier = 3
	access = list(access_theater)
	minimal_access = list(access_theater)
	alt_titles = list("Singer, Actor, Artist, Stand Up Comedian")
	outfit_type = /decl/hierarchy/outfit/job/entertainer

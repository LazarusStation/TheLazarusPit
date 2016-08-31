var/global/datum/controller/game_controller/master_controller //Set in world.New()

var/global/controller_iteration = 0
var/global/last_tick_duration = 0

var/global/air_processing_killed = 0
var/global/pipe_processing_killed = 0

var/global/initialization_stage = 0

/datum/controller/game_controller
	var/list/shuttle_list	                    // For debugging and VV
	var/init_immediately = FALSE

/datum/controller/game_controller/New()
	//There can be only one master_controller. Out with the old and in with the new.
	if(master_controller != src)
		log_debug("Rebuilding Master Controller")
		if(istype(master_controller))
			qdel(master_controller)
		master_controller = src

	if(!job_master)
		job_master = new/datum/controller/occupations()
		job_master.SetupOccupations(setup_titles=1)
		job_master.LoadJobs("config/jobs.txt")
		admin_notice("<span class='danger'>Job setup complete</span>", R_DEBUG)

	if(!syndicate_code_phrase)
		syndicate_code_phrase   = generate_code_phrase()
	if(!syndicate_code_response)
		syndicate_code_response = generate_code_phrase()

/datum/controller/game_controller/proc/setup()
	world.tick_lag = config.Ticklag

	var/watch = 0
	watch = start_watch()

	log_red("Setting up master controller")

	setup_objects()
	setupgenetics()
	SetupXenoarch()

	transfer_controller = new

	log_green("	 Initialized Master Controller in [stop_watch(watch)]s.")
	initialization_stage |= INITIALIZATION_COMPLETE

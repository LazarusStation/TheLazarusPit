/datum/controller/game_controller/proc/setup_objects()
	// Do these first since character setup will rely on them

	// Set up antagonists.
	populate_antag_type_list()

	//Set up spawn points.
	populate_spawn_points()

	admin_notice("<span class='danger'>Initializing turbolifts</span>", R_DEBUG)
	for(var/thing in turbolifts)
		if(!deleted(thing))
			var/obj/turbolift_map_holder/lift = thing
			lift.initialize()
			CHECK_TICK_MC

	admin_notice("<span class='danger'>Initializing objects</span>", R_DEBUG)
	for(var/atom/movable/object in world)
		if(!deleted(object))
			object.initialize()
			CHECK_TICK_MC

	admin_notice("<span class='danger'>Initializing areas</span>", R_DEBUG)
	for(var/area/area in all_areas)
		area.initialize()
		CHECK_TICK_MC

	admin_notice("<span class='danger'>Initializing pipe networks</span>", R_DEBUG)
	for(var/obj/machinery/atmospherics/machine in machines)
		machine.build_network()
		CHECK_TICK_MC

	admin_notice("<span class='danger'>Initializing atmos machinery.</span>", R_DEBUG)
	for(var/obj/machinery/atmospherics/unary/U in machines)
		if(istype(U, /obj/machinery/atmospherics/unary/vent_pump))
			var/obj/machinery/atmospherics/unary/vent_pump/T = U
			T.broadcast_status()
		else if(istype(U, /obj/machinery/atmospherics/unary/vent_scrubber))
			var/obj/machinery/atmospherics/unary/vent_scrubber/T = U
			T.broadcast_status()
			CHECK_TICK_MC

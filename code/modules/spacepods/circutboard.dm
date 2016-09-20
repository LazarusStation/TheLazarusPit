/obj/item/weapon/circuitboard/mecha/pod
	name = "Circuit board (Space Pod Mainboard)"
	icon_state = "mainboard"

/obj/item/weapon/circuitboard/podfab
	name = "Circuit board (Spacepod Fabricator)"
	build_path = /obj/machinery/spod_part_fabricator //ah fuck my life
	board_type = "machine"
	origin_tech = "programming=3;engineering=3"
	req_components = list(
							/obj/item/weapon/stock_parts/matter_bin = 3,
							/obj/item/weapon/stock_parts/manipulator = 2,
							/obj/item/weapon/stock_parts/micro_laser = 2,
							/obj/item/weapon/stock_parts/console_screen = 1)
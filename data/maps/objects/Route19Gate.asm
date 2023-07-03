Route19Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  0, FUCHSIA_CITY, 10
	warp_event  5,  0, FUCHSIA_CITY, 11
	warp_event  4,  5, ROUTE_19, 2
	warp_event  5,  5, ROUTE_19, 2

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GUARD, STAY, RIGHT, PAL_NPC_BLUE, 1 ; person

	def_warps_to ROUTE_19_GATE

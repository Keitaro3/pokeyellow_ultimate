Route11_Object:
	db $f ; border block

	def_warp_events
	warp_event 49,  8, ROUTE_11_GATE_1F, 1
	warp_event 49,  9, ROUTE_11_GATE_1F, 1
	warp_event 58,  8, ROUTE_11_GATE_1F, 3
	warp_event 58,  9, ROUTE_11_GATE_1F, 3
	warp_event  4,  5, DIGLETTS_CAVE_ROUTE_11, 1

	def_bg_events
	bg_event  1,  5, 11 ; Route11Text11

	def_object_events
	object_event 10, 14, SPRITE_GAMBLER, STAY, DOWN, PAL_NPC_BLUE, 1, GAMBLER, 1
	object_event 26,  9, SPRITE_GAMBLER, STAY, DOWN, PAL_NPC_BLUE, 2, GAMBLER, 2
	object_event 13,  5, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_BLUE, 3, YOUNGSTER, 9
	object_event 36, 11, SPRITE_SAFARI_ZONE_WORKER, STAY, DOWN, PAL_NPC_BROWN, 4, ENGINEER, 2
	object_event 22,  4, SPRITE_YOUNGSTER, STAY, UP, PAL_NPC_BLUE, 5, YOUNGSTER, 10
	object_event 45,  7, SPRITE_GAMBLER, STAY, DOWN, PAL_NPC_BLUE, 6, GAMBLER, 3
	object_event 33,  3, SPRITE_GAMBLER, STAY, UP, PAL_NPC_BLUE, 7, GAMBLER, 4
	object_event 43,  5, SPRITE_YOUNGSTER, STAY, RIGHT, PAL_NPC_BLUE, 8, YOUNGSTER, 11
	object_event 45, 16, SPRITE_SAFARI_ZONE_WORKER, STAY, LEFT, PAL_NPC_BROWN, 9, ENGINEER, 3
	object_event 22, 12, SPRITE_YOUNGSTER, STAY, UP, PAL_NPC_BLUE, 10, YOUNGSTER, 12

	def_warps_to ROUTE_11

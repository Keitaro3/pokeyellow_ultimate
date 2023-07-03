Route19_Object:
	db $43 ; border block

	def_warp_events
	warp_event  5,  9, SUMMER_BEACH_HOUSE, 1
	warp_event  7,  3, ROUTE_19_GATE, 1

	def_bg_events
	bg_event 11, 11, 11 ; Route19Text11

	def_object_events
	object_event  9,  7, SPRITE_COOLTRAINER_M, STAY, RIGHT, PAL_NPC_RED, 1, SWIMMER, 2
	object_event 12,  9, SPRITE_COOLTRAINER_M, STAY, LEFT, PAL_NPC_RED, 2, SWIMMER, 3
	object_event 13, 25, SPRITE_SWIMMER, STAY, LEFT, PAL_NPC_RED, 3, SWIMMER, 4
	object_event  4, 27, SPRITE_SWIMMER, STAY, RIGHT, PAL_NPC_RED, 4, SWIMMER, 5
	object_event 16, 31, SPRITE_SWIMMER, STAY, UP, PAL_NPC_RED, 5, SWIMMER, 6
	object_event  9, 13, SPRITE_SWIMMER, STAY, DOWN, PAL_NPC_RED, 6, SWIMMER, 7
	object_event  8, 43, SPRITE_SWIMMER_F, STAY, LEFT, PAL_NPC_GREEN, 7, SWIMMER_F, 1
	object_event 11, 43, SPRITE_SWIMMER_F, STAY, RIGHT, PAL_NPC_GREEN, 8, SWIMMER_F, 2
	object_event  9, 42, SPRITE_SWIMMER, STAY, UP, PAL_NPC_RED, 9, SWIMMER, 8
	object_event 10, 44, SPRITE_SWIMMER_F, STAY, DOWN, PAL_NPC_GREEN, 10, SWIMMER_F, 3

	def_warps_to ROUTE_19

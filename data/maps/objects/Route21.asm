Route21_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events
	object_event  4, 24, SPRITE_FISHER, STAY, LEFT, PAL_NPC_GREEN, 1, FISHER, 7
	object_event  6, 25, SPRITE_FISHER, STAY, DOWN, PAL_NPC_GREEN, 2, FISHER, 9
	object_event 10, 31, SPRITE_SWIMMER, STAY, UP, PAL_NPC_RED, 3, SWIMMER, 12
	object_event 12, 30, SPRITE_SWIMMER, STAY, RIGHT, PAL_NPC_RED, 4, CUE_BALL, 9
	object_event 16, 63, SPRITE_SWIMMER, STAY, DOWN, PAL_NPC_RED, 5, SWIMMER, 13
	object_event  5, 71, SPRITE_SWIMMER, STAY, RIGHT, PAL_NPC_RED, 6, SWIMMER, 14
	object_event 15, 71, SPRITE_SWIMMER, STAY, LEFT, PAL_NPC_RED, 7, SWIMMER, 15
	object_event 14, 56, SPRITE_FISHER, STAY, LEFT, PAL_NPC_GREEN, 8, FISHER, 8
	object_event 17, 57, SPRITE_FISHER, STAY, RIGHT, PAL_NPC_GREEN, 9, FISHER, 10

	def_warps_to ROUTE_21

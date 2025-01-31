Route16_Object:
	db $f ; border block

	def_warp_events
	warp_event 17, 10, ROUTE_16_GATE_1F, 1
	warp_event 17, 11, ROUTE_16_GATE_1F, 1
	warp_event 24, 10, ROUTE_16_GATE_1F, 3
	warp_event 24, 11, ROUTE_16_GATE_1F, 3
	warp_event 17,  4, ROUTE_16_GATE_1F, 5
	warp_event 17,  5, ROUTE_16_GATE_1F, 5
	warp_event 24,  4, ROUTE_16_GATE_1F, 7
	warp_event 24,  5, ROUTE_16_GATE_1F, 7
	warp_event  7,  5, ROUTE_16_FLY_HOUSE, 1

	def_bg_events
	bg_event 27, 11, 8 ; Route16Text8
	bg_event  5, 17, 9 ; Route16Text9

	def_object_events
	object_event 17, 12, SPRITE_BIKER, STAY, LEFT, PAL_NPC_BLUE, 1, BIKER, 5
	object_event 14, 13, SPRITE_BIKER, STAY, RIGHT, PAL_NPC_BROWN, 2, CUE_BALL, 1
	object_event 11, 12, SPRITE_BIKER, STAY, UP, PAL_NPC_BLUE, 3, CUE_BALL, 2
	object_event  9, 11, SPRITE_BIKER, STAY, LEFT, PAL_NPC_BROWN, 4, BIKER, 6
	object_event  6, 10, SPRITE_BIKER, STAY, RIGHT, PAL_NPC_BLUE, 5, CUE_BALL, 3
	object_event  3, 12, SPRITE_BIKER, STAY, RIGHT, PAL_NPC_BROWN, 6, BIKER, 7
	object_event 26, 10, SPRITE_ROCK_SMASH, STAY, DOWN, 0, 7 ; person

	def_warps_to ROUTE_16

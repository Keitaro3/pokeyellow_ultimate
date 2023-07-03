Route14_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events
	bg_event 17, 13, 11 ; Route14Text11

	def_object_events
	object_event  4,  4, SPRITE_COOLTRAINER_M, STAY, DOWN, PAL_NPC_BLUE, 1, BIRD_KEEPER, 14
	object_event 15,  6, SPRITE_COOLTRAINER_M, STAY, DOWN, PAL_NPC_BLUE, 2, BIRD_KEEPER, 15
	object_event 12, 11, SPRITE_COOLTRAINER_M, STAY, DOWN, PAL_NPC_BLUE, 3, BIRD_KEEPER, 16
	object_event 14, 15, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 4, BIRD_KEEPER, 17
	object_event 15, 31, SPRITE_COOLTRAINER_M, STAY, LEFT, PAL_NPC_BLUE, 5, BIRD_KEEPER, 4
	object_event  6, 49, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 6, BIRD_KEEPER, 5
	object_event  5, 39, SPRITE_BIKER, STAY, DOWN, PAL_NPC_BLUE, 7, BIKER, 13
	object_event  4, 30, SPRITE_BIKER, STAY, RIGHT, PAL_NPC_BLUE, 8, BIKER, 14
	object_event 15, 30, SPRITE_BIKER, STAY, LEFT, PAL_NPC_BLUE, 9, BIKER, 15
	object_event  4, 31, SPRITE_BIKER, STAY, RIGHT, PAL_NPC_BLUE, 10, BIKER, 2

	def_warps_to ROUTE_14

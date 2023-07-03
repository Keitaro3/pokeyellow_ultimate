Route15_Object:
	db $43 ; border block

	def_warp_events
	warp_event  7,  8, ROUTE_15_GATE_1F, 1
	warp_event  7,  9, ROUTE_15_GATE_1F, 1
	warp_event 14,  8, ROUTE_15_GATE_1F, 3
	warp_event 14,  9, ROUTE_15_GATE_1F, 3

	def_bg_events
	bg_event 39,  9, 12 ; Route15Text12

	def_object_events
	object_event 41, 11, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 1, JR_TRAINER_F, 20
	object_event 53, 10, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 2, JR_TRAINER_F, 21
	object_event 31, 13, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 3, BIRD_KEEPER, 6
	object_event 35, 13, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 4, BIRD_KEEPER, 7
	object_event 53, 11, SPRITE_BEAUTY, STAY, DOWN, PAL_NPC_BLUE, 5, BEAUTY, 6
	object_event 41, 10, SPRITE_BEAUTY, STAY, RIGHT, PAL_NPC_BLUE, 6, BEAUTY, 7
	object_event 48, 10, SPRITE_BIKER, STAY, DOWN, PAL_NPC_BLUE, 7, BIKER, 3
	object_event 46, 10, SPRITE_BIKER, STAY, DOWN, PAL_NPC_BLUE, 8, BIKER, 4
	object_event 37,  5, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 9, JR_TRAINER_F, 22
	object_event 18, 13, SPRITE_BRUNETTE_GIRL, STAY, UP, PAL_NPC_GREEN, 10, JR_TRAINER_F, 23
	object_event 18,  5, SPRITE_POKE_BALL, STAY, NONE, 0, 11, TM_RAGE

	def_warps_to ROUTE_15

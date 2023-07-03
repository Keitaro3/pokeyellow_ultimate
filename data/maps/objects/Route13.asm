Route13_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events
	bg_event 15, 13, 11 ; Route13Text11
	bg_event 33,  5, 12 ; Route13Text12
	bg_event 31, 11, 13 ; Route13Text13

	def_object_events
	object_event 49, 10, SPRITE_COOLTRAINER_M, STAY, RIGHT, PAL_NPC_BLUE, 1, BIRD_KEEPER, 1
	object_event 48, 10, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 2, JR_TRAINER_F, 12
	object_event 27,  9, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 3, JR_TRAINER_F, 13
	object_event 23, 10, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 4, JR_TRAINER_F, 14
	object_event 50,  5, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 5, JR_TRAINER_F, 15
	object_event 12,  4, SPRITE_COOLTRAINER_M, STAY, RIGHT, PAL_NPC_BLUE, 6, BIRD_KEEPER, 2
	object_event 33,  6, SPRITE_BEAUTY, STAY, DOWN, PAL_NPC_BLUE, 7, BEAUTY, 4
	object_event 32,  6, SPRITE_BEAUTY, STAY, DOWN, PAL_NPC_BLUE, 8, BEAUTY, 5
	object_event 10,  7, SPRITE_BIKER, STAY, UP, PAL_NPC_BLUE, 9, BIKER, 1
	object_event  7, 13, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 10, BIRD_KEEPER, 3

	def_warps_to ROUTE_13

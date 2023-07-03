Route25_Object:
	db $2c ; border block

	def_warp_events
	warp_event 45,  3, BILLS_HOUSE, 1

	def_bg_events
	bg_event 43,  3, 11 ; Route25Text11

	def_object_events
	object_event 14,  2, SPRITE_YOUNGSTER, STAY, DOWN, PAL_NPC_BLUE, 1, YOUNGSTER, 5
	object_event 18,  5, SPRITE_YOUNGSTER, STAY, UP, PAL_NPC_BLUE, 2, YOUNGSTER, 6
	object_event 24,  4, SPRITE_YOUNGSTER, STAY, DOWN, PAL_NPC_GREEN, 3, JR_TRAINER_M, 4
	object_event 18,  8, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 4, JR_TRAINER_F, 2
	object_event 32,  3, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_BLUE, 5, YOUNGSTER, 7
	object_event 37,  4, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_BLUE, 6, LASS, 9
	object_event  8,  4, SPRITE_HIKER, STAY, RIGHT, PAL_NPC_BROWN, 7, HIKER, 2
	object_event 23,  9, SPRITE_HIKER, STAY, UP, PAL_NPC_BROWN, 8, HIKER, 3
	object_event 13,  7, SPRITE_HIKER, STAY, RIGHT, PAL_NPC_BROWN, 9, HIKER, 4
	object_event 22,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 10, TM_SEISMIC_TOSS

	def_warps_to ROUTE_25

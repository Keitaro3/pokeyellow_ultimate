Route24_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_SUPER_NERD, STAY, LEFT, PAL_NPC_RED, 1, ROCKET, 6
	object_event  5, 20, SPRITE_YOUNGSTER, STAY, UP, PAL_NPC_GREEN, 2, JR_TRAINER_M, 2
	object_event 11, 19, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_GREEN, 3, JR_TRAINER_M, 3
	object_event 10, 22, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_BLUE, 4, LASS, 7
	object_event 11, 25, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_BLUE, 5, YOUNGSTER, 4
	object_event 10, 28, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_BLUE, 6, LASS, 8
	object_event 11, 31, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_BROWN, 7, BUG_CATCHER, 9
	object_event 10,  5, SPRITE_POKE_BALL, STAY, NONE, 0, 8, TM_THUNDER_WAVE

	def_warps_to ROUTE_24

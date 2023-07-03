CeladonGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 7
	warp_event  5, 17, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_ERIKA, STAY, DOWN, PAL_NPC_GREEN, 1, ERIKA, 1
	object_event  2, 11, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_BLUE, 2, LASS, 16
	object_event  7, 10, SPRITE_BEAUTY, STAY, LEFT, PAL_NPC_BLUE, 3, BEAUTY, 1
	object_event  9,  5, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 4, JR_TRAINER_F, 11
	object_event  1,  5, SPRITE_BEAUTY, STAY, DOWN, PAL_NPC_BLUE, 5, BEAUTY, 2
	object_event  6,  3, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_BLUE, 6, LASS, 17
	object_event  3,  3, SPRITE_BEAUTY, STAY, DOWN, PAL_NPC_BLUE, 7, BEAUTY, 3
	object_event  5,  3, SPRITE_COOLTRAINER_F, STAY, DOWN, PAL_NPC_RED, 8, COOLTRAINER_F, 1

	def_warps_to CELADON_GYM

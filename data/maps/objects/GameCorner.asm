GameCorner_Object:
	db $f ; border block

	def_warp_events
	warp_event 15, 17, LAST_MAP, 8
	warp_event 16, 17, LAST_MAP, 8
	warp_event 17,  4, ROCKET_HIDEOUT_B1F, 2

	def_bg_events
	bg_event  9,  4, 12 ; CeladonGameCornerText12

	def_object_events
	object_event  2,  6, SPRITE_RECEPTIONIST, STAY, DOWN, PAL_NPC_GREEN, 1 ; person
	object_event  5,  6, SPRITE_CLERK, STAY, DOWN, 0, 2 ; person
	object_event  2, 10, SPRITE_MIDDLE_AGED_MAN, STAY, LEFT, PAL_NPC_RED, 3 ; person
	object_event  2, 13, SPRITE_BEAUTY, STAY, LEFT, PAL_NPC_BLUE, 4 ; person
	object_event  5, 11, SPRITE_FISHING_GURU, STAY, RIGHT, PAL_NPC_GREEN, 5 ; person
	object_event  8, 11, SPRITE_MIDDLE_AGED_WOMAN, STAY, LEFT, PAL_NPC_RED, 6 ; person
	object_event  8, 14, SPRITE_GYM_GUIDE, STAY, LEFT, PAL_NPC_RED, 7 ; person
	object_event 11, 15, SPRITE_GAMBLER, STAY, RIGHT, PAL_NPC_GREEN, 8 ; person
	object_event 14, 11, SPRITE_MIDDLE_AGED_MAN, STAY, LEFT, 0, 9 ; person
	object_event 17, 13, SPRITE_FISHING_GURU, STAY, RIGHT, PAL_NPC_BLUE, 10 ; person
	object_event  9,  5, SPRITE_ROCKET, STAY, UP, PAL_NPC_BROWN, 11, ROCKET, 7

	def_warps_to GAME_CORNER

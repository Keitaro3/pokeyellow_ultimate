Route8_Object:
	db $2c ; border block

	def_warp_events
	warp_event  1,  9, ROUTE_8_GATE, 1
	warp_event  1, 10, ROUTE_8_GATE, 1
	warp_event  8,  9, ROUTE_8_GATE, 3
	warp_event  8, 10, ROUTE_8_GATE, 3
	warp_event 13,  3, UNDERGROUND_PATH_ROUTE_8, 1

	def_bg_events
	bg_event 17,  3, 10 ; Route8Text10

	def_object_events
	object_event  8,  5, SPRITE_SUPER_NERD, STAY, RIGHT, PAL_NPC_BROWN, 1, SUPER_NERD, 3
	object_event 13,  9, SPRITE_GAMBLER, STAY, UP, PAL_NPC_BLUE, 2, GAMBLER, 5
	;object_event 42,  6, SPRITE_SUPER_NERD, STAY, UP, PAL_NPC_BROWN, 3, SUPER_NERD, 4
	object_event 42,  6, SPRITE_GUITARIST, STAY, UP, PAL_NPC_RED, 3, GUITARIST, 3
	object_event 26,  3, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_BLUE, 4, LASS, 12
	object_event 26,  4, SPRITE_SUPER_NERD, STAY, RIGHT, PAL_NPC_BROWN, 5, SUPER_NERD, 5
	object_event 26,  5, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_BLUE, 6, LASS, 13
	object_event 26,  6, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_BLUE, 7, LASS, 14
	object_event 46, 13, SPRITE_GAMBLER, STAY, DOWN, PAL_NPC_BLUE, 8, GAMBLER, 7
	object_event 51, 12, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_BLUE, 9, LASS, 15

	def_warps_to ROUTE_8

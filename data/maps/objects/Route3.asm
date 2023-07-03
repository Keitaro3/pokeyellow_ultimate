Route3_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events
	bg_event 59,  9, 10 ; Route3Text10

	def_object_events
	object_event 57, 11, SPRITE_SUPER_NERD, STAY, NONE, 0, 1 ; person
	object_event 10,  6, SPRITE_BUG_CATCHER, STAY, RIGHT, PAL_NPC_BROWN, 2, BUG_CATCHER, 4
	object_event 14,  4, SPRITE_YOUNGSTER, STAY, DOWN, PAL_NPC_BLUE, 3, YOUNGSTER, 1
	object_event 16,  9, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_BLUE, 4, LASS, 1
	object_event 19,  5, SPRITE_BUG_CATCHER, STAY, DOWN, PAL_NPC_BROWN, 5, BUG_CATCHER, 5
	object_event 23,  4, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_BLUE, 6, LASS, 2
	object_event 22,  9, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_BLUE, 7, YOUNGSTER, 2
	object_event 24,  6, SPRITE_BUG_CATCHER, STAY, RIGHT, PAL_NPC_BROWN, 8, BUG_CATCHER, 6
	object_event 33, 10, SPRITE_BRUNETTE_GIRL, STAY, UP, PAL_NPC_BLUE, 9, LASS, 3

	def_warps_to ROUTE_3

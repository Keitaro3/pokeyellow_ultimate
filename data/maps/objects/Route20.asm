Route20_Object:
	db $43 ; border block

	def_warp_events
	warp_event 48,  5, SEAFOAM_ISLANDS_1F, 1
	warp_event 58,  9, SEAFOAM_ISLANDS_1F, 3

	def_bg_events
	bg_event 51,  7, 11 ; Route20Text11
	bg_event 57, 11, 12 ; Route20Text12

	def_object_events
	object_event 87,  8, SPRITE_SWIMMER, STAY, UP, PAL_NPC_RED, 1, SWIMMER, 9
	object_event 68, 11, SPRITE_SWIMMER_F, STAY, UP, PAL_NPC_GREEN, 2, SWIMMER_F, 4
	object_event 45, 10, SPRITE_SWIMMER_F, STAY, DOWN, PAL_NPC_GREEN, 3, SWIMMER_F, 5
	object_event 55, 14, SPRITE_SWIMMER_F, STAY, RIGHT, PAL_NPC_GREEN, 4, JR_TRAINER_F, 24
	object_event 38, 13, SPRITE_SWIMMER, STAY, DOWN, PAL_NPC_RED, 5, SWIMMER, 10
	object_event 87, 13, SPRITE_SWIMMER, STAY, UP, PAL_NPC_RED, 6, SWIMMER, 11
	object_event 34,  9, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_BLUE, 7, BIRD_KEEPER, 11
	object_event 25,  7, SPRITE_SWIMMER_F, STAY, UP, PAL_NPC_GREEN, 8, SWIMMER_F, 6
	object_event 24, 12, SPRITE_SWIMMER_F, STAY, DOWN, PAL_NPC_GREEN, 9, JR_TRAINER_F, 16
	object_event 15,  8, SPRITE_SWIMMER_F, STAY, UP, PAL_NPC_GREEN, 10, SWIMMER_F, 7

	def_warps_to ROUTE_20

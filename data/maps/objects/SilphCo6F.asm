SilphCo6F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16,  0, SILPH_CO_7F, 2
	warp_event 14,  0, SILPH_CO_5F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_4F, 5
	warp_event 23,  3, SILPH_CO_2F, 7

	def_bg_events

	def_object_events
	object_event 10,  6, SPRITE_SILPH_WORKER, STAY, NONE, PAL_NPC_GREEN, 1 ; person
	object_event 20,  6, SPRITE_SILPH_WORKER, STAY, NONE, PAL_NPC_BLUE, 2 ; person
	object_event 21,  6, SPRITE_OFFICE_LADY, STAY, DOWN, PAL_NPC_GREEN, 3 ; person
	object_event 11, 10, SPRITE_OFFICE_LADY, STAY, RIGHT, PAL_NPC_RED, 4 ; person
	object_event 18, 13, SPRITE_SILPH_WORKER, STAY, UP, 0, 5 ; person
	object_event 17,  3, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 6, ROCKET, 30
	object_event  7,  8, SPRITE_SCIENTIST, STAY, DOWN, PAL_NPC_BLUE, 7, SCIENTIST, 7
	object_event 14, 15, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 8, ROCKET, 31
	object_event  3, 12, SPRITE_POKE_BALL, STAY, NONE, 0, 9, HP_UP
	object_event  2, 15, SPRITE_POKE_BALL, STAY, NONE, 0, 10, X_ACCURACY

	def_warps_to SILPH_CO_6F

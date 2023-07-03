SilphCo7F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16,  0, SILPH_CO_8F, 2
	warp_event 22,  0, SILPH_CO_6F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  7, SILPH_CO_11F, 4
	warp_event  5,  3, SILPH_CO_3F, 9
	warp_event 21, 15, SILPH_CO_5F, 4

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_SILPH_WORKER, STAY, NONE, PAL_NPC_GREEN, 1 ; person
	object_event 13, 13, SPRITE_SILPH_WORKER, STAY, UP, 0, 2 ; person
	object_event  7, 10, SPRITE_SILPH_WORKER, STAY, NONE, PAL_NPC_BLUE, 3 ; person
	object_event 10,  8, SPRITE_OFFICE_LADY, STAY, NONE, PAL_NPC_GREEN, 4 ; person
	object_event 13,  1, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 5, ROCKET, 32
	object_event  2, 13, SPRITE_SCIENTIST, STAY, DOWN, PAL_NPC_BLUE, 6, SCIENTIST, 8
	object_event 20,  2, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 7, ROCKET, 33
	object_event 19, 14, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 8, ROCKET, 34
	object_event  3,  7, SPRITE_BLUE, STAY, UP, 0, 9 ; person
	object_event  1,  9, SPRITE_POKE_BALL, STAY, NONE, 0, 10, CALCIUM
	object_event 24, 11, SPRITE_POKE_BALL, STAY, NONE, 0, 11, TM_SWORDS_DANCE

	def_warps_to SILPH_CO_7F

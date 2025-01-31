SilphCo2F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_1F, 3
	warp_event 26,  0, SILPH_CO_3F, 1
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event  3,  3, SILPH_CO_3F, 7
	warp_event 13,  3, SILPH_CO_8F, 5
	warp_event 27, 15, SILPH_CO_8F, 6
	warp_event  9, 15, SILPH_CO_6F, 5

	def_bg_events

	def_object_events
	object_event 10,  1, SPRITE_OFFICE_LADY, STAY, UP, PAL_NPC_RED, 1 ; person
	object_event  5, 12, SPRITE_SCIENTIST, STAY, DOWN, PAL_NPC_BLUE, 2, SCIENTIST, 2
	object_event 24, 13, SPRITE_SCIENTIST, STAY, LEFT, PAL_NPC_BLUE, 3, SCIENTIST, 3
	object_event 16, 11, SPRITE_ROCKET, STAY, UP, PAL_NPC_BROWN, 4, ROCKET, 23
	object_event 24,  7, SPRITE_ROCKET, STAY, UP, PAL_NPC_BROWN, 5, ROCKET, 24

	def_warps_to SILPH_CO_2F

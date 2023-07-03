MtMoonB2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 25,  9, MT_MOON_B1F, 2
	warp_event 21, 17, MT_MOON_B1F, 5
	warp_event 15, 27, MT_MOON_B1F, 6
	warp_event  5,  7, MT_MOON_B1F, 7

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_SUPER_NERD, STAY, RIGHT, PAL_NPC_BROWN, 1, SUPER_NERD, 2
	object_event 11, 16, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 2, ROCKET, 1
	object_event 15, 22, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 3, ROCKET, 2
	object_event 29, 11, SPRITE_ROCKET, STAY, UP, PAL_NPC_BROWN, 4, ROCKET, 3
	object_event 29, 17, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 5, ROCKET, 4
	object_event 12,  6, SPRITE_FOSSIL, STAY, NONE, 0, 6 ; person
	object_event 13,  6, SPRITE_FOSSIL, STAY, NONE, 0, 7 ; person
	object_event 25, 21, SPRITE_POKE_BALL, STAY, NONE, 0, 8, HP_UP
	object_event 29,  5, SPRITE_POKE_BALL, STAY, NONE, 0, 9, TM_MEGA_PUNCH

	def_warps_to MT_MOON_B2F

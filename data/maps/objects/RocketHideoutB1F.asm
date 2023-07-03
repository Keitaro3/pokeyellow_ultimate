RocketHideoutB1F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 23,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 21,  2, GAME_CORNER, 3
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 24, ROCKET_HIDEOUT_B2F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_bg_events

	def_object_events
	object_event 26,  8, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 1, ROCKET, 8
	object_event 12,  6, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 2, ROCKET, 9
	object_event 18, 17, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 3, ROCKET, 10
	object_event 15, 25, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 4, ROCKET, 11
	object_event 28, 18, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 5, ROCKET, 12
	object_event 11, 14, SPRITE_POKE_BALL, STAY, NONE, 0, 6, ESCAPE_ROPE
	object_event  9, 17, SPRITE_POKE_BALL, STAY, NONE, 0, 7, HYPER_POTION

	def_warps_to ROCKET_HIDEOUT_B1F

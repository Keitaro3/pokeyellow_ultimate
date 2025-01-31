RocketHideoutB4F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 2

	def_bg_events

	def_object_events
	object_event 25,  3, SPRITE_GIOVANNI, STAY, DOWN, PAL_NPC_RED, 1, GIOVANNI, 1
	object_event 23, 12, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 2, ROCKET, 16
	object_event 26, 12, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 3, ROCKET, 17
	object_event 11,  2, SPRITE_ROCKET, STAY, DOWN, PAL_NPC_BROWN, 4, ROCKET, 18
	object_event 10, 12, SPRITE_POKE_BALL, STAY, NONE, 0, 5, HP_UP
	object_event  9,  4, SPRITE_POKE_BALL, STAY, NONE, 0, 6, TM_RAZOR_WIND
	object_event 12, 20, SPRITE_POKE_BALL, STAY, NONE, 0, 7, IRON
	object_event 25,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 8, SILPH_SCOPE
	object_event 10,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 9, LIFT_KEY

	def_warps_to ROCKET_HIDEOUT_B4F

FuchsiaGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 6
	warp_event  5, 17, LAST_MAP, 6

	def_bg_events

	def_object_events
	object_event  4, 10, SPRITE_KOGA, STAY, DOWN, PAL_NPC_BLUE, 1, KOGA, 1
	object_event  8, 13, SPRITE_ROCKER, STAY, DOWN, PAL_NPC_BLUE, 2, JUGGLER, 7
	object_event  7,  8, SPRITE_ROCKER, STAY, RIGHT, PAL_NPC_BLUE, 3, JUGGLER, 3
	object_event  1, 12, SPRITE_ROCKER, STAY, DOWN, PAL_NPC_BLUE, 4, JUGGLER, 8
	object_event  3,  5, SPRITE_GUITARIST, STAY, UP, PAL_NPC_GREEN, 5, TAMER, 1
	object_event  8,  2, SPRITE_GUITARIST, STAY, DOWN, PAL_NPC_GREEN, 6, TAMER, 2
	object_event  2,  7, SPRITE_ROCKER, STAY, LEFT, PAL_NPC_BLUE, 7, JUGGLER, 4
	object_event  7, 15, SPRITE_GYM_GUIDE, STAY, DOWN, PAL_NPC_BLUE, 8 ; person

	def_warps_to FUCHSIA_GYM

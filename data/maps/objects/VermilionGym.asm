VermilionGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 4
	warp_event  5, 17, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_SURGE, STAY, DOWN, PAL_NPC_BROWN, 1, LT_SURGE, 1
	object_event  9,  6, SPRITE_GENTLEMAN, STAY, LEFT, PAL_NPC_BLUE, 2, GENTLEMAN, 3
	object_event  3,  8, SPRITE_GUITARIST, STAY, LEFT, PAL_NPC_RED, 3, GUITARIST, 1
	object_event  0, 10, SPRITE_SAILOR, STAY, RIGHT, PAL_NPC_BLUE, 4, SAILOR, 8
	object_event  4, 14, SPRITE_GYM_GUIDE, STAY, DOWN, PAL_NPC_BLUE, 5 ; person

	def_warps_to VERMILION_GYM

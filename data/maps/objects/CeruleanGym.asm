CeruleanGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 4
	warp_event  5, 13, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_MISTY, STAY, DOWN, PAL_NPC_RED, 1, MISTY, 1
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 2, JR_TRAINER_F, 1
	object_event  8,  7, SPRITE_SWIMMER, STAY, LEFT, PAL_NPC_RED, 3, SWIMMER, 1
	object_event  7, 10, SPRITE_GYM_GUIDE, STAY, DOWN, PAL_NPC_BLUE, 4 ; person

	def_warps_to CERULEAN_GYM

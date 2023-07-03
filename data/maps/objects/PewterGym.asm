PewterGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 3
	warp_event  5, 13, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_BROCK, STAY, DOWN, PAL_NPC_BROWN, 1, BROCK, 1
	object_event  3,  6, SPRITE_YOUNGSTER, STAY, RIGHT, PAL_NPC_GREEN, 2, JR_TRAINER_M, 1
	object_event  7, 10, SPRITE_GYM_GUIDE, STAY, DOWN, PAL_NPC_BLUE, 3 ; person

	def_warps_to PEWTER_GYM

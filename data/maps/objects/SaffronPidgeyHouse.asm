SaffronPidgeyHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 4
	warp_event  3,  7, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 1 ; person
	object_event  0,  4, SPRITE_BIRD, WALK, UP_DOWN, PAL_NPC_BROWN, 2 ; person
	object_event  4,  1, SPRITE_YOUNGSTER, STAY, DOWN, 0, 3 ; person
	object_event  3,  3, SPRITE_PAPER, STAY, NONE, 0, 4 ; person

	def_warps_to SAFFRON_PIDGEY_HOUSE

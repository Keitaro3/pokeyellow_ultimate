Route6_Object:
	db $f ; border block

	def_warp_events
	warp_event  9,  1, ROUTE_6_GATE, 3
	warp_event 10,  1, ROUTE_6_GATE, 3
	warp_event 10,  7, ROUTE_6_GATE, 1
	warp_event 17, 13, UNDERGROUND_PATH_ROUTE_6, 1

	def_bg_events
	bg_event 19, 15, 7 ; Route6Text7

	def_object_events
	object_event 10, 21, SPRITE_YOUNGSTER, STAY, RIGHT, PAL_NPC_GREEN, 1, JR_TRAINER_M, 5
	object_event 11, 21, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 2, JR_TRAINER_F, 3
	object_event  0, 15, SPRITE_BUG_CATCHER, STAY, RIGHT, PAL_NPC_BROWN, 3, BUG_CATCHER, 10
	object_event 11, 31, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_GREEN, 4, JR_TRAINER_M, 6
	object_event 11, 30, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 5, JR_TRAINER_F, 4
	object_event 19, 26, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_BROWN, 6, BUG_CATCHER, 11

	def_warps_to ROUTE_6

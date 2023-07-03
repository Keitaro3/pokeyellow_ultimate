Route12_Object:
	db $43 ; border block

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 1
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_bg_events
	bg_event 13, 13, 11 ; Route12Text11
	bg_event 11, 63, 12 ; Route12Text12

	def_object_events
	object_event 10, 62, SPRITE_ROCK_SMASH, STAY, DOWN, 0, 1 ; person
	object_event 14, 31, SPRITE_FISHER, STAY, LEFT, PAL_NPC_GREEN, 2, FISHER, 3
	object_event  5, 39, SPRITE_FISHER, STAY, UP, PAL_NPC_GREEN, 3, FISHER, 4
	object_event 11, 92, SPRITE_YOUNGSTER, STAY, LEFT, PAL_NPC_GREEN, 4, JR_TRAINER_M, 9
	object_event 14, 76, SPRITE_GUITARIST, STAY, UP, PAL_NPC_RED, 5, GUITARIST, 2
	object_event 12, 40, SPRITE_FISHER, STAY, LEFT, PAL_NPC_GREEN, 6, FISHER, 5
	object_event  9, 52, SPRITE_FISHER, STAY, RIGHT, PAL_NPC_GREEN, 7, FISHER, 6
	object_event  6, 87, SPRITE_FISHER, STAY, DOWN, PAL_NPC_GREEN, 8, FISHER, 11
	object_event 14, 35, SPRITE_POKE_BALL, STAY, NONE, 0, 9, TM_PAY_DAY
	object_event  5, 89, SPRITE_POKE_BALL, STAY, NONE, 0, 10, IRON

	def_warps_to ROUTE_12

SSAnneB1FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  2,  5, SS_ANNE_B1F, 5
	warp_event  3,  5, SS_ANNE_B1F, 5
	warp_event 12,  5, SS_ANNE_B1F, 4
	warp_event 13,  5, SS_ANNE_B1F, 4
	warp_event 22,  5, SS_ANNE_B1F, 3
	warp_event 23,  5, SS_ANNE_B1F, 3
	warp_event  2, 15, SS_ANNE_B1F, 2
	warp_event  3, 15, SS_ANNE_B1F, 2
	warp_event 12, 15, SS_ANNE_B1F, 1
	warp_event 13, 15, SS_ANNE_B1F, 1

	def_bg_events

	def_object_events
	object_event  0, 13, SPRITE_SAILOR, STAY, DOWN, PAL_NPC_BLUE, 1, SAILOR, 3
	object_event  2, 11, SPRITE_SAILOR, STAY, DOWN, PAL_NPC_BLUE, 2, SAILOR, 4
	object_event 12,  3, SPRITE_SAILOR, STAY, LEFT, PAL_NPC_BLUE, 3, SAILOR, 5
	object_event 22,  2, SPRITE_SAILOR, STAY, DOWN, PAL_NPC_BLUE, 4, SAILOR, 6
	object_event  0,  2, SPRITE_SAILOR, STAY, RIGHT, PAL_NPC_BLUE, 5, SAILOR, 7
	object_event  0,  4, SPRITE_FISHER, STAY, RIGHT, PAL_NPC_GREEN, 6, FISHER, 2
	object_event 10, 13, SPRITE_SUPER_NERD, STAY, RIGHT, PAL_NPC_GREEN, 7 ; person
	object_event 11, 12, SPRITE_MONSTER, STAY, NONE, PAL_NPC_BLUE, 8 ; person
	object_event 20,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 9, ETHER
	object_event 10,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 10, TM_REST
	object_event 12, 11, SPRITE_POKE_BALL, STAY, NONE, 0, 11, MAX_POTION

	def_warps_to SS_ANNE_B1F_ROOMS

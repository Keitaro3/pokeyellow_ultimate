SSAnne2FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1
	warp_event  3,  5, SS_ANNE_2F, 1
	warp_event 12,  5, SS_ANNE_2F, 2
	warp_event 13,  5, SS_ANNE_2F, 2
	warp_event 22,  5, SS_ANNE_2F, 3
	warp_event 23,  5, SS_ANNE_2F, 3
	warp_event  2, 15, SS_ANNE_2F, 4
	warp_event  3, 15, SS_ANNE_2F, 4
	warp_event 12, 15, SS_ANNE_2F, 5
	warp_event 13, 15, SS_ANNE_2F, 5
	warp_event 22, 15, SS_ANNE_2F, 6
	warp_event 23, 15, SS_ANNE_2F, 6

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_GENTLEMAN, STAY, RIGHT, PAL_NPC_BLUE, 1, GENTLEMAN, 3
	object_event 13,  4, SPRITE_FISHER, STAY, LEFT, PAL_NPC_GREEN, 2, FISHER, 1
	object_event  0, 14, SPRITE_GENTLEMAN, STAY, RIGHT, PAL_NPC_BLUE, 3, GENTLEMAN, 5
	object_event  2, 11, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_BLUE, 4, LASS, 11
	object_event  1,  2, SPRITE_GENTLEMAN, STAY, DOWN, PAL_NPC_RED, 5 ; person
	object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, 0, 6, MAX_ETHER
	object_event 21,  2, SPRITE_GENTLEMAN, STAY, DOWN, 0, 7 ; person
	object_event 22,  1, SPRITE_GRAMPS, STAY, DOWN, 0, 8 ; person
	object_event  0, 12, SPRITE_POKE_BALL, STAY, NONE, 0, 9, RARE_CANDY
	object_event 12, 12, SPRITE_GENTLEMAN, STAY, DOWN, PAL_NPC_RED, 10 ; person
	object_event 11, 14, SPRITE_LITTLE_BOY, STAY, NONE, PAL_NPC_BROWN, 11 ; person
	object_event 22, 12, SPRITE_BRUNETTE_GIRL, STAY, LEFT, 0, 12 ; person
	object_event 20, 12, SPRITE_BEAUTY, STAY, RIGHT, PAL_NPC_GREEN, 13 ; person

	def_warps_to SS_ANNE_2F_ROOMS

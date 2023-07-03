Museum1F_Object:
	db $a ; border block

	def_warp_events
	warp_event 10,  7, LAST_MAP, 1
	warp_event 11,  7, LAST_MAP, 1
	warp_event 16,  7, LAST_MAP, 2
	warp_event 17,  7, LAST_MAP, 2
	warp_event  7,  7, MUSEUM_2F, 1

	def_bg_events

	def_object_events
	object_event 12,  4, SPRITE_SCIENTIST, STAY, LEFT, PAL_NPC_BLUE, 1 ; person
	object_event  1,  4, SPRITE_GAMBLER, STAY, NONE, 0, 2 ; person
	object_event 15,  2, SPRITE_SCIENTIST, STAY, DOWN, PAL_NPC_BLUE, 3 ; person
	object_event 17,  4, SPRITE_SCIENTIST, STAY, NONE, PAL_NPC_BLUE, 4 ; person
	object_event 16,  2, SPRITE_OLD_AMBER, STAY, NONE, 0, 5 ; person

	def_warps_to MUSEUM_1F

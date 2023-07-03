CinnabarMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 5
	warp_event  4,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, STAY, RIGHT, 0, 1 ; person
	object_event  6,  2, SPRITE_OFFICE_LADY, STAY, NONE, PAL_NPC_GREEN, 2 ; person
	object_event  3,  4, SPRITE_SCIENTIST, STAY, NONE, PAL_NPC_BLUE, 3 ; person

	def_warps_to CINNABAR_MART

PewterPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 7
	warp_event  4,  7, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event 11,  7, SPRITE_GENTLEMAN, STAY, LEFT, PAL_NPC_RED, 2 ; person
	object_event  1,  3, SPRITE_JIGGLYPUFF, STAY, DOWN, PAL_NPC_RED, 3 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 4 ; person
	object_event  4,  3, SPRITE_COOLTRAINER_F, STAY, UP, 0, 5 ; person

	def_warps_to PEWTER_POKECENTER

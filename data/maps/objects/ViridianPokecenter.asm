ViridianPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event 10,  5, SPRITE_GENTLEMAN, WALK, UP_DOWN, 0, 2 ; person
	object_event  4,  3, SPRITE_COOLTRAINER_M, STAY, UP, PAL_NPC_RED, 3 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 4 ; person

	def_warps_to VIRIDIAN_POKECENTER

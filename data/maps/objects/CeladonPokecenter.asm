CeladonPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 6
	warp_event  4,  7, LAST_MAP, 6

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event  7,  3, SPRITE_GENTLEMAN, STAY, DOWN, 0, 2 ; person
	object_event 10,  5, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, PAL_NPC_RED, 3 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 4 ; person

	def_warps_to CELADON_POKECENTER

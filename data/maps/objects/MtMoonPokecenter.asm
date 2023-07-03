MtMoonPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event  4,  3, SPRITE_BUG_CATCHER, STAY, UP, PAL_NPC_GREEN, 2 ; person
	object_event  7,  3, SPRITE_GENTLEMAN, STAY, UP, 0, 3 ; person
	object_event 10,  6, SPRITE_MIDDLE_AGED_MAN, WALK, LEFT_RIGHT, PAL_NPC_RED, 4 ; person
	object_event  7,  2, SPRITE_CLIPBOARD, STAY, NONE, 0, 5 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 6 ; person

	def_warps_to MT_MOON_POKECENTER

CeladonChiefHouse_Object:
	db $f ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 12
	warp_event  3,  7, LAST_MAP, 12

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, STAY, DOWN, 0, 1 ; person
	object_event  1,  4, SPRITE_JAMES, WALK, ANY_DIR, PAL_NPC_BLUE, 2 ; person
	object_event  5,  6, SPRITE_JESSIE, STAY, LEFT, PAL_NPC_RED, 3 ; person

	def_warps_to CELADON_CHIEF_HOUSE

Museum2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_bg_events
	bg_event 11,  2, 6 ; Museum2FText6
	bg_event  2,  5, 7 ; Museum2FText7

	def_object_events
	object_event  1,  7, SPRITE_BUG_CATCHER, WALK, LEFT_RIGHT, PAL_NPC_RED, 1 ; person
	object_event  0,  5, SPRITE_GRAMPS, STAY, DOWN, PAL_NPC_BLUE, 2 ; person
	object_event  7,  5, SPRITE_SCIENTIST, STAY, DOWN, PAL_NPC_BLUE, 3 ; person
	object_event 11,  5, SPRITE_BRUNETTE_GIRL, STAY, NONE, PAL_NPC_GREEN, 4 ; person
	object_event 12,  5, SPRITE_HIKER, STAY, DOWN, PAL_NPC_RED, 5 ; person

	def_warps_to MUSEUM_2F

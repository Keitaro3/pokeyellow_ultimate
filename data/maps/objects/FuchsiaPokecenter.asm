FuchsiaPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 3
	warp_event  4,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event  4,  3, SPRITE_GUITARIST, STAY, UP, 0, 2 ; person
	object_event  6,  5, SPRITE_COOLTRAINER_F, WALK, LEFT_RIGHT, PAL_NPC_BLUE, 3 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 4 ; person

	def_warps_to FUCHSIA_POKECENTER

LavenderPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, 0, 1 ; person
	object_event  5,  3, SPRITE_GENTLEMAN, STAY, NONE, 0, 2 ; person
	object_event 10,  5, SPRITE_LITTLE_GIRL, WALK, LEFT_RIGHT, PAL_NPC_GREEN, 3 ; person
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, 0, 4 ; person

	def_warps_to LAVENDER_POKECENTER

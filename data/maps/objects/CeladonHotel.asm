CeladonHotel_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 13
	warp_event  4,  7, LAST_MAP, 13

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_GRANNY, STAY, DOWN, 0, 1 ; person
	object_event  2,  4, SPRITE_BEAUTY, STAY, NONE, 0, 2 ; person
	object_event  8,  4, SPRITE_GUITARIST, WALK, LEFT_RIGHT, 0, 3 ; person

	def_warps_to CELADON_HOTEL

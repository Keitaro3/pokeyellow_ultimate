Route19_Object:
	db $43 ; border block

	def_warp_events
	warp_event  5,  9, SUMMER_BEACH_HOUSE, 1

	def_bg_events
	bg_event 11, 11, 11 ; Route19Text11

	def_object_events
	object_event  9,  7, SPRITE_COOLTRAINER_M, STAY, RIGHT, 1, SWIMMER, 2
	object_event 12,  9, SPRITE_COOLTRAINER_M, STAY, LEFT, 2, SWIMMER, 3
	object_event 13, 25, SPRITE_SWIMMER, STAY, LEFT, 3, SWIMMER, 4
	object_event  4, 27, SPRITE_SWIMMER, STAY, RIGHT, 4, SWIMMER, 5
	object_event 16, 31, SPRITE_SWIMMER, STAY, UP, 5, SWIMMER, 6
	object_event  9, 13, SPRITE_SWIMMER, STAY, DOWN, 6, SWIMMER, 7
	object_event  8, 43, SPRITE_SWIMMER, STAY, LEFT, 7, BEAUTY, 12
	object_event 11, 43, SPRITE_SWIMMER, STAY, RIGHT, 8, BEAUTY, 13
	object_event  9, 42, SPRITE_SWIMMER, STAY, UP, 9, SWIMMER, 8
	object_event 10, 44, SPRITE_SWIMMER, STAY, DOWN, 10, BEAUTY, 14

	def_warps_to ROUTE_19

Route20_Object:
	db $43 ; border block

	def_warp_events
	warp_event 48,  5, SEAFOAM_ISLANDS_1F, 1
	warp_event 58,  9, SEAFOAM_ISLANDS_1F, 3

	def_bg_events
	bg_event 51,  7, 11 ; Route20Text11
	bg_event 57, 11, 12 ; Route20Text12

	def_object_events
	object_event 87,  8, SPRITE_SWIMMER, STAY, UP, 1, SWIMMER, 9
	object_event 68, 11, SPRITE_SWIMMER, STAY, UP, 2, BEAUTY, 15
	object_event 45, 10, SPRITE_SWIMMER, STAY, DOWN, 3, BEAUTY, 6
	object_event 55, 14, SPRITE_SWIMMER, STAY, RIGHT, 4, JR_TRAINER_F, 24
	object_event 38, 13, SPRITE_SWIMMER, STAY, DOWN, 5, SWIMMER, 10
	object_event 87, 13, SPRITE_SWIMMER, STAY, UP, 6, SWIMMER, 11
	object_event 34,  9, SPRITE_COOLTRAINER_M, STAY, UP, 7, BIRD_KEEPER, 11
	object_event 25,  7, SPRITE_SWIMMER, STAY, UP, 8, BEAUTY, 7
	object_event 24, 12, SPRITE_SWIMMER, STAY, DOWN, 9, JR_TRAINER_F, 16
	object_event 15,  8, SPRITE_SWIMMER, STAY, UP, 10, BEAUTY, 8

	def_warps_to ROUTE_20

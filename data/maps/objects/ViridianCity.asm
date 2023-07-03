ViridianCity_Object:
	db $f ; border block

	def_warp_events
	warp_event 23, 25, VIRIDIAN_POKECENTER, 1
	warp_event 29, 19, VIRIDIAN_MART, 1
	warp_event 21, 15, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_HOUSE, 1
	warp_event 32,  7, VIRIDIAN_GYM, 1

	def_bg_events
	bg_event 17, 17,  8 ; ViridianCityText8
	bg_event 19,  1,  9 ; ViridianCityText9
	bg_event 21, 29, 10 ; ViridianCityText10
	bg_event 30, 19, 11 ; MartSignText
	bg_event 24, 25, 12 ; PokeCenterSignText
	bg_event 27,  7, 13 ; ViridianCityText13

	def_object_events
	object_event 13, 20, SPRITE_BUG_CATCHER, WALK, ANY_DIR, PAL_NPC_GREEN, 1 ; person
	object_event 30,  8, SPRITE_GAMBLER, STAY, NONE, PAL_NPC_BLUE, 2 ; person
	object_event 30, 25, SPRITE_BUG_CATCHER, WALK, ANY_DIR, PAL_NPC_BLUE, 3 ; person
	object_event 17,  9, SPRITE_TEACHER, STAY, RIGHT, PAL_NPC_GREEN, 4 ; person
	object_event 18,  9, SPRITE_GAMBLER_ASLEEP, STAY, NONE, 0, 5 ; person
	object_event  6, 23, SPRITE_FISHER, STAY, DOWN, PAL_NPC_RED, 6 ; person
	object_event 17,  5, SPRITE_GAMBLER, WALK, LEFT_RIGHT, 0, 7 ; person

	def_warps_to VIRIDIAN_CITY

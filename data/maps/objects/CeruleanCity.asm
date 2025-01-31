CeruleanCity_Object:
	db $a ; border block

	def_warp_events
	warp_event 27, 11, CERULEAN_TRASHED_HOUSE, 1
	warp_event 13, 15, CERULEAN_TRADE_HOUSE, 1
	warp_event 19, 17, CERULEAN_POKECENTER, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 13, 25, BIKE_SHOP, 1
	warp_event 25, 25, CERULEAN_MART, 1
	warp_event  4, 11, CERULEAN_CAVE_1F, 1
	warp_event 27,  9, CERULEAN_TRASHED_HOUSE, 3
	warp_event  9, 11, CERULEAN_BADGE_HOUSE, 2
	warp_event  9,  9, CERULEAN_BADGE_HOUSE, 1

	def_bg_events
	bg_event 23, 19, 12 ; CeruleanCityText12
	bg_event 17, 29, 13 ; CeruleanCityText13
	bg_event 26, 25, 14 ; MartSignText
	bg_event 20, 17, 15 ; PokeCenterSignText
	bg_event 11, 25, 16 ; CeruleanCityText16
	bg_event 27, 21, 17 ; CeruleanCityText17

	def_object_events
	object_event 20,  2, SPRITE_BLUE, STAY, DOWN, 0, 1 ; person
	object_event 30,  8, SPRITE_ROCKET, STAY, NONE, PAL_NPC_BROWN, 2, ROCKET, 5
	object_event 31, 20, SPRITE_YOUNGSTER, STAY, DOWN, 0, 3 ; person
	object_event 15, 18, SPRITE_SUPER_NERD, WALK, UP_DOWN, 0, 4 ; person
	object_event  9, 21, SPRITE_SUPER_NERD, WALK, LEFT_RIGHT, PAL_NPC_RED, 5 ; person
	object_event 28, 12, SPRITE_GUARD, STAY, DOWN, 0, 6 ; person
	object_event 29, 26, SPRITE_COOLTRAINER_F, STAY, LEFT, PAL_NPC_GREEN, 7 ; person
	object_event 28, 26, SPRITE_SLOWPOKE, STAY, NONE, PAL_NPC_RED, 8 ; person
	object_event  9, 27, SPRITE_COOLTRAINER_F, WALK, LEFT_RIGHT, 0, 9 ; person
	object_event  4, 12, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_RED, 10 ; person
	object_event 27, 12, SPRITE_GUARD, STAY, DOWN, 0, 11 ; person

	def_warps_to CERULEAN_CITY

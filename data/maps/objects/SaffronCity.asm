SaffronCity_Object:
	db $f ; border block

	def_warp_events
	warp_event  7,  5, COPYCATS_HOUSE_1F, 1
	warp_event 26,  3, FIGHTING_DOJO, 1
	warp_event 34,  3, SAFFRON_GYM, 1
	warp_event 13, 11, SAFFRON_PIDGEY_HOUSE, 1
	warp_event 25, 11, SAFFRON_MART, 1
	warp_event 18, 21, SILPH_CO_1F, 1
	warp_event  9, 29, SAFFRON_POKECENTER, 1
	warp_event 29, 29, MR_PSYCHICS_HOUSE, 1

	def_bg_events
	bg_event 17,  5, 16 ; SaffronCityText16
	bg_event 27,  5, 17 ; SaffronCityText17
	bg_event 35,  5, 18 ; SaffronCityText18
	bg_event 26, 11, 19 ; MartSignText
	bg_event 39, 19, 20 ; SaffronCityText20
	bg_event  5, 21, 21 ; SaffronCityText21
	bg_event 15, 21, 22 ; SaffronCityText22
	bg_event 10, 29, 23 ; PokeCenterSignText
	bg_event 27, 29, 24 ; SaffronCityText24
	bg_event  1, 19, 25 ; SaffronCityText25

	def_object_events
	object_event  7,  6, SPRITE_ROCKET, STAY, NONE, 0, 1 ; person
	object_event 20,  8, SPRITE_ROCKET, WALK, LEFT_RIGHT, 0, 2 ; person
	object_event 34,  4, SPRITE_ROCKET, STAY, NONE, 0, 3 ; person
	object_event 13, 12, SPRITE_ROCKET, STAY, NONE, 0, 4 ; person
	object_event 11, 25, SPRITE_ROCKET, WALK, LEFT_RIGHT, 0, 5 ; person
	object_event 32, 13, SPRITE_ROCKET, WALK, LEFT_RIGHT, 0, 6 ; person
	object_event 18, 30, SPRITE_ROCKET, WALK, LEFT_RIGHT, 0, 7 ; person
	object_event  8, 14, SPRITE_SCIENTIST, WALK, ANY_DIR, PAL_NPC_BLUE, 8 ; person
	object_event 23, 23, SPRITE_SILPH_WORKER, STAY, NONE, 0, 9 ; person
	object_event 17, 30, SPRITE_OFFICE_LADY, WALK, LEFT_RIGHT, PAL_NPC_GREEN, 10 ; person
	object_event 30, 12, SPRITE_GENTLEMAN, STAY, DOWN, PAL_NPC_BLUE, 11 ; person
	object_event 31, 12, SPRITE_BIRD, STAY, DOWN, PAL_NPC_BROWN, 12 ; person
	object_event 18,  8, SPRITE_GUITARIST, STAY, UP, 0, 13 ; person
	object_event 18, 22, SPRITE_ROCKET, STAY, DOWN, 0, 14 ; person

	def_warps_to SAFFRON_CITY

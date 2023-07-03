Route10_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11, 19, ROCK_TUNNEL_POKECENTER, 1
	warp_event  8, 17, ROCK_TUNNEL_1F, 1
	warp_event  8, 53, ROCK_TUNNEL_1F, 3
	warp_event  6, 39, POWER_PLANT, 1

	def_bg_events
	bg_event  7, 19, 7 ; Route10Text7
	bg_event 12, 19, 8 ; PokeCenterSignText
	bg_event  9, 55, 9 ; Route10Text9
	bg_event  5, 41, 10 ; Route10Text10

	def_object_events
	object_event 10, 44, SPRITE_SUPER_NERD, STAY, LEFT, PAL_NPC_BLUE, 1, POKEMANIAC, 1
	object_event  3, 57, SPRITE_HIKER, STAY, UP, PAL_NPC_BROWN, 2, HIKER, 8
	object_event 14, 64, SPRITE_SUPER_NERD, STAY, LEFT, PAL_NPC_BLUE, 3, POKEMANIAC, 2
	object_event  7, 25, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 4, JR_TRAINER_F, 7
	object_event  3, 61, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 5, HIKER, 9
	object_event  7, 54, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 6, JR_TRAINER_F, 8

	def_warps_to ROUTE_10

RockTunnel1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 15,  3, LAST_MAP, 2
	warp_event 15,  0, LAST_MAP, 2
	warp_event 15, 33, LAST_MAP, 3
	warp_event 15, 35, LAST_MAP, 3
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

	def_bg_events
	bg_event 11, 29, 8 ; RockTunnel1Text8

	def_object_events
	object_event  7,  5, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 1, HIKER, 13
	object_event  5, 16, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 2, HIKER, 14
	object_event 17, 15, SPRITE_HIKER, STAY, LEFT, PAL_NPC_BROWN, 3, HIKER, 15
	object_event 23,  8, SPRITE_SUPER_NERD, STAY, LEFT, PAL_NPC_BLUE, 4, POKEMANIAC, 7
	object_event 37, 21, SPRITE_BRUNETTE_GIRL, STAY, LEFT, PAL_NPC_GREEN, 5, JR_TRAINER_F, 17
	object_event 22, 24, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 6, JR_TRAINER_F, 18
	object_event 32, 24, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 7, JR_TRAINER_F, 19

	def_warps_to ROCK_TUNNEL_1F

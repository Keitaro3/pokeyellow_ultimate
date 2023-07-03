RockTunnelB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 5
	warp_event 27,  3, ROCK_TUNNEL_1F, 6
	warp_event 23, 11, ROCK_TUNNEL_1F, 7
	warp_event  3,  3, ROCK_TUNNEL_1F, 8

	def_bg_events

	def_object_events
	object_event 11, 13, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_GREEN, 1, JR_TRAINER_F, 9
	object_event  6, 10, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 2, HIKER, 10
	object_event  3,  5, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BLUE, 3, POKEMANIAC, 3
	object_event 20, 21, SPRITE_SUPER_NERD, STAY, RIGHT, PAL_NPC_BLUE, 4, POKEMANIAC, 4
	object_event 30, 10, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 5, HIKER, 11
	object_event 14, 28, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, PAL_NPC_GREEN, 6, JR_TRAINER_F, 10
	object_event 33,  5, SPRITE_HIKER, STAY, RIGHT, PAL_NPC_BROWN, 7, HIKER, 12
	object_event 26, 30, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BLUE, 8, POKEMANIAC, 5

	def_warps_to ROCK_TUNNEL_B1F

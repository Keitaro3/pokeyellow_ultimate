MtMoon1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 14, 35, LAST_MAP, 2
	warp_event 15, 35, LAST_MAP, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4

	def_bg_events
	bg_event 15, 23, 14 ; MtMoon1Text14

	def_object_events
	object_event  5,  6, SPRITE_HIKER, STAY, DOWN, PAL_NPC_BROWN, 1, HIKER, 1
	object_event 12, 16, SPRITE_YOUNGSTER, STAY, RIGHT, PAL_NPC_BLUE, 2, YOUNGSTER, 3
	object_event 30,  4, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_BLUE, 3, LASS, 5
	object_event 24, 31, SPRITE_SUPER_NERD, STAY, UP, PAL_NPC_BROWN, 4, SUPER_NERD, 1
	object_event 16, 23, SPRITE_BRUNETTE_GIRL, STAY, DOWN, PAL_NPC_BLUE, 5, LASS, 6
	object_event  7, 22, SPRITE_BUG_CATCHER, STAY, DOWN, PAL_NPC_BROWN, 6, BUG_CATCHER, 7
	object_event 30, 27, SPRITE_BUG_CATCHER, STAY, RIGHT, PAL_NPC_BROWN, 7, BUG_CATCHER, 8
	object_event  2, 20, SPRITE_POKE_BALL, STAY, NONE, 0, 8, POTION
	object_event  2,  2, SPRITE_POKE_BALL, STAY, NONE, 0, 9, MOON_STONE
	object_event 35, 31, SPRITE_POKE_BALL, STAY, NONE, 0, 10, RARE_CANDY
	object_event 36, 23, SPRITE_POKE_BALL, STAY, NONE, 0, 11, ESCAPE_ROPE
	object_event 20, 33, SPRITE_POKE_BALL, STAY, NONE, 0, 12, POTION
	object_event  5, 32, SPRITE_POKE_BALL, STAY, NONE, 0, 13, TM_WATER_GUN

	def_warps_to MT_MOON_1F

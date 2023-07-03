CinnabarGym_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16, 17, LAST_MAP, 2
	warp_event 17, 17, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_BLAINE, STAY, DOWN, PAL_NPC_BROWN, 1, BLAINE, 1
	object_event 17,  2, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BROWN, 2, SUPER_NERD, 9
	object_event 17,  8, SPRITE_BIKE_SHOP_CLERK, STAY, DOWN, PAL_NPC_GREEN, 3, BURGLAR, 4
	object_event 11,  4, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BROWN, 4, SUPER_NERD, 10
	object_event 11,  8, SPRITE_BIKE_SHOP_CLERK, STAY, DOWN, PAL_NPC_GREEN, 5, BURGLAR, 5
	object_event 11, 14, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BROWN, 6, SUPER_NERD, 11
	object_event  3, 14, SPRITE_BIKE_SHOP_CLERK, STAY, DOWN, PAL_NPC_GREEN, 7, BURGLAR, 6
	object_event  3,  8, SPRITE_SUPER_NERD, STAY, DOWN, PAL_NPC_BROWN, 8, SUPER_NERD, 12
	object_event 16, 13, SPRITE_GYM_GUIDE, STAY, DOWN, PAL_NPC_BLUE, 9 ; person

	def_warps_to CINNABAR_GYM

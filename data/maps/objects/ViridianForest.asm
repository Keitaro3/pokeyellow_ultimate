ViridianForest_Object:
	db $3 ; border block

	def_warp_events
	warp_event  1,  0, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event  2,  0, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 15, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 16, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 17, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2
	warp_event 18, 47, VIRIDIAN_FOREST_SOUTH_GATE, 2

	def_bg_events
	bg_event 24, 40, 11 ; ViridianForestText9
	bg_event 16, 32, 12 ; ViridianForestText10
	bg_event 26, 17, 13 ; ViridianForestText11
	bg_event  4, 24, 14 ; ViridianForestText12
	bg_event 18, 45, 15 ; ViridianForestText13
	bg_event  2,  1, 16 ; ViridianForestText14

	def_object_events
	object_event 16, 43, SPRITE_YOUNGSTER, STAY, NONE, 0, 1 ; person
	object_event 30, 33, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_BROWN, 2, BUG_CATCHER, 1
	object_event 30, 19, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_BROWN, 3, BUG_CATCHER, 2
	object_event  2, 18, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_BROWN, 4, BUG_CATCHER, 3
	object_event  2, 41, SPRITE_BUG_CATCHER, STAY, NONE, PAL_NPC_BROWN, 5, BUG_CATCHER, 15
	object_event 13, 17, SPRITE_BUG_CATCHER, STAY, RIGHT, PAL_NPC_BROWN, 6, BUG_CATCHER, 16
	object_event 25, 11, SPRITE_POKE_BALL, STAY, NONE, 0, 7, ANTIDOTE
	object_event 12, 29, SPRITE_POKE_BALL, STAY, NONE, 0, 8, POTION
	object_event  1, 31, SPRITE_POKE_BALL, STAY, NONE, 0, 9, POKE_BALL
	object_event 27, 40, SPRITE_BUG_CATCHER, STAY, NONE, PAL_NPC_GREEN, 10 ; person

	def_warps_to VIRIDIAN_FOREST

CeruleanCaveB1F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  3,  6, CERULEAN_CAVE_1F, 9

	def_bg_events

	def_object_events
	object_event  5, 10, SPRITE_MONSTER, STAY, DOWN, PAL_NPC_BLUE, 1, MEWTWO, 70 | PKMN
	object_event 24,  7, SPRITE_POKE_BALL, STAY, NONE, 0, 2, ULTRA_BALL
	object_event 24,  1, SPRITE_POKE_BALL, STAY, NONE, 0, 3, MAX_REVIVE

	def_warps_to CERULEAN_CAVE_B1F

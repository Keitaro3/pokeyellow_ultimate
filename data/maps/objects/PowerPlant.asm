PowerPlant_Object:
	db $2e ; border block

	def_warp_events
	warp_event  4, 35, LAST_MAP, 4
	warp_event  5, 35, LAST_MAP, 4
	warp_event  0, 11, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  9, 20, SPRITE_POKE_BALL, STAY, NONE, 0, 1, VOLTORB, 40 | PKMN
	object_event 32, 18, SPRITE_POKE_BALL, STAY, NONE, 0, 2, VOLTORB, 40 | PKMN
	object_event 21, 25, SPRITE_POKE_BALL, STAY, NONE, 0, 3, VOLTORB, 40 | PKMN
	object_event 25, 18, SPRITE_POKE_BALL, STAY, NONE, 0, 4, ELECTRODE, 43 | PKMN
	object_event 23, 34, SPRITE_POKE_BALL, STAY, NONE, 0, 5, VOLTORB, 40 | PKMN
	object_event 26, 28, SPRITE_POKE_BALL, STAY, NONE, 0, 6, VOLTORB, 40 | PKMN
	object_event 21, 14, SPRITE_POKE_BALL, STAY, NONE, 0, 7, ELECTRODE, 43 | PKMN
	object_event 37, 32, SPRITE_POKE_BALL, STAY, NONE, 0, 8, VOLTORB, 40 | PKMN
	object_event  4,  9, SPRITE_BIRD, STAY, UP, PAL_NPC_BROWN, 9, ZAPDOS, 50 | PKMN
	object_event  7, 25, SPRITE_POKE_BALL, STAY, NONE, 0, 10, CARBOS
	object_event 28,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 11, HP_UP
	object_event 34,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 12, RARE_CANDY
	object_event 26, 32, SPRITE_POKE_BALL, STAY, NONE, 0, 13, TM_THUNDER
	object_event 20, 32, SPRITE_POKE_BALL, STAY, NONE, 0, 14, TM_REFLECT

	def_warps_to POWER_PLANT

PokemonTower4F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_5F, 1
	warp_event 18,  9, POKEMON_TOWER_3F, 2

	def_bg_events

	def_object_events
	object_event  5, 10, SPRITE_CHANNELER, STAY, RIGHT, PAL_NPC_BROWN, 1, CHANNELER, 9
	object_event 15,  7, SPRITE_CHANNELER, STAY, DOWN, PAL_NPC_BROWN, 2, CHANNELER, 10
	object_event 14, 12, SPRITE_CHANNELER, STAY, LEFT, PAL_NPC_BROWN, 3, CHANNELER, 12
	object_event 12, 10, SPRITE_POKE_BALL, STAY, NONE, 0, 4, ELIXER
	object_event  9, 10, SPRITE_POKE_BALL, STAY, NONE, 0, 5, AWAKENING
	object_event 12, 16, SPRITE_POKE_BALL, STAY, NONE, 0, 6, HP_UP

	def_warps_to POKEMON_TOWER_4F

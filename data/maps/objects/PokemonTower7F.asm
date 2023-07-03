PokemonTower7F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_bg_events

	def_object_events
	object_event  9, 11, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 1, ROCKET, 19
	object_event 12,  9, SPRITE_ROCKET, STAY, LEFT, PAL_NPC_BROWN, 2, ROCKET, 20
	object_event  9,  7, SPRITE_ROCKET, STAY, RIGHT, PAL_NPC_BROWN, 3, ROCKET, 21
	object_event 10,  3, SPRITE_MR_FUJI, STAY, DOWN, PAL_NPC_BLUE, 4 ; person

	def_warps_to POKEMON_TOWER_7F

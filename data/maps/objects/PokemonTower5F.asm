PokemonTower5F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 1
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_CHANNELER, STAY, NONE, PAL_NPC_BROWN, 1 ; person
	object_event 17,  7, SPRITE_CHANNELER, STAY, LEFT, PAL_NPC_BROWN, 2, CHANNELER, 14
	object_event 14,  3, SPRITE_CHANNELER, STAY, LEFT, PAL_NPC_BROWN, 3, CHANNELER, 16
	object_event  6, 10, SPRITE_CHANNELER, STAY, RIGHT, PAL_NPC_BROWN, 4, CHANNELER, 17
	object_event  9, 16, SPRITE_CHANNELER, STAY, RIGHT, PAL_NPC_BROWN, 5, CHANNELER, 18
	object_event  6, 14, SPRITE_POKE_BALL, STAY, NONE, 0, 6, NUGGET

	def_warps_to POKEMON_TOWER_5F

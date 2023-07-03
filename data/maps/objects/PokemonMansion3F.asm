PokemonMansion3F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  7, 10, POKEMON_MANSION_2F, 2
	warp_event  6,  1, POKEMON_MANSION_2F, 4
	warp_event 25, 14, POKEMON_MANSION_2F, 3

	def_bg_events

	def_object_events
	object_event  5, 11, SPRITE_BIKE_SHOP_CLERK, WALK, LEFT_RIGHT, PAL_NPC_GREEN, 1, BURGLAR, 8
	object_event 20, 11, SPRITE_SCIENTIST, STAY, LEFT, PAL_NPC_BLUE, 2, SCIENTIST, 12
	object_event  1, 16, SPRITE_POKE_BALL, STAY, NONE, 0, 3, MAX_POTION
	object_event 25,  5, SPRITE_POKE_BALL, STAY, NONE, 0, 4, IRON
	object_event  6, 12, SPRITE_POKEDEX, STAY, NONE, 0, 5 ; person

	def_warps_to POKEMON_MANSION_3F

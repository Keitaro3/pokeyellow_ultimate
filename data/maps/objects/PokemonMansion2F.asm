PokemonMansion2F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  5, 10, POKEMON_MANSION_1F, 5
	warp_event  7, 10, POKEMON_MANSION_3F, 1
	warp_event 25, 14, POKEMON_MANSION_3F, 3
	warp_event  6,  1, POKEMON_MANSION_3F, 2

	def_bg_events

	def_object_events
	object_event  3, 17, SPRITE_BIKE_SHOP_CLERK, WALK, LEFT_RIGHT, PAL_NPC_GREEN, 1, BURGLAR, 7
	object_event 28,  7, SPRITE_POKE_BALL, STAY, NONE, 0, 2, CALCIUM
	object_event 18,  2, SPRITE_POKEDEX, STAY, NONE, 0, 3 ; person
	object_event  3, 22, SPRITE_POKEDEX, STAY, NONE, 0, 4 ; person

	def_warps_to POKEMON_MANSION_2F

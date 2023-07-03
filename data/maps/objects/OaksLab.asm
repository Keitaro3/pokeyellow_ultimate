OaksLab_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 3
	warp_event  5, 11, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_BLUE, STAY, NONE, 0, 1, RIVAL1, 1
	object_event  6,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 2 ; person
	object_event  7,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 3 ; person
	object_event  8,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 4 ; person
	object_event  5,  2, SPRITE_OAK, STAY, DOWN, 0, 5 ; person
	object_event  2,  1, SPRITE_POKEDEX, STAY, NONE, 0, 6 ; person
	object_event  3,  1, SPRITE_POKEDEX, STAY, NONE, 0, 7 ; person
	object_event  5, 10, SPRITE_OAK, STAY, UP, 0, 8 ; person
	object_event  1,  9, SPRITE_OFFICE_LADY, WALK, UP_DOWN, 0, 9 ; person
	object_event  2, 10, SPRITE_SCIENTIST, STAY, NONE, PAL_NPC_BLUE, 10 ; person
	object_event  8, 10, SPRITE_SCIENTIST, STAY, NONE, PAL_NPC_BLUE, 11 ; person

	def_warps_to OAKS_LAB

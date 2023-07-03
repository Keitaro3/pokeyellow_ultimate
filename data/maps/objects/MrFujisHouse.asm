MrFujisHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_SUPER_NERD, STAY, NONE, PAL_NPC_GREEN, 1 ; person
	object_event  6,  3, SPRITE_LITTLE_GIRL, STAY, DOWN, 0, 2 ; person
	object_event  6,  4, SPRITE_MONSTER, STAY, UP, PAL_NPC_RED, 3 ; person
	object_event  1,  3, SPRITE_MONSTER, STAY, NONE, PAL_NPC_BLUE, 4 ; person
	object_event  3,  1, SPRITE_MR_FUJI, STAY, NONE, PAL_NPC_BLUE, 5 ; person
	object_event  3,  3, SPRITE_POKEDEX, STAY, NONE, 0, 6 ; person

	def_warps_to MR_FUJIS_HOUSE

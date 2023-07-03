CeladonMansionRoofHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_BLACK_BELT, STAY, DOWN, PAL_NPC_BLUE, 1 ; person
	object_event  4,  3, SPRITE_POKE_BALL, STAY, NONE, 0, 2 ; person

	def_warps_to CELADON_MANSION_ROOF_HOUSE

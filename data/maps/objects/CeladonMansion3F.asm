CeladonMansion3F_Object:
	db $f ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_2F, 1
	warp_event  7,  1, CELADON_MANSION_ROOF, 1
	warp_event  2,  1, CELADON_MANSION_ROOF, 2
	warp_event  4,  1, CELADON_MANSION_2F, 4

	def_bg_events
	bg_event  1,  3, 5 ; CeladonMansion3Text5
	bg_event  4,  3, 6 ; CeladonMansion3Text6
	bg_event  1,  6, 7 ; CeladonMansion3Text7
	bg_event  4,  9, 8 ; CeladonMansion3Text8

	def_object_events
	object_event  0,  7, SPRITE_SUPER_NERD, STAY, UP, 0, 1 ; person
	object_event  3,  4, SPRITE_GYM_GUIDE, STAY, UP, 0, 2 ; person
	object_event  0,  4, SPRITE_FISHER, STAY, UP, PAL_NPC_RED, 3 ; person
	object_event  2,  3, SPRITE_SILPH_WORKER, STAY, NONE, 0, 4 ; person

	def_warps_to CELADON_MANSION_3F

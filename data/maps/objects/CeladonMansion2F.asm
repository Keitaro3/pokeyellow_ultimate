CeladonMansion2F_Object:
	db $f ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 1
	warp_event  7,  1, CELADON_MANSION_1F, 4
	warp_event  2,  1, CELADON_MANSION_1F, 5
	warp_event  4,  1, CELADON_MANSION_3F, 4

	def_bg_events
	bg_event  4,  9, 1 ; CeladonMansion2Text1

	def_object_events
	object_event 4,  4, SPRITE_MONSTER, WALK, 1, PAL_NPC_BLUE, 1 ; person
	object_event 1,  8, SPRITE_GUITARIST, STAY, RIGHT, PAL_NPC_RED, 2 ; person

	def_warps_to CELADON_MANSION_2F

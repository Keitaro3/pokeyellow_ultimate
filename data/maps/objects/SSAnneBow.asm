SSAnneBow_Object:
	db $23 ; border block

	def_warp_events
	warp_event 13,  6, SS_ANNE_3F, 1
	warp_event 13,  7, SS_ANNE_3F, 1

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_SUPER_NERD, STAY, UP, PAL_NPC_GREEN, 1 ; person
	object_event  4,  9, SPRITE_SAILOR, STAY, NONE, 0, 2 ; person
	object_event  7, 11, SPRITE_COOLTRAINER_M, STAY, NONE, PAL_NPC_RED, 3 ; person
	object_event  4,  4, SPRITE_SAILOR, STAY, DOWN, PAL_NPC_BLUE, 4, SAILOR, 1
	object_event 10,  8, SPRITE_SAILOR, STAY, UP, PAL_NPC_BLUE, 5, SAILOR, 2

	def_warps_to SS_ANNE_BOW

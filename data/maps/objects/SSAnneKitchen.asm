SSAnneKitchen_Object:
	db $c ; border block

	def_warp_events
	warp_event  6,  0, SS_ANNE_1F, 11

	def_bg_events

	def_object_events
	object_event  1,  8, SPRITE_COOK, WALK, UP_DOWN, 0, 1 ; person
	object_event  5,  8, SPRITE_COOK, WALK, UP_DOWN, PAL_NPC_GREEN, 2 ; person
	object_event  9,  7, SPRITE_COOK, WALK, UP_DOWN, PAL_NPC_BLUE, 3 ; person
	object_event 13,  6, SPRITE_COOK, STAY, NONE, 0, 4 ; person
	object_event 13,  8, SPRITE_COOK, STAY, NONE, PAL_NPC_BROWN, 5 ; person
	object_event 13, 10, SPRITE_COOK, STAY, NONE, PAL_NPC_GREEN, 6 ; person
	object_event 11, 13, SPRITE_COOK, STAY, UP, PAL_NPC_BLUE, 7 ; person

	def_warps_to SS_ANNE_KITCHEN

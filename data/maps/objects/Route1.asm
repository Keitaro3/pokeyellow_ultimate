Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events
	bg_event  9, 27, 3 ; Route1Text3

	def_object_events
	object_event  5, 24, SPRITE_BUG_CATCHER, WALK, UP_DOWN, PAL_NPC_GREEN, 1 ; person
	object_event 15, 13, SPRITE_BUG_CATCHER, WALK, LEFT_RIGHT, PAL_NPC_RED, 2 ; person

	def_warps_to ROUTE_1

	; unused
	warp_to 2, 7, 4

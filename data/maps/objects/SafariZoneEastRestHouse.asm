SafariZoneEastRestHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_SCIENTIST, WALK, UP_DOWN, PAL_NPC_BLUE, 1 ; person
	object_event  4,  2, SPRITE_ROCKER, STAY, NONE, PAL_NPC_GREEN, 2 ; person
	object_event  5,  2, SPRITE_SILPH_WORKER, STAY, NONE, PAL_NPC_RED, 3 ; person

	def_warps_to SAFARI_ZONE_EAST_REST_HOUSE

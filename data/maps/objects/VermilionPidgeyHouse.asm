VermilionPidgeyHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_BUG_CATCHER, STAY, LEFT, PAL_NPC_GREEN, 1 ; person
	object_event  3,  5, SPRITE_BIRD, WALK, LEFT_RIGHT, PAL_NPC_BROWN, 2 ; person
	object_event  4,  3, SPRITE_PAPER, STAY, NONE, 0, 3 ; person

	def_warps_to VERMILION_PIDGEY_HOUSE

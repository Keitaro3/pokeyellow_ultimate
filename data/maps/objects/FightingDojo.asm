FightingDojo_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 2
	warp_event  5, 11, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_BLACK_BELT, STAY, DOWN, PAL_NPC_BROWN, 1, BLACKBELT, 1
	object_event  3,  4, SPRITE_BLACK_BELT, STAY, RIGHT, PAL_NPC_BROWN, 2, BLACKBELT, 2
	object_event  3,  6, SPRITE_BLACK_BELT, STAY, RIGHT, PAL_NPC_BROWN, 3, BLACKBELT, 3
	object_event  5,  5, SPRITE_BLACK_BELT, STAY, LEFT, PAL_NPC_BROWN, 4, BLACKBELT, 4
	object_event  5,  7, SPRITE_BLACK_BELT, STAY, LEFT, PAL_NPC_BROWN, 5, BLACKBELT, 5
	object_event  4,  1, SPRITE_POKE_BALL, STAY, NONE, 0, 6 ; person
	object_event  5,  1, SPRITE_POKE_BALL, STAY, NONE, 0, 7 ; person

	def_warps_to FIGHTING_DOJO

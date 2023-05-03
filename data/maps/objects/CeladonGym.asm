CeladonGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 7
	warp_event  5, 17, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_OFFICE_LADY, STAY, DOWN, 1, ERIKA, 1
	object_event  2, 11, SPRITE_COOLTRAINER_F, STAY, RIGHT, 2, LASS, 17
	object_event  7, 10, SPRITE_BEAUTY, STAY, LEFT, 3, BEAUTY, 1
	object_event  9,  5, SPRITE_COOLTRAINER_F, STAY, DOWN, 4, JR_TRAINER_F, 11
	object_event  1,  5, SPRITE_BEAUTY, STAY, DOWN, 5, BEAUTY, 2
	object_event  6,  3, SPRITE_COOLTRAINER_F, STAY, DOWN, 6, LASS, 18
	object_event  3,  3, SPRITE_BEAUTY, STAY, DOWN, 7, BEAUTY, 3
	object_event  5,  3, SPRITE_COOLTRAINER_F, STAY, DOWN, 8, COOLTRAINER_F, 1

	def_warps_to CELADON_GYM

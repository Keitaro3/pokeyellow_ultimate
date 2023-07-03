BillsHouse_Object:
	db $d ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  6,  5, SPRITE_CLEFAIRY, STAY, NONE, 0, 1 ; person
	object_event  4,  4, SPRITE_BILL, STAY, NONE, 0, 2 ; person
	object_event  6,  5, SPRITE_BILL, STAY, NONE, 0, 3 ; person

	def_warps_to BILLS_HOUSE

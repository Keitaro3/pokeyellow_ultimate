MovePriorities:
	db PROTECT,      3
	db DETECT,       3
	db ENDURE,       3
	db QUICK_ATTACK, 2
	db MACH_PUNCH,   2
	db EXTREMESPEED, 2
	db WHIRLWIND,    0
	db ROAR,         0
	db COUNTER,      0
	db VITAL_THROW,  0
	db MIRROR_COAT,  0
	db -1
	
LinkedMovePriorities:
	db QUICK_ATTACK, 2
	db COUNTER,		 0
	db -1

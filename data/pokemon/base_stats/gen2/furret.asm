	db DEX_FURRET ; pokedex id

	db  85,  76,  64,  90,  45
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 90 ; catch rate

	INCBIN "gfx/pokemon/front/furret.pic", 0, 1 ; sprite dimensions
	dw FurretPicFront, FurretPicBack

	db SCRATCH, DEFENSE_CURL, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
         WATER_GUN,    BLIZZARD,     HYPER_BEAM,   SUBMISSION,   RAGE,         \
         DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
         SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          SURF,         \
		 STRENGTH
	;end

	db 0 ; padding

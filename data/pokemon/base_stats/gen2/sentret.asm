	db DEX_SENTRET ; pokedex id

	db  35,  46,  34,  20,  35
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/sentret.pic", 0, 1 ; sprite dimensions
	dw SentretPicFront, SentretPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
         WATER_GUN,    SUBMISSION,   RAGE,         DIG,          MIMIC,        \
         DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
         SUBSTITUTE,   CUT,          SURF
	; end

	db 0 ; padding

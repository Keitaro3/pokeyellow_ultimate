	db DEX_RAIKOU ; pokedex id

	db  90,  85,  75, 115, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 3 ; catch rate
	db 216 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/raikou.pic", 0, 1 ; sprite dimensions
	dw RaikouPicFront, RaikouPicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SANDSTORM,    SWIFT,        \
	     SKULL_BASH,   REST,         THUNDER_WAVE, SUBSTITUTE,   CUT,          \
	     STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

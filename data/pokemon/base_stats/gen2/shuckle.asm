	db DEX_SHUCKLE ; pokedex id

	db  20,  10, 230,   5, 230
	;   hp  atk  def  spd  spc

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 80 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/shuckle.pic", 0, 1 ; sprite dimensions
	dw ShucklePicFront, ShucklePicBack

	db CONSTRICT, WITHDRAW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SANDSTORM,    SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

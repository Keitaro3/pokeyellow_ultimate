	db DEX_PHANPY ; pokedex id

	db  90,  60,  60,  40,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/phanpy.pic", 0, 1 ; sprite dimensions
	dw PhanpyPicFront, PhanpyPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  WATER_GUN,    \
	      COUNTER,     RAGE,         EARTHQUAKE,   FISSURE,      MIMIC,        \
	      DOUBLE_TEAM, BIDE,         SANDSTORM,    SKULL_BASH,   REST,         \
	      SUBSTITUTE,  STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

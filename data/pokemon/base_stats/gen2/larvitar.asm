	db DEX_LARVITAR ; pokedex id

	db  50,  64,  50,  41,  50
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/larvitar.pic", 0, 1 ; sprite dimensions
	dw LarvitarPicFront, LarvitarPicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SANDSTORM,    SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding

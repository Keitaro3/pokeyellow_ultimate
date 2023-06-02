	db DEX_ENTEI ; pokedex id

	db 115, 115,  85, 100,  90
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/entei.pic", 0, 1 ; sprite dimensions
	dw EnteiPicFront, EnteiPicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         SOLARBEAM,    DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SANDSTORM,    FIRE_BLAST,   SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          STRENGTH,     \
	     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

	db DEX_SNEASEL ; pokedex id

	db  55, 95, 55, 115, 75
	;   hp  atk  def  spd  spc

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/sneasel.pic", 0, 1 ; sprite dimensions
	dw SneaselPicFront, SneaselPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     SUBMISSION,   COUNTER,      RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE,   \
	     CUT,          SURF,         STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

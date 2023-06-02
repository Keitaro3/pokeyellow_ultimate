	db DEX_HOUNDOUR ; pokedex id

	db  45,  60,  30,  65,  50
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/houndour.pic", 0, 1 ; sprite dimensions
	dw HoundourPicFront, HoundourPicBack

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  COUNTER,      \
	     RAGE,         SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         \
	     SUBSTITUTE,   ROCK_SMASH
	; end

	db 0 ; padding

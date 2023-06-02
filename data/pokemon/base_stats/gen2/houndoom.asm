	db DEX_HOUNDOOM ; pokedex id

	db  75,  90,  50,  95,  80
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/houndoom.pic", 0, 1 ; sprite dimensions
	dw HoundoomPicFront, HoundoomPicBack

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     COUNTER,      RAGE,         SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   DREAM_EATER,  \
	     REST,         SUBSTITUTE,   STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

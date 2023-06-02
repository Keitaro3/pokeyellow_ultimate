	db DEX_MAGCARGO ; pokedex id

	db  50,  50, 120,  30,  80
	;   hp  atk  def  spd  spc

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/magcargo.pic", 0, 1 ; sprite dimensions
	dw MagcargoPicFront, MagcargoPicBack

	db SMOG, EMBER, ROCK_THROW, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
		 RAGE,         EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         SELFDESTRUCT, FIRE_BLAST,   REST,         \
		 ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

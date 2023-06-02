	db DEX_FORRETRESS ; pokedex id

	db  75,  90, 140,  40,  60
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 118 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/forretress.pic", 0, 1 ; sprite dimensions
	dw ForretressPicFront, ForretressPicBack

	db TACKLE, PROTECT, SELFDESTRUCT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     COUNTER,      RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, SANDSTORM,    \
	     SKULL_BASH,   REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

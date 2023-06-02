	db DEX_SLUGMA ; pokedex id

	db  40,  40,  40,  20,  70
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 78 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/slugma.pic", 0, 1 ; sprite dimensions
	dw SlugmaPicFront, SlugmaPicBack

	db SMOG, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, \
	     FIRE_BLAST,   REST,         ROCK_SLIDE,   SUBSTITUTE,   ROCK_SMASH
	; end

	db 0 ; padding

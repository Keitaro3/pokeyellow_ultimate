	db DEX_SUICUNE ; pokedex id

	db 100,  75, 115,  85, 115
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/suicune.pic", 0, 1 ; sprite dimensions
	dw SuicunePicFront, SuicunePicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SANDSTORM,    SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,          SURF,         ROCK_SMASH,   WATERFALL
	; end

	db 0 ; padding

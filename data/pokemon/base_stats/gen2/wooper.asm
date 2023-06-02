	db DEX_WOOPER ; pokedex id

	db  55,  45,  45,  15,  25
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/wooper.pic", 0, 1 ; sprite dimensions
	dw WooperPicFront, WooperPicBack

	db WATER_GUN, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SANDSTORM,    SKULL_BASH,   REST,         SUBSTITUTE,   SURF,         \
	     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

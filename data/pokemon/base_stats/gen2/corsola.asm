	db DEX_CORSOLA ; pokedex id

	db  55,  55,  85,  35,  85
	;   hp  atk  def  spd  spc

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 113 ; base exp yield
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/corsola.pic", 0, 1 ; sprite dimensions
	dw CorsolaPicFront, CorsolaPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SELFDESTRUCT, SANDSTORM,    SKULL_BASH,   REST,         \
	     PSYWAVE,      EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   SURF,         \
	     STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

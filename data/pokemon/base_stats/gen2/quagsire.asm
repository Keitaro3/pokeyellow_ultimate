	db DEX_QUAGSIRE ; pokedex id

	db  95,  85,  85,  35,  65
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/quagsire.pic", 0, 1 ; sprite dimensions
	dw QuagsirePicFront, QuagsirePicBack

	db WATER_GUN, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SANDSTORM,    SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

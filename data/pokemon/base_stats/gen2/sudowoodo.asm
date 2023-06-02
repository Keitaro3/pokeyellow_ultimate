	db DEX_SUDOWOODO ; pokedex id

	db  70, 100, 115,  30,  65
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/sudowoodo.pic", 0, 1 ; sprite dimensions
	dw SudowoodoPicFront, SudowoodoPicBack

	db ROCK_THROW, MIMIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SELFDESTRUCT, SANDSTORM,    SKULL_BASH,   REST,         \
	     EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

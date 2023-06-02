	db DEX_DONPHAN ; pokedex id

	db  90, 120, 120,  50,  60
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/donphan.pic", 0, 1 ; sprite dimensions
	dw DonphanPicFront, DonphanPicBack

	db HORN_ATTACK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     WATER_GUN,    HYPER_BEAM,   SUBMISSION,   COUNTER,      RAGE,         \
	     EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SANDSTORM,    SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

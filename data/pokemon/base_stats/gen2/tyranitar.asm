	db DEX_TYRANITAR ; pokedex id

	db 100, 134, 110,  61, 100
	;   hp  atk  def  spd  spc

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	db BITE, LEER, SANDSTORM, SCREECH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SANDSTORM,    FIRE_BLAST,   \
	     SKULL_BASH,   REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT,          SURF,         STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

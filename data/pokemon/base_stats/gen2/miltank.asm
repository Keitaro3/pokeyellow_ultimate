	db DEX_MILTANK ; pokedex id

	db  95,  80, 105, 100,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp yield
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/miltank.pic", 0, 1 ; sprite dimensions
	dw MiltankPicFront, MiltankPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
		 HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         METRONOME,    SANDSTORM,    SKULL_BASH,   \
		 REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   SURF,         \
		 STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

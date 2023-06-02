	db DEX_POLITOED ; pokedex id

	db  90,  75,  75,  70,  90
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45  ; catch rate
	db 185 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20  ; step cycles to hatch

	INCBIN "gfx/pokemon/front/politoed.pic", 0, 1 ; sprite dimensions
	dw PolitoedPicFront, PolitoedPicBack

	db WATER_GUN, HYPNOSIS, DOUBLESLAP, PERISH_SONG ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE,   SURF,         STRENGTH,     ROCK_SMASH,   WATERFALL
	; end

	db 0 ; padding

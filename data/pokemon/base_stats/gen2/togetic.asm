	db DEX_TOGETIC ; pokedex id

	db  55,  40,  85,  40,  80
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/togetic.pic", 0, 1 ; sprite dimensions
	dw TogeticPicFront, TogeticPicBack

	db GROWL, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    HYPER_BEAM,   SUBMISSION,   \
	     COUNTER,      SEISMIC_TOSS, RAGE,         SOLARBEAM,    PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     METRONOME,    FIRE_BLAST,   SWIFT,        SKULL_BASH,   SOFTBOILED,   \
	     DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, PSYWAVE,      \
	     TRI_ATTACK,   SUBSTITUTE,   FLY,          FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

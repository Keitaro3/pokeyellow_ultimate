	db DEX_TOGEPI ; pokedex id

	db  35,  20,  60,  20,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 74 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/togepi.pic", 0, 1 ; sprite dimensions
	dw TogepiPicFront, TogepiPicBack

	db GROWL, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \ 
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    PSYCHIC_M,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   SOFTBOILED,   DREAM_EATER,  REST,         \
	     THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH,        \
	     ROCK_SMASH
	; end
	
	db 0 ; padding

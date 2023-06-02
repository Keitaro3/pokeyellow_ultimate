	db DEX_CLEFFA ; pokedex id

	db  60,  25,  28,  15,  45
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 37 ; base exp yield
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/cleffa.pic", 0, 1 ; sprite dimensions
	dw CleffaPicFront, CleffaPicBack

	db POUND, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \ 
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    PSYCHIC_M,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    FIRE_BLAST,   \
	     SKULL_BASH,   SOFTBOILED,   DREAM_EATER,  REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

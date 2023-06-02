	db DEX_IGGLYBUFF ; pokedex id

	db  90,  30,  15,  15,  20
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 39 ; base exp yield
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/igglybuff.pic", 0, 1 ; sprite dimensions
	dw IgglybuffPicFront, IgglybuffPicBack

	db SING, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \ 
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    PSYCHIC_M,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     DREAM_EATER,  REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   \
	     SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

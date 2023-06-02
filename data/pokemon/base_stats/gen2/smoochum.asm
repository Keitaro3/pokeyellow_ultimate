	db DEX_SMOOCHUM ; pokedex id
	
	db  45,  30,  15,  65,  65
	;   hp  atk  def  spd  spc	
	
	db ICE, PSYCHIC_TYPE
	db 45 ; catch rate
	db 87 ; base exp yield
	db GENDER_F100 ; gender ratio
	db 25 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/smoochum.pic", 0, 1 ; sprite dimensions
	dw SmoochumPicFront, SmoochumPicBack
	
	db POUND, SWEET_KISS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     COUNTER,      SEISMIC_TOSS, RAGE,         PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SKULL_BASH,   DREAM_EATER,  REST,         PSYWAVE,      SUBSTITUTE,   \
	     FLASH
	; end
	
	db 0 ; padding

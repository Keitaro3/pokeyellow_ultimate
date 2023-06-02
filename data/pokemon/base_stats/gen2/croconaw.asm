	db DEX_CROCONAW ; pokedex id

	db  65,  80,  80,  58,  59
	;   hp  atk  def  spd  spc	

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/croconaw.pic", 0, 1 ; sprite dimensions
	dw CroconawPicFront, CroconawPicBack
	
	db SCRATCH, LEER, RAGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
    tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        \
         BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
         ICE_BEAM,     BLIZZARD,     SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
         RAGE,         DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
         SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
         SURF,         STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

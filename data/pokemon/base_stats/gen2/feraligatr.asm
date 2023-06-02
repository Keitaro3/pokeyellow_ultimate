	db DEX_FERALIGATR ; pokedex id

	db  85, 105, 100,  78,  79
	;   hp  atk  def  spd  spc	

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/feraligatr.pic", 0, 1 ; sprite dimensions
	dw FeraligatrPicFront, FeraligatrPicBack
	
	db SCRATCH, LEER, RAGE, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups
	
	; tm/hm learnset
    tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        \
         BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
         ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      \
         SEISMIC_TOSS, RAGE,         EARTHQUAKE,   FISSURE,      DIG,          \
         MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
         ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         STRENGTH,     \
         ROCK_SMASH 
	; end

	db 0 ; padding

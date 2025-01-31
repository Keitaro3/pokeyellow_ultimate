	db DEX_BLISSEY ; pokedex id

	db 255,  10,  10,  55, 135
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp yield
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/blissey.pic", 0, 1 ; sprite dimensions
	dw BlisseyPicFront, BlisseyPicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SANDSTORM,    \
	     FIRE_BLAST,   SKULL_BASH,   SOFTBOILED,   DREAM_EATER,  REST,         \
	     THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     \
	     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

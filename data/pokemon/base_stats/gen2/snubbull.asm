	db DEX_SNUBBULL ; pokedex id

	db  60,  80,  50,  30,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 63 ; base exp yield
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/snubbull.pic", 0, 1 ; sprite dimensions
	dw SnubbullPicFront, SnubbullPicBack

	db TACKLE, SCARY_FACE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    SKULL_BASH,   \
	     REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     \
	     ROCK_SMASH 
	; end

	db 0 ; padding

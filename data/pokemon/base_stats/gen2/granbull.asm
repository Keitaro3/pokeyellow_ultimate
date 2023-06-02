	db DEX_GRANBULL ; pokedex id

	db  90, 120,  75,  45,  60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 75 ; catch rate
	db 178 ; base exp yield
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/granbull.pic", 0, 1 ; sprite dimensions
	dw GranbullPicFront, GranbullPicBack

	db TACKLE, SCARY_FACE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    HYPER_BEAM,   SUBMISSION,   \
	     COUNTER,      SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SKULL_BASH,   REST,         THUNDER_WAVE, ROCK_SLIDE,   TRI_ATTACK,   \
	     SUBSTITUTE,   STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

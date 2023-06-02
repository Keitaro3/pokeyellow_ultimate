	db DEX_DELIBIRD ; pokedex id

	db  45,  55,  45,  75,  45
	;   hp  atk  def  spd  spc

	db ICE, FLYING ; type
	db 45 ; catch rate
	db 183 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/delibird.pic", 0, 1 ; sprite dimensions
	dw DelibirdPicFront, DelibirdPicBack

	db PRESENT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
	     SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db 0 ; padding

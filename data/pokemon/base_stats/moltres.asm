	db DEX_MOLTRES ; pokedex id

	db  90, 100,  90,  90, 125
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

	db PECK, FIRE_SPIN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SANDSTORM,    FIRE_BLAST,   SWIFT,        SKY_ATTACK,   \
	     REST,         SUBSTITUTE,   FLY,          ROCK_SMASH
	; end

	db 0 ; padding

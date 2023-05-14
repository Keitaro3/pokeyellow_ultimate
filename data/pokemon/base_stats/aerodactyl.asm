	db DEX_AERODACTYL ; pokedex id

	db  80, 105,  65, 130,  60
	;   hp  atk  def  spd  spc

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db WING_ATTACK, AGILITY, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         DRAGON_RAGE,  MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SANDSTORM,    FIRE_BLAST,   SWIFT,        \
	     SKY_ATTACK,   REST,         SUBSTITUTE,   FLY,          ROCK_SMASH
	; end

	db 0 ; padding

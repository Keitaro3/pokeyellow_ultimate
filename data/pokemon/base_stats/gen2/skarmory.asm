	db DEX_SKARMORY ; pokedex id

	db  65,  80, 140,  70,  70
	;   hp  atk  def  spd  spc

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/skarmory.pic", 0, 1 ; sprite dimensions
	dw SkarmoryPicFront, SkarmoryPicBack

	db LEER, PECK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     COUNTER,      RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SANDSTORM,    SWIFT,        SKY_ATTACK,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          FLY,          FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

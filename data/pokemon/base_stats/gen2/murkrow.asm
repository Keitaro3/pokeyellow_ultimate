	db DEX_MURKROW ; pokedex id

	db  60,  85,  42,  91,  85
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	db PECK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        DREAM_EATER,  \
	     SKY_ATTACK,   REST,         THUNDER_WAVE, SUBSTITUTE,   FLY
	; end

	db 0 ; padding

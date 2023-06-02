	db DEX_SPINARAK ; pokedex id

	db  40,  60,  40,  30,  40
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 255 ; catch rate
	db 54 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/spinarak.pic", 0, 1 ; sprite dimensions
	dw SpinarakPicFront, SpinarakPicBack

	db POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    DIG,          PSYCHIC_M,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         REST,         PSYWAVE,      SUBSTITUTE,   \
	     FLASH 
	; end

	db 0 ; padding

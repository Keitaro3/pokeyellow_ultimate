	db DEX_ARIADOS ; pokedex id

	db  70,  90,  70,  40,  60
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/ariados.pic", 0, 1 ; sprite dimensions
	dw AriadosPicFront, AriadosPicBack

	db POISON_STING, STRING_SHOT, SCARY_FACE, CONSTRICT ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         PSYWAVE,      \
	     SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

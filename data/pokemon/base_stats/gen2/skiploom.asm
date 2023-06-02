	db DEX_SKIPLOOM ; pokedex id

	db  55,  45,  50,  80,  65
	;   hp  atk  def  spd  spc

	db GRASS , FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/skiploom.pic", 0, 1 ; sprite dimensions
	dw SkiploomPicFront, SkiploomPicBack

	db SPLASH, SYNTHESIS, TAIL_WHIP, TACKLE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  PAY_DAY,      \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \ 
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

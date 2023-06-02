	db DEX_HOPPIP ; pokedex id

	db  35,  35,  40,  50,  55
	;   hp  atk  def  spd  spc

	db GRASS , FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/hoppip.pic", 0, 1 ; sprite dimensions
	dw HoppipPicFront, HoppipPicBack

	db SPLASH, SYNTHESIS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  PAY_DAY,      \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

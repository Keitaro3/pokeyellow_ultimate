	db DEX_JUMPLUFF ; pokedex id

	db  75,  55,  70, 110,  85
	;   hp  atk  def  spd  spc

	db GRASS , FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/jumpluff.pic", 0, 1 ; sprite dimensions
	dw JumpluffPicFront, JumpluffPicBack

	db SPLASH, SYNTHESIS, TAIL_WHIP, TACKLE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     PAY_DAY,      RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     FLASH 
	; end

	db 0 ; padding

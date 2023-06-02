	db DEX_LEDYBA ; pokedex id

	db  40,  20,  30,  55,  40
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/ledyba.pic", 0, 1 ; sprite dimensions
	dw LedybaPicFront, LedybaPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \ 
	     SUBMISSION,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          \ 
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH, REST, SUBSTITUTE, FLASH
	; end

	db 0 ; padding

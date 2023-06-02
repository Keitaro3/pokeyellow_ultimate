	db DEX_LEDIAN ; pokedex id

	db  55,  35,  50,  85,  55
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/ledian.pic", 0, 1 ; sprite dimensions
	dw LedianPicFront, LedianPicBack

	db TACKLE, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   RAGE,         MEGA_DRAIN,   \
	     SOLARBEAM,    DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST, SUBSTITUTE,           \
	     FLASH
	; end

	db 0 ; padding

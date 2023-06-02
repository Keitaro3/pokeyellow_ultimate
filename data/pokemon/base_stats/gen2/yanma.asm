	db DEX_YANMA ; pokedex id

	db  65,  65,  45,  95,  45
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/yanma.pic", 0, 1 ; sprite dimensions
	dw YanmaPicFront, YanmaPicBack

	db TACKLE, FORESIGHT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         \
	     SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

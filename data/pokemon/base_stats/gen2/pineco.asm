	db DEX_PINECO ; pokedex id

	db  50,  65,  90,  15,  35
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 190 ; catch rate
	db 60 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/pineco.pic", 0, 1 ; sprite dimensions
	dw PinecoPicFront, PinecoPicBack

	db TACKLE, PROTECT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  COUNTER,      \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SELFDESTRUCT, SKULL_BASH,   REST,         \
	     EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     ROCK_SMASH    \
	; end

	db 0 ; padding

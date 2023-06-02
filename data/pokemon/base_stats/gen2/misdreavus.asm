	db DEX_MISDREAVUS ; pokedex id

	db  60,  60,  60,  85,  85
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/misdreavus.pic", 0, 1 ; sprite dimensions
	dw MisdreavusPicFront, MisdreavusPicBack

	db GROWL, PSYWAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         THUNDERBOLT,  \
         THUNDER,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \ 
         SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         THUNDER_WAVE, \
         PSYWAVE,      SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

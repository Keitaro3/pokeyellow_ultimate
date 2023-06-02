	db DEX_GIRAFARIG ; pokedex id

	db  70,  80,  65,  85,  90
	;   hp  atk  def  spd  spc

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 149 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/girafarig.pic", 0, 1 ; sprite dimensions
	dw GirafarigPicFront, GirafarigPicBack

	db TACKLE, GROWL, CONFUSION, STOMP ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         THUNDER_WAVE, \
	     PSYWAVE,      SUBSTITUTE,   STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

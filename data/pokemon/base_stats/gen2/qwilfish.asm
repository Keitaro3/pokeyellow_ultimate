	db DEX_QWILFISH ; pokedex id

	db  65,  95,  75,  85,  55
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 45 ; catch rate
	db 100 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/qwilfish.pic", 0, 1 ; sprite dimensions
	dw QwilfishPicFront, QwilfishPicBack

	db SPIKES, TACKLE, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SELFDESTRUCT, SWIFT,        SKULL_BASH,   \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   SURF,         WATERFALL
	; end

	db 0 ; padding

	db DEX_LANTURN ; pokedex id

	db 125,  58,  58,  67,  76
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 156 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/lanturn.pic", 0, 1 ; sprite dimensions
	dw LanturnPicFront, LanturnPicBack

	db BUBBLE, THUNDER_WAVE, SUPERSONIC, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \ 
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  \ 
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   SURF,         FLASH,        WATERFALL     \
	; end

	db 0 ; padding

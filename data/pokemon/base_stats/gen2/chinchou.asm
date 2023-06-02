	db DEX_CHINCHOU ; pokedex id

	db  75,  38,  38,  67,  56
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/chinchou.pic", 0, 1 ; sprite dimensions
	dw ChinchouPicFront, ChinchouPicBack

	db BUBBLE, THUNDER_WAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \ 
	     ICE_BEAM,     BLIZZARD,     RAGE,         THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   SURF,         FLASH,        WATERFALL
	; end

	db 0 ; padding

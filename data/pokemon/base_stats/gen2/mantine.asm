	db DEX_MANTINE ; pokedex id

	db  65,  40,  70,  70, 140
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/mantine.pic", 0, 1 ; sprite dimensions
	dw MantinePicFront, MantinePicBack

	db TACKLE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
		 SUBSTITUTE,   SURF,         WATERFALL
	; end

	db 0 ; padding

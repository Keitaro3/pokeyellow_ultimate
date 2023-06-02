	db DEX_SUNFLORA ; pokedex id

	db  75,  75,  55,  30, 105
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/sunflora.pic", 0, 1 ; sprite dimensions
	dw SunfloraPicFront, SunfloraPicBack

	db ABSORB, POUND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         REST,         SUBSTITUTE,   CUT,          FLASH
	; end

	db 0 ; padding

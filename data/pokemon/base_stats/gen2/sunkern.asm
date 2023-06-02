	db DEX_SUNKERN ; pokedex id

	db  30,  30,  30,  30,  30
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 235 ; catch rate
	db 52 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/sunkern.pic", 0, 1 ; sprite dimensions
	dw SunkernPicFront, SunkernPicBack

	db ABSORB, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     REST,         SUBSTITUTE,   CUT,          FLASH
	; end

	db 0 ; padding

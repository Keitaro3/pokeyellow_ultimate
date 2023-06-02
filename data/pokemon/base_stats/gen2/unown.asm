	db DEX_UNOWN ; pokedex id

	db  48,  72,  48,  48,  72
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 225 ; catch rate
	db 61 ; base exp 
	db GENDER_UNKNOWN ; gender ratio
	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/unown/unown_a.pic", 0, 1 ; sprite dimensions
	dw UnownPicPtrsFront, UnownPicPtrsBack

	db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	
	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding

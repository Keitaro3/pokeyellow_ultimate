	db DEX_WOBBUFFET ; pokedex id

	db 190,  33,  58,  33,  33
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 177 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/wobbuffet.pic", 0, 1 ; sprite dimensions
	dw WobbuffetPicFront, WobbuffetPicBack

	db COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm COUNTER
	; end

	db 0 ; padding

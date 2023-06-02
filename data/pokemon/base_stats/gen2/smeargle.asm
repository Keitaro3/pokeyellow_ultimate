	db DEX_SMEARGLE ; pokedex id

	db  55,  20,  35,  75,  20
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 106 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/smeargle.pic", 0, 1 ; sprite dimensions
	dw SmearglePicFront, SmearglePicBack

	db SKETCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding

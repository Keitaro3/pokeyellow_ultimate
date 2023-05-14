	db DEX_MAGIKARP ; pokedex id

	db  20,  10,  55,  80,  20
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp
	db GENDER_F50 ; gender ratio
	db 5 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1 ; sprite dimensions
	dw MagikarpPicFront, MagikarpPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding

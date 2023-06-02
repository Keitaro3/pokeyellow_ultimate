	db DEX_CYNDAQUIL ; pokedex id
	
	db  39,  52,  43,  65,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/front/cyndaquil.pic", 0, 1 ; sprite dimensions
	dw CyndaquilPicFront, CyndaquilPicBack
	
	db TACKLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups
	
	; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   \
         RAGE,         DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
         CUT
	; end

	db 0 ; padding

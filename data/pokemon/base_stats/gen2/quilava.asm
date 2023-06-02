	db DEX_QUILAVA ; pokedex id

	db  58,  64,  58,  80,  65
	;   hp  atk  def  spd  spc
	
	db FIRE, FIRE
	db 45 ; catch rate
	db 142 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/quilava.pic", 0, 1 ; sprite dimensions
	dw QuilavaPicFront, QuilavaPicBack
	
	db TACKLE, LEER, SMOKESCREEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups
	
	; tm/hm learnset
    tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   \ 
         RAGE,         DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \ 
         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \ 
         CUT,          STRENGTH,     ROCK_SMASH 
	; end

	db 0 ; padding

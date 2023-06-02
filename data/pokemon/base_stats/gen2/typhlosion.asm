	db DEX_TYPHLOSION ; pokedex id

	db  78,  84,  78, 100,  85
	;   hp  atk  def  spd  spc
	
	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 209 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/typhlosion.pic", 0, 1 ; sprite dimensions
	dw TyphlosionPicFront, TyphlosionPicBack
	
	db TACKLE, LEER, SMOKESCREEN, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups
	
	; tm/hm learnset
    tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \ 
         DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
         RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \ 
         DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   \ 
         REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          STRENGTH,     \
         ROCK_SMASH 
	; end

	db 0 ; padding

	db DEX_PUPITAR ; pokedex id

	db  70,  84,  70,  51,  70
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/pupitar.pic", 0, 1 ; sprite dimensions
	dw PupitarPicFront, PupitarPicBack

	db BITE, LEER, SANDSTORM, SCREECH ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SANDSTORM,    SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE 
	; end

	db 0 ; padding

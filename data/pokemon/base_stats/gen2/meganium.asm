	db DEX_MEGANIUM ; pokedex id

	db  80,  82, 100,  80,  83
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 208 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/meganium.pic", 0, 1 ; sprite dimensions
	dw MeganiumPicFront, MeganiumPicBack
	
	db TACKLE, GROWL, RAZOR_LEAF, REFLECT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
         HYPER_BEAM,   COUNTER,      RAGE,         MEGA_DRAIN,   SOLARBEAM,    \
         EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
         BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          \
	     STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

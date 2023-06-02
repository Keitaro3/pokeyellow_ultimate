	db DEX_BAYLEEF ; pokedex id

	db  60,  62,  80,  60,  63
	;   hp  atk  def  spd  spc
	
	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/bayleef.pic", 0, 1 ; sprite dimensions
	dw BayleefPicFront, BayleefPicBack

	db TACKLE, GROWL, RAZOR_LEAF, REFLECT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups
	
	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
         COUNTER,      RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
         DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
         SUBSTITUTE,   CUT,          STRENGTH,     FLASH,        ROCK_SMASH
	; end
	
	db 0 ; padding

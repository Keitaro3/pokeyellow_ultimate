	db DEX_CHIKORITA ; pokedex id

	db  45,  49,  65,  45,  49
	;   hp  atk  def  spd  spc	
	
	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp yield
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/front/chikorita.pic", 0, 1 ; sprite dimensions
	dw ChikoritaPicFront, ChikoritaPicBack
	
	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups
	
	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     COUNTER,      RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
	     SUBSTITUTE,   CUT,          FLASH
	; end
	
	db 0 ; padding

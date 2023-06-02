	db DEX_STEELIX ; pokedex id

	db  75,  85, 200,  30,  55
	;   hp  atk  def  spd  spc

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/steelix.pic", 0, 1 ; sprite dimensions
	dw SteelixPicFront, SteelixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, WHIRLWIND,    MEGA_KICK,    \ 
	     TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SELFDESTRUCT, SANDSTORM,    SKULL_BASH,   \ 
	     REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
	     STRENGTH,     ROCK_SMASH
	; end

	db 0 ; padding

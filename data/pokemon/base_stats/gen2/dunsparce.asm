	db DEX_DUNSPARCE ; pokedex id

	db 100,  70,  70,  45,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 75 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/dunsparce.pic", 0, 1 ; sprite dimensions
	dw DunsparcePicFront, DunsparcePicBack

	db RAGE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     COUNTER,      \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   DREAM_EATER,  \
	     REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     \
	     ROCK_SMASH
	; end

	db 0 ; padding

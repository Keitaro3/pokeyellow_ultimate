	db DEX_LUGIA ; pokedex id

	db 106,  90, 130, 110, 154
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/lugia.pic", 0, 1 ; sprite dimensions
	dw LugiaPicFront, LugiaPicBack

	db AEROBLAST, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   DRAGON_RAGE,  EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SANDSTORM,    SWIFT,        SKULL_BASH,   \
	     DREAM_EATER,  REST,         THUNDER_WAVE, PSYWAVE,      SUBSTITUTE,   \
	     FLY,          SURF,         STRENGTH,     FLASH,        ROCK_SMASH,   \
		 WATERFALL
	; end

	db 0 ; padding

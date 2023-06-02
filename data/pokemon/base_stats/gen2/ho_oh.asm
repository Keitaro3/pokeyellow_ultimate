	db DEX_HO_OH ; pokedex id

	db 106, 130,  90,  90, 154
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/ho_oh.pic", 0, 1 ; sprite dimensions
	dw HoOhPicFront, HoOhPicBack

	db SACRED_FIRE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SANDSTORM,    FIRE_BLAST,   SWIFT,        DREAM_EATER,  \
	     SKY_ATTACK,   REST,         THUNDER_WAVE, PSYWAVE,      SUBSTITUTE,   \
	     FLY,          STRENGTH,     FLASH,        ROCK_SMASH
	; end

	db 0 ; padding

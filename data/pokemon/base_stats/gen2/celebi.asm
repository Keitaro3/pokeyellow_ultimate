	db DEX_CELEBI ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp yield
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/celebi.pic", 0, 1 ; sprite dimensions
	dw CelebiPicFront, CelebiPicBack

	db LEECH_SEED, CONFUSION, RECOVER, HEAL_BELL ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM, REFLECT,       \
	     BIDE,         METRONOME,    SANDSTORM,    SWIFT,       DREAM_EATER,   \
	     REST,         SUBSTITUTE,   FLASH
	; end

	db 0 ; padding

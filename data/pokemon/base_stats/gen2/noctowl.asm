	db DEX_NOCTOWL ; pokedex id

	db 100,  50,  50,  70,  96
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/noctowl.pic", 0, 1 ; sprite dimensions
	dw NoctowlPicFront, NoctowlPicBack

	db TACKLE, GROWL, FORESIGHT, PECK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \ 
         HYPER_BEAM,   RAGE,         TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
         REFLECT,      BIDE,         SWIFT,        DREAM_EATER,  SKY_ATTACK,   \
         REST,         SUBSTITUTE,   FLY,          FLASH
	; end

	db 0 ; padding

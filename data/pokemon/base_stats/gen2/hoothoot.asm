	db DEX_HOOTHOOT ; pokedex id

	db  60,  30,  30,  50,  56
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 58 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/hoothoot.pic", 0, 1 ; sprite dimensions
	dw HoothootPicFront, HoothootPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
    tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
         RAGE,         TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
         BIDE,         SWIFT,        DREAM_EATER,  SKY_ATTACK,   REST,         \
         SUBSTITUTE,   FLY,          FLASH
	; end

	db 0 ; padding

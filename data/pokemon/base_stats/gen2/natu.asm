	db DEX_NATU ; pokedex id

	db  40,  50,  45,  70,  70
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp yield
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch

	INCBIN "gfx/pokemon/front/natu.pic", 0, 1 ; sprite dimensions
	dw NatuPicFront, NatuPicBack

	db PECK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \ 
         RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    TELEPORT,     \
         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
         DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, PSYWAVE,      \
         SUBSTITUTE,   FLASH
	;end
	
	db 0 ; padding

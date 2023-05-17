; overworld sprites
; SpriteSheetPointerTable indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE                    ; $00
	const SPRITE_RED                     ; $01
	const SPRITE_BLUE                    ; $02
	const SPRITE_OAK                     ; $03
	const SPRITE_YOUNGSTER               ; $04
	const SPRITE_MONSTER                 ; $05
	const SPRITE_COOLTRAINER_F           ; $06
	const SPRITE_COOLTRAINER_M           ; $07
	const SPRITE_LITTLE_GIRL             ; $08
	const SPRITE_BIRD                    ; $09
	const SPRITE_MIDDLE_AGED_MAN         ; $0a
	const SPRITE_GAMBLER                 ; $0b
	const SPRITE_SUPER_NERD              ; $0c
	const SPRITE_GIRL                    ; $0d
	const SPRITE_HIKER                   ; $0e
	const SPRITE_BEAUTY                  ; $0f
	const SPRITE_GENTLEMAN               ; $10
	const SPRITE_DAISY                   ; $11
	const SPRITE_BIKER                   ; $12
	const SPRITE_SAILOR                  ; $13
	const SPRITE_COOK                    ; $14
	const SPRITE_BIKE_SHOP_CLERK         ; $15
	const SPRITE_MR_FUJI                 ; $16
	const SPRITE_GIOVANNI                ; $17
	const SPRITE_ROCKET                  ; $18
	const SPRITE_CHANNELER               ; $19
	const SPRITE_WAITER                  ; $1a
	const SPRITE_OFFICE_LADY             ; $1b
	const SPRITE_MIDDLE_AGED_WOMAN       ; $1c
	const SPRITE_BRUNETTE_GIRL           ; $1d
	const SPRITE_LANCE                   ; $1e
	const SPRITE_UNUSED_RED_1            ; $1f
	const SPRITE_SCIENTIST               ; $20
	const SPRITE_ROCKER                  ; $21
	const SPRITE_SWIMMER                 ; $22
	const SPRITE_SAFARI_ZONE_WORKER      ; $23
	const SPRITE_GYM_GUIDE               ; $24
	const SPRITE_GRAMPS                  ; $25
	const SPRITE_CLERK                   ; $26
	const SPRITE_FISHING_GURU            ; $27
	const SPRITE_GRANNY                  ; $28
	const SPRITE_NURSE                   ; $29
	const SPRITE_LINK_RECEPTIONIST       ; $2a
	const SPRITE_SILPH_PRESIDENT         ; $2b
	const SPRITE_SILPH_WORKER            ; $2c
	const SPRITE_WARDEN                  ; $2d
	const SPRITE_CAPTAIN                 ; $2e
	const SPRITE_FISHER                  ; $2f
	const SPRITE_BLACKBELT               ; $30
	const SPRITE_GUARD                   ; $31
	const SPRITE_UNUSED_RED_2            ; $32
	const SPRITE_MOM                     ; $33
	const SPRITE_BALDING_GUY             ; $34
	const SPRITE_LITTLE_BOY              ; $35
	const SPRITE_GAMEBOY_GIRL            ; $36
	const SPRITE_GAMEBOY_KID             ; $37
	const SPRITE_FAIRY                   ; $38
	const SPRITE_AGATHA                  ; $39
	const SPRITE_BRUNO                   ; $3a
	const SPRITE_LORELEI                 ; $3b
	const SPRITE_SEEL                    ; $3c
	const SPRITE_PIKACHU                 ; $3d
	const SPRITE_OFFICER_JENNY           ; $3e
	const SPRITE_SANDSHREW               ; $3f
	const SPRITE_ODDISH                  ; $40
	const SPRITE_BULBASAUR               ; $41
	const SPRITE_JIGGLYPUFF              ; $42
	const SPRITE_CLEFAIRY                ; $43
	const SPRITE_CHANSEY                 ; $44
	const SPRITE_JESSIE                  ; $45
	const SPRITE_JAMES                   ; $46
	const SPRITE_LAPRAS					 ; $47
	const SPRITE_SEEL_2					 ; $48
	const SPRITE_POLIWRATH				 ; $49
	const SPRITE_BILL					 ; $4a
	const SPRITE_BLAINE					 ; $4b
	const SPRITE_BROCK					 ; $4c
	const SPRITE_MISTY					 ; $4d
	const SPRITE_SURGE					 ; $4e
	const SPRITE_ERIKA					 ; $4f
	const SPRITE_KOGA  					 ; $50
	const SPRITE_SABRINA				 ; $51
	const SPRITE_SCHOOLBOY				 ; $52
	const SPRITE_TAMER  				 ; $53
	const SPRITE_SWIMMER_F  			 ; $54
	const SPRITE_ROCKET_F  				 ; $55
	const SPRITE_KIMONO_GIRL  			 ; $56
	const SPRITE_SAGE		  			 ; $57
	const SPRITE_RECEPTIONIST  			 ; $58
	const SPRITE_CELIO					 ; $59
	const SPRITE_SLOWPOKE_2				 ; $5a
	const SPRITE_LEAF					 ; $5b
DEF FIRST_STILL_SPRITE EQU const_value
	const SPRITE_POKE_BALL               ; $5c
	const SPRITE_FOSSIL                  ; $5d
	const SPRITE_BOULDER                 ; $5e
	const SPRITE_PAPER                   ; $5f
	const SPRITE_POKEDEX                 ; $60
	const SPRITE_CLIPBOARD               ; $61
	const SPRITE_ROCK_SMASH              ; $62
	const SPRITE_UNUSED_OLD_AMBER        ; $63
	const SPRITE_OLD_AMBER               ; $64
	const SPRITE_UNUSED_GAMBLER_ASLEEP_1 ; $65
	const SPRITE_UNUSED_GAMBLER_ASLEEP_2 ; $66
	const SPRITE_GAMBLER_ASLEEP          ; $67
	const SPRITE_SLOWPOKE				 ; $68
	const SPRITE_N64		             ; $69
	const SPRITE_VIRTUAL_BOY	         ; $6a
	const SPRITE_SNES					 ; $6b
	const SPRITE_NES		             ; $6c
	const SPRITE_GOLD_TROPHY		     ; $6d
	const SPRITE_SILVER_TROPHY		     ; $6e
	
DEF NUM_SPRITES EQU const_value - 1

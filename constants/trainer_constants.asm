; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerNamePointers (see data/trainers/name_pointers.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
	const_def
	const NOBODY         ; $00
	const YOUNGSTER      ; $01
	const BUG_CATCHER    ; $02
	const LASS           ; $03
	const SAILOR         ; $04
	const JR_TRAINER_M   ; $05
	const JR_TRAINER_F   ; $06
	const POKEMANIAC     ; $07
	const SUPER_NERD     ; $08
	const HIKER          ; $09
	const BIKER          ; $0A
	const BURGLAR        ; $0B
	const ENGINEER       ; $0C
	const SWIMMER_F      ; $0D
	const FISHER         ; $0E
	const SWIMMER        ; $0F
	const CUE_BALL       ; $10
	const GAMBLER        ; $11
	const BEAUTY         ; $12
	const PSYCHIC_TR     ; $13
	const GUITARIST      ; $14
	const JUGGLER        ; $15
	const TAMER          ; $16
	const BIRD_KEEPER    ; $17
	const BLACKBELT      ; $18
	const RIVAL1         ; $19
	const PROF_OAK       ; $1A
	const BOSS           ; $1B
	const SCIENTIST      ; $1C
	const GIOVANNI       ; $1D
	const ROCKET         ; $1E
	const COOLTRAINER_M  ; $1F
	const COOLTRAINER_F  ; $20
	const BRUNO          ; $21
	const BROCK          ; $22
	const MISTY          ; $23
	const LT_SURGE       ; $24
	const ERIKA          ; $25
	const KOGA           ; $26
	const BLAINE         ; $27
	const SABRINA        ; $28
	const GENTLEMAN      ; $29
	const RIVAL2         ; $2A
	const RIVAL3         ; $2B
	const LORELEI        ; $2C
	const CHANNELER      ; $2D
	const AGATHA         ; $2E
	const LANCE          ; $2F
	const RIVAL4		 ; $30
	
	const SCHOOLBOY      ; $31
	const SKIER			 ; $32
	const TEACHER		 ; $33
	const FIREBREATHER   ; $34
	const EXECUTIVE_M    ; $35
	const EXECUTIVE_F    ; $36
	const SAGE			 ; $37
	const BOARDER		 ; $38
	const POKEFAN_M		 ; $39
	const KIMONO_GIRL    ; $3a
	const TWINS			 ; $3b
	const POKEFAN_F		 ; $3c
	const OFFICER		 ; $3d
	const GRUNT_F		 ; $3e
	
	const CRUSH_GIRL	 ; $3f
	const TUBER			 ; $40
	const PKMN_RANGER_M  ; $41
	const PKMN_RANGER_F  ; $42
	const RUIN_MANIAC	 ; $43
	const LADY			 ; $44
	const PAINTER		 ; $45
	
	const KEI			 ; $46
	const LEAF			 ; $47	
DEF NUM_TRAINERS EQU const_value - 1

MACRO move_choices
	IF _NARG
		db \# ; all args
	ENDC
	db 0 ; end
	DEF list_index += 1
ENDM

; move choice modification methods that are applied for each trainer class
TrainerClassMoveChoiceModifications:
	list_start TrainerClassMoveChoiceModifications
	move_choices         ; YOUNGSTER
	move_choices 1       ; BUG CATCHER
	move_choices 1       ; LASS
	move_choices 1, 3    ; SAILOR
	move_choices 1       ; JR_TRAINER_M
	move_choices 1       ; JR_TRAINER_F
	move_choices 1, 2, 3 ; POKEMANIAC
	move_choices 1, 2    ; SUPER_NERD
	move_choices 1       ; HIKER
	move_choices 1       ; BIKER
	move_choices 1, 3    ; BURGLAR
	move_choices 1       ; ENGINEER
	move_choices 1, 3    ; SWIMMER_F
	move_choices 1, 3    ; FISHER
	move_choices 1, 3    ; SWIMMER
	move_choices         ; CUE_BALL
	move_choices 1       ; GAMBLER
	move_choices 1, 3    ; BEAUTY
	move_choices 1, 2    ; PSYCHIC_TR
	move_choices 1       ; GUITARIST
	move_choices 1       ; JUGGLER
	move_choices 1       ; TAMER
	move_choices 1       ; BIRD_KEEPER
	move_choices 1       ; BLACKBELT
	move_choices 1       ; RIVAL1
	move_choices 1, 3    ; PROF_OAK
	move_choices 1, 3    ; BOSS
	move_choices 1, 2    ; SCIENTIST
	move_choices 1, 3    ; GIOVANNI
	move_choices 1       ; ROCKET
	move_choices 1, 3    ; COOLTRAINER_M
	move_choices 1, 3    ; COOLTRAINER_F
	move_choices 1       ; BRUNO
	move_choices 1       ; BROCK
	move_choices 1, 3    ; MISTY
	move_choices 1       ; LT_SURGE
	move_choices 1, 3    ; ERIKA
	move_choices 1, 3    ; KOGA
	move_choices 1       ; BLAINE
	move_choices 1       ; SABRINA
	move_choices 1, 2    ; GENTLEMAN
	move_choices 1, 3    ; RIVAL2
	move_choices 1, 3    ; RIVAL3
	move_choices 1, 2, 3 ; LORELEI
	move_choices 1       ; CHANNELER
	move_choices 1       ; AGATHA
	move_choices 1, 3    ; LANCE
	move_choices 1, 3    ; RIVAL4
	move_choices 1, 2, 3 ; SCHOOLBOY
	move_choices 1, 2, 3 ; SKIIER
	move_choices 1       ; TEACHER
	move_choices 1, 2    ; FIREBREATHER
	move_choices 1, 2, 3 ; EXECUTIVE_M
	move_choices 1, 2, 3 ; EXECUTIVE_F
	move_choices 1, 2, 3 ; SAGE
	move_choices 1, 3    ; BOARDER
	move_choices 1, 3    ; POKEFAN_M
	move_choices 1, 3    ; KIMONO_GIRL
	move_choices         ; TWINS
	move_choices 1, 3    ; POKEFAN_F
	move_choices 1, 3    ; OFFICER
	move_choices 1       ; ROCKET_F
	move_choices 1       ; CRUSH_GIRL
	move_choices         ; TUBER
	move_choices 1, 2    ; PKMN_RANGER_M
	move_choices 1, 2    ; PKMN_RANGER_F
	move_choices 1       ; RUIN_MANIAC
	move_choices 1, 2    ; LADY
	move_choices 1       ; PAINTER
	move_choices 1, 3    ; KEI
	move_choices 1, 3    ; LEAF
	assert_list_length NUM_TRAINERS

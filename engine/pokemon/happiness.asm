ModifyHappiness::
	ld c, d

	ld a, [wWhichPokemon]
	inc a
	ld e, a
	ld d, 0
	ld hl, wPartySpecies - 1
	add hl, de
	ld a, [hl]
	cp EGG
	ret z

	push bc
	ld hl, wPartyMonHappiness
	ld bc, $01
	ld a, [wWhichPokemon]
	call AddNTimes
	pop bc

	ld d, h
	ld e, l

.proceed
	push de
	ld a, [de]
	cp HAPPINESS_THRESHOLD_1
	ld e, 0
	jr c, .ok
	inc e
	cp HAPPINESS_THRESHOLD_2
	jr c, .ok
	inc e
.ok
	dec c
	ld b, $0
	ld hl, HappinessChangeTable
	add hl, bc
	add hl, bc
	add hl, bc
	ld d, $0
	add hl, de
	ld a, [hl]
	; Inexplicably, we're using 100 as the threshold for comparison.
	cp 100
	pop de
	
	ld a, [de]
	jr nc, .negative
	add [hl]
	jr nc, .done
	ld a, -1
	jr .done

.negative
	add [hl]
	jr c, .done
	xor a
.done
	ld [de], a
	ld a, [wIsInBattle]
	and a
	ret z
	ld a, [wWhichPokemon]
	ld b, a
	ld a, [wPartyAndBillsPCSavedMenuItem]
	cp b
	ret nz
	ld a, [de]
	ld [wBattleMonHappiness], a
	ret	

HappinessChangeTable:
; entries correspond to HAPPINESS_* constants
; change if happiness < 100, change if happiness < 200, change otherwise
	db  +5,  +3,  +2 ; Gained a level
	db  +5,  +3,  +2 ; Vitamin
	db  +1,  +1,  +0 ; X Item
	db  +3,  +2,  +1 ; Battled a Gym Leader
	db  +1,  +1,  +0 ; Learned a move
	db  -1,  -1,  -1 ; Lost to an enemy
	db  -5,  -5, -10 ; Fainted due to poison
	db  -5,  -5, -10 ; Lost to a much stronger enemy
	db  -5,  -5, -10 ; Used Heal Powder or Energypowder (bitter)
	db -10, -10, -15 ; Used Energy Root (bitter)
	db -15, -15, -20 ; Used Revival Herb (bitter)
	db  +3,  +3,  +1 ; Grooming
	
; certain Pokemon now have a unique base happiness, like in Gen 3 and beyond	
GetBaseHappiness::
	ld hl, BaseHappinessTable
	ld a, [wcf91]
	ld c, a
.loop
	ld a, [hli]
	cp $FF
	jr z, .useStandard
	cp c
	jr z, .useModifiedValue
	inc hl
	jr .loop
.useStandard	
	ld a, BASE_HAPPINESS ; 70
	jr .done
.useModifiedValue
	ld a, [hl]
.done
	ld [wBaseHappiness], a
	ret
	
BaseHappinessTable:
	db CLEFAIRY,   HIGH_BASE_HAPPINESS     ; 140
	db CLEFABLE,   HIGH_BASE_HAPPINESS     ; 140
	db CHANSEY,    HIGH_BASE_HAPPINESS     ; 140
	db ARTICUNO,   LOW_BASE_HAPPINESS      ; 35
	db ZAPDOS,     LOW_BASE_HAPPINESS      ; 35
	db MOLTRES,    LOW_BASE_HAPPINESS      ; 35
	db DRATINI,    LOW_BASE_HAPPINESS      ; 35
	db DRAGONAIR,  LOW_BASE_HAPPINESS      ; 35
	db DRAGONITE,  LOW_BASE_HAPPINESS      ; 35
	db MEWTWO,     NO_BASE_HAPPINESS       ; 0
	db MEW,        MYTHICAL_BASE_HAPPINESS ; 100
	;db CLEFFA,     HIGH_BASE_HAPPINESS     ; 140
	;db UMBREON,    LOW_BASE_HAPPINESS      ; 35
	;db MURKROW,    LOW_BASE_HAPPINESS      ; 35
	;db MISDREAVUS, LOW_BASE_HAPPINESS      ; 35
	;db SNEASEL,    LOW_BASE_HAPPINESS      ; 35
	;db HOUNDOUR,   LOW_BASE_HAPPINESS      ; 35
	;db HOUNDOOM,   LOW_BASE_HAPPINESS      ; 35
	;db BLISSEY,    HIGH_BASE_HAPPINESS     ; 140
	;db RAIKOU,     LOW_BASE_HAPPINESS      ; 35
	;db ENTEI,      LOW_BASE_HAPPINESS      ; 35
	;db SUICUNE,    LOW_BASE_HAPPINESS      ; 35
	;db LARVITAR,   LOW_BASE_HAPPINESS      ; 35
	;db PUPITAR,    LOW_BASE_HAPPINESS      ; 35
	;db TYRANITAR,  LOW_BASE_HAPPINESS      ; 35
	;db LUGIA,      NO_BASE_HAPPINESS       ; 0
	;db HO-OH,      NO_BASE_HAPPINESS       ; 0
	;db CELEBI,     MYTHICAL_BASE_HAPPINESS ; 100
	db -1	

PrintItemDescription:
; Print the description for item [wCurSpecies] at de.

	ld a, [wd0b5]
	cp HM01
	jr c, .not_a_tm

	inc a
	ld [wd11e], a
	push de
	predef TMToMove ; get move ID from TM/HM ID
	pop hl
	ld a, [wd11e]
	ld [wMoveNum], a
	call PrintMoveDescription	
	ret

.not_a_tm
	push de
	ld hl, ItemDescriptions
	ld a, [wd0b5]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, BANK(ItemDescriptions)
	call GetFarWord
	ld d, h
	ld e, l
	pop hl
	ld a, BANK(ItemDescriptions)
	jp FarString

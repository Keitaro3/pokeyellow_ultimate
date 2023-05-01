Func_f2418::
	ld hl, BillsHouseText_f243b
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_f2433
.asm_f2427
	ld hl, BillsHouseText_f2440
	call PrintText
	ld a, $1
	ld [wBillsHouseCurScript], a
	ret

.asm_f2433
	ld hl, BillsHouseText_f2445
	call PrintText
	jr .asm_f2427

BillsHouseText_f243b:
	text_far _BillsHouseText_1e865
	text_end

BillsHouseText_f2440:
	text_far _BillsHouseText_1e86a
	text_end

BillsHouseText_f2445:
	text_far _BillsHouseText_1e86f
	text_end

Func_f244a::
	CheckEvent EVENT_GOT_SS_TICKET
	jr nz, .asm_f247e
	ld hl, BillsHouseText_f248c
	call PrintText
	lb bc, S_S_TICKET, 1
	call GiveItem
	jr nc, .asm_f2485
	ld hl, BillsHouseText_f2491
	call PrintText
	SetEvent EVENT_GOT_SS_TICKET
	ld a, HS_CERULEAN_GUARD_1
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_CERULEAN_GUARD_2
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_f247e
	ld hl, BillsHouseText_f249d
	call PrintText
	ret

.asm_f2485
	ld hl, BillsHouseText_f2498
	call PrintText
	ret

BillsHouseText_f248c:
	text_far _BillThankYouText
	text_end

BillsHouseText_f2491:
	text_far _SSTicketReceivedText
	sound_get_key_item
	text_promptbutton
	text_end

BillsHouseText_f2498:
	text_far _SSTicketNoRoomText
	text_end

BillsHouseText_f249d:
	text_far _BillsHouseText_1e8cb
	text_end

Func_f24a2::
	ld hl, BillsHouseText_f24a9
	call PrintText
	ret

BillsHouseText_f24a9:
	text_far _BillsHouseText_1e8da
	text_end

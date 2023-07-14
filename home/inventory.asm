; subtracts the amount the player paid from their money
; OUTPUT: carry = 0(success) or 1(fail because there is not enough money)
SubtractAmountPaidFromMoney::
	farjp SubtractAmountPaidFromMoney_

; adds the amount the player sold to their money
AddAmountSoldToMoney::
	ld de, wPlayerMoney + 2
	ld hl, hMoney + 2 ; total price of items
	ld c, 3 ; length of money in bytes
	predef AddBCDPredef ; add total price to money
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID ; redraw money text box
	ld de, SFX_PURCHASE
	call WaitPlaySFX
	jp WaitSFX
	
ReceiveItem::
	push bc
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(_ReceiveItem)
	call BankswitchCommon
	push hl
	push de

	call _ReceiveItem

	pop de
	pop hl
	pop bc
	ld a, b
	call BankswitchCommon
	pop bc
	ret	

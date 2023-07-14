; checks if the mon in [wWhichPokemon] already knows the move in [wMoveNum]
CheckIfMoveIsKnown:
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [wMoveNum]
	ld b, a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	cp b
	jr z, .alreadyKnown ; found a match
	dec c
	jr nz, .loop
	and a
	ret
.alreadyKnown
	ld hl, AlreadyKnowsText
	call PrintText
	scf
	ret

AlreadyKnowsText:
	text_far _AlreadyKnowsText
	text_end
	
TMHMPocket:
	ld a, $1
	ldh [hInMenu], a
	call TMHM_PocketLoop
	ld a, $0
	ldh [hInMenu], a
	ret nc
	call PlaceHollowCursor
	call Delay3
	ld a, [wcf91]
	dec a
	ld [wCurItemQuantity], a
	ld hl, wTMsHMs
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld [wItemQuantity], a
	scf
	ret	
	
TMHM_PocketLoop:
	xor a
	ldh [hAutoBGTransferEnabled], a
	call TMHM_DisplayPocketItems
	ld a, 2
	ld [w2DMenuCursorInitY], a
	ld a, 7
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 5
	sub d
	inc a
	cp 6
	jr nz, .okay
	dec a
.okay
	ld [w2DMenuNumRows], a
	ld a, $c
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT
	ld [wMenuJoypadFilter], a
	ld a, [wTMHMPocketCursor]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr TMHM_ShowTMMoveDescription
	
TMHM_JoypadLoop:
	call TMHM_DisplayPocketItems
	call StaticMenuJoypad
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wTMHMPocketCursor], a
	xor a
	ldh [hAutoBGTransferEnabled], a
	ld a, [w2DMenuFlags2]
	bit 7, a
	jp nz, TMHM_ScrollPocket
	ld a, b
	ld [wMenuJoypad], a
	bit BIT_A_BUTTON, a
	jp nz, TMHM_ChooseTMorHM
	bit BIT_B_BUTTON, a
	jp nz, TMHM_ExitPack
	bit BIT_D_RIGHT, a
	jp nz, TMHM_ExitPocket
	bit BIT_D_LEFT, a
	jp nz, TMHM_ExitPocket
TMHM_ShowTMMoveDescription:
	call TMHM_CheckHoveringOverCancel
	jp nc, TMHM_ExitPocket
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wcf91]
	cp NUM_TMS + NUM_HMS + 1
	jr nc, TMHM_JoypadLoop
	ld [wd11e], a
	predef TMToMove
	ld a, [wd11e]
	ld [wMoveNum], a
	hlcoord 1, 14
	call PrintMoveDescription
	jp TMHM_JoypadLoop
	
TMHM_ChooseTMorHM:
	call TMHM_PlaySFX_ReadText2
	call CountTMsHMs ; This stores the count to wd11e.
	ld a, [wMenuCursorY]
	dec a
	ld b, a
	ld a, [wTMHMPocketScrollPosition]
	add b
	ld b, a
	ld a, [wd11e]
	cp b
	jr z, _TMHM_ExitPack ; our cursor was hovering over CANCEL
TMHM_CheckHoveringOverCancel:
	call TMHM_GetCurrentPocketPosition
	ld a, [wMenuCursorY]
	ld b, a
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .okay
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	ld a, c
.okay
	ld [wcf91], a
	cp -1
	ret
	
TMHM_ExitPack:
	call TMHM_PlaySFX_ReadText2
_TMHM_ExitPack:
	ld a, $2
	ld [wMenuJoypad], a
	and a
	ret
	
TMHM_ExitPocket:
	and a
	ret
	
TMHM_ScrollPocket:
	ld a, b
	bit 7, a
	jr nz, .skip
	ld hl, wTMHMPocketScrollPosition
	ld a, [hl]
	and a
	jp z, TMHM_JoypadLoop
	dec [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

.skip
	call TMHM_GetCurrentPocketPosition
	ld b, 5
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jp nc, TMHM_JoypadLoop
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	ld hl, wTMHMPocketScrollPosition
	inc [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription
	
TMHM_DisplayPocketItems:
	ld a, [wBattleType]
	cp 1 ; BATTLETYPE_TUTORIAL
	jp z, Tutorial_TMHMPocket

	hlcoord 5, 2
	lb bc, 10, 15
	ld a, " "
	call ClearScreenArea
	call TMHM_GetCurrentPocketPosition
	ld d, $5
.loop2
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .NotTMHM
	ld a, [hli]
	and a
	jr z, .loop2
	ld b, a
	ld a, c
	ld [wd11e], a
	push hl
	push de
	push bc
	call TMHMPocket_GetCurrentLineCoord
	push hl
	ld a, [wd11e]
	cp NUM_TMS + 1
	jr nc, .HM
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 2
	call PrintNumber
	jr .okay

.HM:
	push af
	sub NUM_TMS
	ld [wd11e], a
	ld [hl], "H"
	inc hl
	ld de, wd11e
	lb bc, LEFT_ALIGN | 1, 2
	call PrintNumber
	pop af
	;inc a
	ld [wd11e], a
.okay
	predef TMToMove
	ld a, [wd11e]
	;ld [wPutativeTMHMMove], a
	ld [wMoveNum], a
	call GetMoveName
	;call CopyToStringBuffer ; copy name to wcf4b
	pop hl
	ld bc, 3
	add hl, bc
	push hl
	call PlaceString
	pop hl
	pop bc
	ld a, c
	push bc
	cp NUM_TMS + 1
	jr nc, .hm2
	ld bc, SCREEN_WIDTH + 9
	add hl, bc
	ld [hl], "×"
	inc hl
	ld a, "0" ; why are we doing this?
	pop bc
	push bc
	ld a, b
	ld [wd11e], a
	ld de, wd11e
	lb bc, 1, 2
	call PrintNumber
.hm2
	pop bc
	pop de
	pop hl
	dec d
	jr nz, .loop2
	jr .done

.NotTMHM:
	call TMHMPocket_GetCurrentLineCoord
	inc hl
	inc hl
	inc hl
	push de
	ld de, TMHM_CancelString
	call PlaceString
	pop de
.done
	ret

TMHMPocket_GetCurrentLineCoord:
	hlcoord 5, 0
	ld bc, 2 * SCREEN_WIDTH
	ld a, 6
	sub d
	ld e, a
	; AddNTimes
.loop
	add hl, bc
	dec e
	jr nz, .loop
	ret
	
TMHM_CancelString:
	db "CANCEL@"
	
TMHM_GetCurrentPocketPosition:
	ld hl, wTMsHMs
	ld a, [wTMHMPocketScrollPosition]
	ld b, a
	inc b
	ld c, 0
.loop
	inc c
	ld a, [hli]
	and a
	jr z, .loop
	dec b
	jr nz, .loop
	dec hl
	dec c
	ret

Tutorial_TMHMPocket:
	hlcoord 9, 3
	push de
	ld de, TMHM_CancelString
	call PlaceString
	pop de
	ret

TMHM_PlaySFX_ReadText2:
	push de
	ld de, SFX_PRESS_AB
	call PlaySFX
	pop de
	ret
	
CountTMsHMs:
	ld b, 0
	ld c, NUM_TMS + NUM_HMS
	ld hl, wTMsHMs
.loop
	ld a, [hli]
	and a
	jr z, .skip
	inc b
.skip
	dec c
	jr nz, .loop
	ld a, b
	ld [wd11e], a
	ret	

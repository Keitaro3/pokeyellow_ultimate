VBlank::

	push af
	push bc
	push de
	push hl

	ldh a, [rVBK] ; vram bank
	push af
	xor a
	ldh [rVBK], a ; reset vram bank to 0

	ldh a, [hLoadedROMBank]
	ld [wVBlankSavedROMBank], a

	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a

	ld a, [wDisableVBlankWYUpdate]
	and a
	jr nz, .ok
	ldh a, [hWY]
	ldh [rWY], a
.ok

	call RedrawRowOrColumn
	jr c, .done
	call UpdatePalsIfCGB
	jr c, .done
	call AutoBgMapTransfer
	
	call VBlankCopy
	call VBlankCopyDouble
	call UpdateMovingBgTiles
	
.done	
	call hDMARoutine
	ld a, BANK(PrepareOAMData)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call PrepareOAMData

	; VBlank-sensitive operations end.
	call TrackPlayTime ; keep track of time played

	call Random
	call ReadJoypad

	ldh a, [hVBlankOccurred]
	and a
	jr z, .skipZeroing
	xor a
	ldh [hVBlankOccurred], a

.skipZeroing
	ldh a, [hFrameCounter]
	and a
	jr z, .skipDec
	dec a
	ldh [hFrameCounter], a

.skipDec
	call SerialFunction

	ld a, BANK(_UpdateSound)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	call _UpdateSound
	
	ld a, [wVBlankSavedROMBank]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	pop af
	ldh [rVBK], a

	pop hl
	pop de
	pop bc
	pop af
	reti


DelayFrame::
; Wait for the next vblank interrupt.
; As a bonus, this saves battery.

DEF NOT_VBLANKED EQU 1

	ld a, NOT_VBLANKED
	ldh [hVBlankOccurred], a
.halt
	halt
	ldh a, [hVBlankOccurred]
	and a
	jr nz, .halt
	ret

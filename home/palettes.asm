InitMapSprites::
	jpfar _InitMapSprites

RestoreScreenTilesAndReloadTilePatterns::
	call ClearSprites
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	call ReloadMapSpriteTilePatterns
	call LoadScreenTilesFromBuffer2
	call LoadTextBoxTilePatterns
	call RunDefaultPaletteCommand
	jr Delay3

GBPalWhiteOutWithDelay3::
	call GBPalWhiteOut

Delay3::
; Tell VBlank to update BG Map
	ld a, 1 ; BG Map 0 tiles
	ldh [hAutoBGTransferEnabled], a
; Wait for it to do its magic
	ld c, 4
	call DelayFrames
	ret

GBPalNormal::
; Inits the Palettes
; depending on the system the monochromes palettes or color palettes
	ldh a, [hGBC]
	and a
	jr nz, .SetPalettesForGameBoyColor
	ld a, %11100100 ; 3210
	ldh [rBGP], a
	ld a, %11010000 ; 3100
	ldh [rOBP0], a
	ret
	
.SetPalettesForGameBoyColor:
	push de
	ld a, %11100100
	call DmgToCgbBGPals
	lb de, %11100100, %11100100
	call DmgToCgbObjPals
	pop de
	ret

GBPalWhiteOut::
; White out all palettes.

; CGB: make all the palette colors white
	ldh a, [hGBC]
	and a
	jr nz, .gbc

	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ret
	
.gbc
; Fill wBGPals2 and wOBPals2 with $ffff (white)
	ld hl, wBGPals2
	ld bc, 16 palettes
	ld a, $ff
	call FillMemory
; Request palette update
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

RunDefaultPaletteCommand::
	ld b, SET_PAL_DEFAULT
RunPaletteCommand::
; load sgb packets unless dmg

	ldh a, [hGBC]
	and a
	jr nz, .sgb
	
	ld a, [wOnSGB]
	and a
	ret z
	
.sgb
	predef_jump _RunPaletteCommand

GetHealthBarColor::
; Return at hl the palette of
; an HP bar e pixels long.
	ld a, e
	cp 27
	ld d, 0 ; green
	jr nc, .gotColor
	cp 10
	inc d ; yellow
	jr nc, .gotColor
	inc d ; red
.gotColor
	ld [hl], d
	ret

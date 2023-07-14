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

ApplyTilemap::
	ldh a, [hGBC]
	and a
	jr z, .dmg

	ld a, [wUpdateSpritesEnabled]
	cp 0
	jr z, .dmg

	ld a, 1
	ldh [hAutoBGTransferEnabled], a
	jr CopyTilemapAtOnce

.dmg
	call Delay3
	ret

CGBOnly_CopyTilemapAtOnce::
	ldh a, [hGBC]
	and a
	jr z, Delay3

CopyTilemapAtOnce::
	ldh a, [hAutoBGTransferEnabled]
	push af
	xor a
	ldh [hAutoBGTransferEnabled], a

	ldh a, [hTileAnimations]
	push af
	xor a
	ldh [hTileAnimations], a

.wait
	ldh a, [rLY]
	cp $80 - 1
	jr c, .wait

	di
	ld a, BANK(vBGMap2)
	ldh [rVBK], a
	hlcoord 0, 0, wAttrmap
	call .CopyBGMapViaStack
	ld a, BANK(vBGMap0)
	ldh [rVBK], a
	hlcoord 0, 0
	call .CopyBGMapViaStack

.wait2
	ldh a, [rLY]
	cp $80 - 1
	jr c, .wait2
	ei

	pop af
	ldh [hTileAnimations], a
	pop af
	ldh [hAutoBGTransferEnabled], a
	ret

.CopyBGMapViaStack:
; Copy all tiles to vBGMap
	ld [hSPTemp], sp
	ld sp, hl
	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ld l, 0
	ld a, SCREEN_HEIGHT
	ldh [hTilesPerCycle], a
	ld b, 1 << 1 ; not in v/hblank
	ld c, LOW(rSTAT)

.loop
rept SCREEN_WIDTH / 2
	pop de
; if in v/hblank, wait until not in v/hblank
.loop\@
	ldh a, [c]
	and b
	jr nz, .loop\@
; load vBGMap
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr

	ld de, BG_MAP_WIDTH - SCREEN_WIDTH
	add hl, de
	ldh a, [hTilesPerCycle]
	dec a
	ldh [hTilesPerCycle], a
	jr nz, .loop

	ldh a, [hSPTemp]
	ld l, a
	ldh a, [hSPTemp + 1]
	ld h, a
	ld sp, hl
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

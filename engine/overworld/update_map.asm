; replaces a tile block with the one specified in [wNewTileBlockID]
; and redraws the map view if necessary
; b = Y
; c = X
ReplaceTileBlock:
	call GetPredefRegisters
	ld hl, wOverworldMap
	ld a, [wCurMapWidth]
	add $6
	ld e, a
	ld d, $0
	add hl, de
	add hl, de
	add hl, de
	ld e, $3
	add hl, de
	ld e, a
	ld a, b
	and a
	jr z, .addX
; add width * Y
.addWidthYTimesLoop
	add hl, de
	dec b
	jr nz, .addWidthYTimesLoop
.addX
	add hl, bc ; add X
	ld a, [wNewTileBlockID]
	ld [hl], a
	ld a, [wCurrentTileBlockMapViewPointer]
	ld c, a
	ld a, [wCurrentTileBlockMapViewPointer + 1]
	ld b, a
	call CompareHLWithBC
	ret c ; return if the replaced tile block is below the map view in memory
	push hl
	ld l, e
	ld h, $0
	ld e, $6
	ld d, h
	add hl, hl
	add hl, hl
	add hl, de
	add hl, bc
	pop bc
	call CompareHLWithBC
	ret c ; return if the replaced tile block is above the map view in memory

RedrawMapView:
	ld a, [wIsInBattle]
	inc a
	ret z
	ldh a, [hAutoBGTransferEnabled]
	push af
	ldh a, [hTileAnimations]
	push af
	xor a
	ldh [hAutoBGTransferEnabled], a
	ldh [hTileAnimations], a
	call LoadCurrentMapView
	call RunDefaultPaletteCommand
	ld hl, wMapViewVRAMPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, -2 * BG_MAP_WIDTH
	add hl, de
	ld a, h
	and $3
	or $98
	ld a, l
	ld [wBuffer], a
	ld a, h
	ld [wBuffer + 1], a ; this copy of the address is not used
	ld a, 2
	ldh [hRedrawMapViewRowOffset], a
	ld c, SCREEN_HEIGHT / 2 ; number of rows of 2x2 tiles (this covers the whole screen)
.redrawRowLoop
	push bc
	push hl
	push hl
	ld hl, wTileMap - 2 * SCREEN_WIDTH
	ld de, SCREEN_WIDTH
	ldh a, [hRedrawMapViewRowOffset]
.calcWRAMAddrLoop
	add hl, de
	dec a
	jr nz, .calcWRAMAddrLoop
	call CopyToRedrawRowOrColumnSrcTiles
	pop hl
	ld de, BG_MAP_WIDTH
	ldh a, [hRedrawMapViewRowOffset]
	ld c, a
.calcVRAMAddrLoop
	add hl, de
	ld a, h
	and $3
	or $98
	dec c
	jr nz, .calcVRAMAddrLoop
	ldh [hRedrawRowOrColumnDest + 1], a
	ld a, l
	ldh [hRedrawRowOrColumnDest], a
	ld a, REDRAW_ROW
	ldh [hRedrawRowOrColumnMode], a
	call DelayFrame
	ld hl, hRedrawMapViewRowOffset
	inc [hl]
	inc [hl]
	pop hl
	pop bc
	dec c
	jr nz, .redrawRowLoop
	pop af
	ldh [hTileAnimations], a
	pop af
	ldh [hAutoBGTransferEnabled], a
	ret

CompareHLWithBC:
	ld a, h
	sub b
	ret nz
	ld a, l
	sub c
	ret
	
_LoadMapPart::
	ld hl, wTileMapBackup
	ld a, [wYBlockCoord]
	and a
	jr z, .top_row
	ld bc, SURROUNDING_WIDTH * 2
	add hl, bc

.top_row
	ld a, [wXBlockCoord]
	and a
	jr z, .left_column
	inc hl
	inc hl

.left_column
	decoord 0, 0
	ld b, SCREEN_HEIGHT
.loop
	ld c, SCREEN_WIDTH
.loop2
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop2
	ld a, l
	add METATILE_WIDTH
	ld l, a
	jr nc, .carry
	inc h

.carry
	dec b
	jr nz, .loop
	ret

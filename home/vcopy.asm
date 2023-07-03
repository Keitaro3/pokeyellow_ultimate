; this function seems to be used only once
; it store the address of a row and column of the VRAM background map in hl
; INPUT: h - row, l - column, b - high byte of background tile map address in VRAM
GetRowColAddressBgMap::
	xor a
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	or l
	ld l, a
	ld a, b
	or h
	ld h, a
	ret

; clears a VRAM background map with blank space tiles
; INPUT: h - high byte of background tile map address in VRAM
ClearBgMap::
	ld a, " "
	jr .next
	ld a, l
.next
	ld de, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld l, e
.loop
	ld [hli], a
	dec e
	jr nz, .loop
	dec d
	jr nz, .loop
	ret

RedrawRowOrColumn::
; Copy [hBGMapTileCount] 16x8 tiles from wRedrawRowOrColumnSrcTiles
; to bg map addresses in wBGMapBufferPointers.

; [hBGMapTileCount] must be even since this is done in pairs.

; Return carry on success.

	ldh a, [hRedrawRowOrColumnMode]
	and a
	ret z

; Relocate the stack pointer to wBGMapBufferPointers
	ld [hSPTemp], sp
	ld hl, wBGMapBufferPointers
	ld sp, hl

; We can now pop the addresses of affected spots on the BG Map

	ld hl, wBGMapPalBuffer
	ld de, wRedrawRowOrColumnSrcTiles

.next
; Copy a pair of 16x8 blocks (one 16x16 block)

rept 2
; Get our BG Map address
	pop bc

; Palettes
	ld a, 1
	ldh [rVBK], a

	ld a, [hli]
	ld [bc], a
	inc c
	ld a, [hli]
	ld [bc], a
	dec c

; Tiles
	ld a, 0
	ldh [rVBK], a

	ld a, [de]
	inc de
	ld [bc], a
	inc c
	ld a, [de]
	inc de
	ld [bc], a
endr

; We've done 2 16x8 blocks
	ldh a, [hBGMapTileCount]
	dec a
	dec a
	ldh [hBGMapTileCount], a

	jr nz, .next

; Restore the stack pointer
	ldh a, [hSPTemp]
	ld l, a
	ldh a, [hSPTemp + 1]
	ld h, a
	ld sp, hl

	xor a
	ldh [hRedrawRowOrColumnMode], a
	scf
	ret

; This function automatically transfers tile number data from the tile map at
; wTileMap to VRAM during V-blank. Note that it only transfers one third of the
; background per V-blank. It cycles through which third it draws.
; This transfer is turned off when walking around the map, but is turned
; on when talking to sprites, battling, using menus, etc. This is because
; the above function, RedrawRowOrColumn, is used when walking to
; improve efficiency.
AutoBgMapTransfer::
; Update the BG Map, in thirds, from wTilemap and wAttrmap.

	ldh a, [hAutoBGTransferEnabled]
	and a ; 0
	ret z

; BG Map 0
	dec a ; 1
	jr z, .Tiles
	dec a ; 2
	jr z, .Attr

; BG Map 1
	dec a ; useless

	ldh a, [hAutoBGTransferDest]
	ld l, a
	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	push hl

	xor a ; LOW(vBGMap1)
	ldh [hAutoBGTransferDest], a
	ld a, HIGH(vBGMap1)
	ldh [hAutoBGTransferDest + 1], a

	ldh a, [hAutoBGTransferEnabled]
	push af
	cp 3
	call z, .Tiles
	pop af
	cp 4
	call z, .Attr

	pop hl
	ld a, l
	ldh [hAutoBGTransferDest], a
	ld a, h
	ldh [hAutoBGTransferDest + 1], a
	ret

.Attr:
	ld a, 1
	ldh [rVBK], a

	hlcoord 0, 0, wAttrmap
	call .update

	ld a, 0
	ldh [rVBK], a
	ret

.Tiles:
	hlcoord 0, 0

.update
	ld [hSPTemp], sp

; Which third?
	ldh a, [hAutoBGTransferPortion]
	and a ; 0
	jr z, .top
	dec a ; 1
	jr z, .middle
	; 2

DEF THIRD_HEIGHT EQU SCREEN_HEIGHT / 3

; bottom
	ld de, 2 * THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a

	ld de, 2 * THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: top third
	xor a
	jr .start

.middle
	ld de, THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a

	ld de, THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: bottom third
	ld a, 2
	jr .start

.top
	ld sp, hl

	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a

; Next time: middle third
	ld a, 1

.start
; Which third to update next time
	ldh [hAutoBGTransferPortion], a

; Rows of tiles in a third
	ld a, THIRD_HEIGHT

; Discrepancy between wTilemap and BGMap
	ld bc, BG_MAP_WIDTH - (SCREEN_WIDTH - 1)

.row
; Copy a row of 20 tiles
rept SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	add hl, bc
	dec a
	jr nz, .row

	ldh a, [hSPTemp]
	ld l, a
	ldh a, [hSPTemp + 1]
	ld h, a
	ld sp, hl
	ret


VBlankCopyDouble::
	ld a, [hVBlankCopyDoubleSize]
	and a
	ret z

; Copy [hVBlankCopyDoubleSize] 1bpp tiles from [hVBlankCopyDoubleSource] to [hVBlankCopyDoubleDest]

	ld [hSPTemp], sp

; Source
	ld hl, hVBlankCopyDoubleSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, hVBlankCopyDoubleDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [hVBlankCopyDoubleSize]
	ld b, a

	xor a
	ld [hVBlankCopyDoubleSize], a

.next

rept 3
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [hVBlankCopyDoubleDest], a
	ld a, h
	ld [hVBlankCopyDoubleDest + 1], a

	ld [hVBlankCopyDoubleSource], sp

	ldh a, [hSPTemp]
	ld l, a
	ldh a, [hSPTemp + 1]
	ld h, a
	ld sp, hl
	ret


VBlankCopy::
	ld a, [hVBlankCopySize]
	and a
	ret z

; Copy [hVBlankCopySize] 2bpp tiles from [hVBlankCopySource] to [hVBlankCopyDest]

	ld [hSPTemp], sp

; Source
	ld hl, hVBlankCopySource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, hVBlankCopyDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [hVBlankCopySize]
	ld b, a

	xor a
	ld [hVBlankCopySize], a

.next

rept 7
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [hVBlankCopyDest], a
	ld a, h
	ld [hVBlankCopyDest + 1], a

	ld [hVBlankCopySource], sp

	ldh a, [hSPTemp]
	ld l, a
	ldh a, [hSPTemp + 1]
	ld h, a
	ld sp, hl
	ret


UpdateMovingBgTiles::
; Animate water and flower
; tiles in the overworld.

	ldh a, [hTileAnimations]
	and a
	ret z

	ldh a, [rLY]
	cp $90 ; check if not in vblank period??? (maybe if vblank is too long)
	ret c

	ldh a, [hMovingBGTilesCounter1]
	inc a
	ldh [hMovingBGTilesCounter1], a
	cp 20
	ret c
	cp 21
	jr z, .flower

; water

	ld hl, vTileset tile $14
	ld c, $10

	ld a, [wMovingBGTilesCounter2]
	inc a
	and 7
	ld [wMovingBGTilesCounter2], a

	and 4
	jr nz, .left
.right
	ld a, [hl]
	rrca
	ld [hli], a
	dec c
	jr nz, .right
	jr .done
.left
	ld a, [hl]
	rlca
	ld [hli], a
	dec c
	jr nz, .left
.done
	ldh a, [hTileAnimations]
	rrca
	ret nc

	xor a
	ldh [hMovingBGTilesCounter1], a
	ret

.flower
	xor a
	ldh [hMovingBGTilesCounter1], a

	ld a, [wMovingBGTilesCounter2]
	and 3
	cp 2
	ld hl, FlowerTile1
	jr c, .copy
	ld hl, FlowerTile2
	jr z, .copy
	ld hl, FlowerTile3
.copy
	ld de, vTileset tile $03
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

FlowerTile1: INCBIN "gfx/tilesets/flower/flower1.2bpp"
FlowerTile2: INCBIN "gfx/tilesets/flower/flower2.2bpp"
FlowerTile3: INCBIN "gfx/tilesets/flower/flower3.2bpp"

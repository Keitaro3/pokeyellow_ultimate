; uncompresses the front or back sprite of the specified mon
; assumes the corresponding mon header is already loaded
; hl contains offset to sprite pointer ($b for front or $d for back)
UncompressMonSprite::
	ld a, [wcf91]
	and a
	ret z
	ld bc,wMonHeader
	add hl,bc
	cp UNOWN
	jr z,.uncompress_unown
	ld a,[hli]
	ld [wSpriteInputPtr],a    ; fetch sprite input pointer
	ld a,[hl]
	ld [wSpriteInputPtr+1],a
	ld hl, MonSpriteBankList
	ld a,[wcf91] ; XXX name for this ram location
	ld b, a
	; get Pokémon picture bank pointer from list
.loop
	ld a, BANK(MonSpriteBankList)
	call GetFarByte
	inc hl
	inc hl
	cp b
	jr c, .loop
	dec hl
	ld a, BANK(MonSpriteBankList)
	call GetFarByte
	jp UncompressSpriteData
.uncompress_unown
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wUnownLetter]
	dec a
	add a
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, BANK(UnownPicPtrs)
	call GetFarByte
	ld [wSpriteInputPtr], a
	inc hl
	ld a, BANK(UnownPicPtrs)
	call GetFarByte
	ld [wSpriteInputPtr + 1], a
	ld a, BANK(UnownPics)
	jp UncompressSpriteData

; de: destination location
LoadMonFrontSprite::
	push de
	ld hl, wMonHFrontSprite - wMonHeader
	call UncompressMonSprite
	ld hl, wMonHSpriteDim
	ld a, [hli]
LoadUncompressedBackSprite::
	ld c, a
	pop de
	; fall through

; postprocesses uncompressed sprite chunks to a 2bpp sprite and loads it into video ram
; calculates alignment parameters to place both sprite chunks in the center of the 7*7 tile sprite buffers
; de: destination location
; a,c:  sprite dimensions (in tiles of 8x8 each)
LoadUncompressedSpriteData::
	push de
	and $f
	ldh [hSpriteWidth], a ; each byte contains 8 pixels (in 1bpp), so tiles=bytes for width
	ld b, a
	ld a, $7
	sub b      ; 7-w
	inc a      ; 8-w
	srl a      ; (8-w)/2     ; horizontal center (in tiles, rounded up)
	ld b, a
	add a
	add a
	add a
	sub b      ; 7*((8-w)/2) ; skip for horizontal center (in tiles)
	ldh [hSpriteOffset], a
	ld a, c
	swap a
	and $f
	ld b, a
	add a
	add a
	add a     ; 8*tiles is height in bytes
	ldh [hSpriteHeight], a
	ld a, $7
	sub b      ; 7-h         ; skip for vertical center (in tiles, relative to current column)
	ld b, a
	ldh a, [hSpriteOffset]
	add b     ; 7*((8-w)/2) + 7-h ; combined overall offset (in tiles)
	add a
	add a
	add a     ; 8*(7*((8-w)/2) + 7-h) ; combined overall offset (in bytes)
	ldh [hSpriteOffset], a
	ld a, $0
	call SwitchSRAMBankAndLatchClockData
	ld hl, sSpriteBuffer0
	call ZeroSpriteBuffer   ; zero buffer 0
	ld de, sSpriteBuffer1
	ld hl, sSpriteBuffer0
	call AlignSpriteDataCentered    ; copy and align buffer 1 to 0 (containing the MSB of the 2bpp sprite)
	ld hl, sSpriteBuffer1
	call ZeroSpriteBuffer   ; zero buffer 1
	ld de, sSpriteBuffer2
	ld hl, sSpriteBuffer1
	call AlignSpriteDataCentered    ; copy and align buffer 2 to 1 (containing the LSB of the 2bpp sprite)
	call PrepareRTCDataAndDisableSRAM
	pop de
	call InterlaceMergeSpriteBuffers
	ret

; copies and aligns the sprite data properly inside the sprite buffer
; sprite buffers are 7*7 tiles in size, the loaded sprite is centered within this area
AlignSpriteDataCentered::
	ldh a, [hSpriteOffset]
	ld c, a
	ld b, $0
	add hl, bc
	ldh a, [hSpriteWidth]
	ld b, a
	ldh a, [hSpriteHeight]
	ld c, a
.columnLoop
	push bc
	push hl
.columnInnerLoop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .columnInnerLoop
	pop hl
	ld bc, 7*8    ; 7 tiles
	add hl, bc    ; advance one full column
	pop bc
	dec b
	jr nz, .columnLoop
	ret

; fills the sprite buffer (pointed to in hl) with zeros
ZeroSpriteBuffer::
	ld bc, SPRITEBUFFERSIZE
	xor a
	jp FillMemory

; combines the (7*7 tiles, 1bpp) sprite chunks in buffer 0 and 1 into a 2bpp sprite located in buffer 1 through 2
; in the resulting sprite, the rows of the two source sprites are interlaced
; de: output address
InterlaceMergeSpriteBuffers::
	ld a, $0
	call SwitchSRAMBankAndLatchClockData
	push de
	call _InterlaceMergeSpriteBuffers
	pop hl
	ld de, sSpriteBuffer1
	ld c, (2 * SPRITEBUFFERSIZE) / 16 ; $31, number of 16 byte chunks to be copied
	ldh a, [hLoadedROMBank]
	ld b, a
	call CopyVideoDataAlternate
	call PrepareRTCDataAndDisableSRAM
	ret

; actual implementation of InterlaceMergeSpriteBuffers
; sprite flipping is now done during interlace merge loop
; and not as second loop after regular interlace merge
; to save time
_InterlaceMergeSpriteBuffers::
	ld a, [wSpriteFlipped]
	and a
	jr nz, .flipped
	ld hl, sSpriteBuffer2 + (SPRITEBUFFERSIZE - 1) ; destination: end of buffer 2
	ld de, sSpriteBuffer1 + (SPRITEBUFFERSIZE - 1) ; source 2: end of buffer 1
	ld bc, sSpriteBuffer0 + (SPRITEBUFFERSIZE - 1) ; source 1: end of buffer 0
	ld a, SPRITEBUFFERSIZE/2 ; $c4
	ldh [hSpriteInterlaceCounter], a
.interlaceLoop
	ld a, [de]
	dec de
	ld [hld], a   ; write byte of source 2
	ld a, [bc]
	dec bc
	ld [hld], a   ; write byte of source 1
	ld a, [de]
	dec de
	ld [hld], a   ; write byte of source 2
	ld a, [bc]
	dec bc
	ld [hld], a   ; write byte of source 1
	ldh a, [hSpriteInterlaceCounter]
	dec a
	ldh [hSpriteInterlaceCounter], a
	jr nz, .interlaceLoop
	ld a, [wSpriteFlipped] ; always notFlipped; flip routine was optimized
	and a
	jr z, .notFlipped
	ld bc, 2*SPRITEBUFFERSIZE
	ld hl, sSpriteBuffer1
.swapLoop
	swap [hl]    ; if flipped swap nybbles in all bytes
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .swapLoop
.notFlipped
	ret
.flipped
	ld hl, sSpriteBuffer2 + (SPRITEBUFFERSIZE - 1) ; destination: end of buffer 2
	ld de, sSpriteBuffer1 + (SPRITEBUFFERSIZE - 1) ; source 2: end of buffer 1
	ld bc, sSpriteBuffer0 + (SPRITEBUFFERSIZE - 1) ; source 1: end of buffer 0
	ld a, SPRITEBUFFERSIZE / 2 ; $c4
	ldh [hSpriteInterlaceCounter], a
.interlaceLoopFlipped
	ld a, [de]
	dec de
	swap a
	ld [hld], a   ; write byte of source 2
	ld a, [bc]
	dec bc
	swap a
	ld [hld], a   ; write byte of source 1
	ld a, [de]
	dec de
	swap a
	ld [hld], a   ; write byte of source 2
	ld a, [bc]
	dec bc
	swap a
	ld [hld], a   ; write byte of source 1
	ldh a, [hSpriteInterlaceCounter]
	dec a
	ldh [hSpriteInterlaceCounter], a
	jr nz, .interlaceLoopFlipped
	ret

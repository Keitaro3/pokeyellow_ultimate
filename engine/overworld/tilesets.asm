LoadTilesetHeader:
	call GetPredefRegisters
	push hl
	ld a, [wCurMapTileset]
	ld d, 0
	ld e, a
	ld h, 0
	ld l, a
	ld c, $d
.loop
	add hl, de
	dec c
	jr nz, .loop
	ld d, h
	ld e, l
.calculateOffset
	ld hl, Tilesets ;load tileset headers in to HL
	add hl, de ;add DE to HL to get position?
	ld de, wTilesetBank
	ld bc, $0e
	call CopyData
	ld a, [wTileAnimations]
	ldh [hTileAnimations], a
	xor a
	ldh [hMovingBGTilesCounter1], a
	pop hl
	ld a, [wCurMapTileset]
	push hl
	push de
	ld hl, DungeonTilesets
	ld de, $1
	call IsInArray
	pop de
	pop hl
	jr c, .dungeon
	ld a, [wCurMapTileset]
	ld b, a
	ldh a, [hPreviousTileset]
	cp b
	jr z, .done
.dungeon
	ld a, [wDestinationWarpID]
	cp $ff
	jr z, .done
	call LoadDestinationWarpPosition
	ld a, [wYCoord]
	and $1
	ld [wYBlockCoord], a
	ld a, [wXCoord]
	and $1
	ld [wXBlockCoord], a
.done
	ret

INCLUDE "data/tilesets/dungeon_tilesets.asm"

INCLUDE "data/tilesets/tileset_headers.asm"

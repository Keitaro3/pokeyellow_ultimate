LoadSpecialMapPalette:
	ld a, [wCurMapTileset]
	;cp TILESET_POKECOM_CENTER
	;jr z, .pokecom_2f
	;cp TILESET_BATTLE_TOWER_INSIDE
	;jr z, .battle_tower_inside
	;cp TILESET_ICE_PATH
	;jr z, .ice_path
	cp REDS_HOUSE_1
	jr z, .house
	cp REDS_HOUSE_2
	jr z, .house
	cp HOUSE
	jr z, .house
	cp MANSION
	jr z, .mansion
	jr .do_nothing

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.mansion
	call LoadMansionPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadPokeComPalette:
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call CopyData
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call CopyData
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call CopyData
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call CopyData
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call CopyData
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call CopyData
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call CopyData
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call CopyData
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

MACRO tilepal
; used in gfx/tilesets/*_palette_map.asm
; vram bank, pals
	DEF x = \1 << OAM_TILE_BANK
	rept (_NARG - 1) / 2
		dn (x | PAL_BG_\3), (x | PAL_BG_\2)
		shift 2
	endr
ENDM

TilesetOverworldPalMap:
INCLUDE "gfx/tilesets/overworld_palette_map.asm"

TilesetRedsHouse1PalMap:
INCLUDE "gfx/tilesets/reds_house_palette_map.asm"

TilesetMartPalMap:
INCLUDE "gfx/tilesets/mart_palette_map.asm"

TilesetForestPalMap:
INCLUDE "gfx/tilesets/forest_palette_map.asm"

TilesetRedsHouse2PalMap:
INCLUDE "gfx/tilesets/reds_house2_palette_map.asm"

TilesetDojoPalMap:
INCLUDE "gfx/tilesets/dojo_palette_map.asm"

TilesetPokecenterPalMap:
INCLUDE "gfx/tilesets/pokecenter_palette_map.asm"

TilesetGymPalMap:
INCLUDE "gfx/tilesets/gym_palette_map.asm"

TilesetHousePalMap:
INCLUDE "gfx/tilesets/house_palette_map.asm"

TilesetForestGatePalMap:
INCLUDE "gfx/tilesets/forest_gate_palette_map.asm"

TilesetMuseumPalMap:
INCLUDE "gfx/tilesets/museum_palette_map.asm"

TilesetUndergroundPalMap:
INCLUDE "gfx/tilesets/underground_palette_map.asm"

TilesetTilesetGatePalMap:
INCLUDE "gfx/tilesets/gate_palette_map.asm"

TilesetShipPalMap:
INCLUDE "gfx/tilesets/ship_palette_map.asm"

TilesetShipPortPalMap:
INCLUDE "gfx/tilesets/ship_port_palette_map.asm"

TilesetCemeteryPalMap:
INCLUDE "gfx/tilesets/cemetery_palette_map.asm"

TilesetInteriorPalMap:
INCLUDE "gfx/tilesets/interior_palette_map.asm"

TilesetCavernPalMap:
INCLUDE "gfx/tilesets/cavern_palette_map.asm"

TilesetLobbyPalMap:
INCLUDE "gfx/tilesets/lobby_palette_map.asm"

TilesetMansionPalMap:
INCLUDE "gfx/tilesets/mansion_palette_map.asm"

TilesetLabPalMap:
INCLUDE "gfx/tilesets/lab_palette_map.asm"

TilesetClubPalMap:
INCLUDE "gfx/tilesets/club_palette_map.asm"

TilesetFacilityPalMap:
INCLUDE "gfx/tilesets/facility_palette_map.asm"

TilesetPlateauPalMap:
INCLUDE "gfx/tilesets/plateau_palette_map.asm"

TilesetBeachHousePalMap:
INCLUDE "gfx/tilesets/beach_house_palette_map.asm"

MapGroupPalettes:
; entries correspond to MAPGROUP_* constants
rept NUM_MAP_GROUPS
	db PAL_BG_ROOF
endr

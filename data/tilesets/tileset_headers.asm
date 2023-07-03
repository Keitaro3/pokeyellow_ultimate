MACRO tileset
	db BANK(\1_GFX)
	dw \1_Block, \1_GFX, \1_Coll
	db \2, \3, \4 ; counter tiles
	db \5         ; grass tile
	db \6         ; animations (TILEANIM_* value)
	dw \7		  ; palette map
ENDM

Tilesets:
	table_width 14, Tilesets
	; name, 3 counter tiles, grass tile, animations
	tileset Overworld,    -1, -1, -1, $52, TILEANIM_WATER_FLOWER, TilesetOverworldPalMap
	tileset RedsHouse1,   -1, -1, -1,  -1, TILEANIM_NONE, TilesetRedsHouse1PalMap
	tileset Mart,        $18,$19,$1E,  -1, TILEANIM_NONE, TilesetMartPalMap
	tileset Forest,       -1, -1, -1, $20, TILEANIM_WATER, TilesetForestPalMap
	tileset RedsHouse2,   -1, -1, -1,  -1, TILEANIM_NONE, TilesetRedsHouse1PalMap
	tileset Dojo,        $3A, -1, -1,  -1, TILEANIM_WATER_FLOWER, TilesetDojoPalMap
	tileset Pokecenter,  $18,$19,$1E,  -1, TILEANIM_NONE, TilesetPokecenterPalMap
	tileset Gym,         $3A, -1, -1,  -1, TILEANIM_WATER_FLOWER, TilesetGymPalMap
	tileset House,        -1, -1, -1,  -1, TILEANIM_NONE, TilesetHousePalMap
	tileset ForestGate,  $17,$32, -1,  -1, TILEANIM_NONE, TilesetForestGatePalMap
	tileset Museum,      $17,$32, -1,  -1, TILEANIM_NONE, TilesetMuseumPalMap
	tileset Underground,  -1, -1, -1,  -1, TILEANIM_NONE, TilesetUndergroundPalMap
	tileset Gate,        $17,$32, -1,  -1, TILEANIM_NONE, TilesetTilesetGatePalMap
	tileset Ship,         -1, -1, -1,  -1, TILEANIM_WATER, TilesetShipPalMap
	tileset ShipPort,     -1, -1, -1,  -1, TILEANIM_WATER, TilesetShipPortPalMap
	tileset Cemetery,    $12, -1, -1,  -1, TILEANIM_NONE, TilesetCemeteryPalMap
	tileset Interior,     -1, -1, -1,  -1, TILEANIM_NONE, TilesetInteriorPalMap
	tileset Cavern,       -1, -1, -1,  -1, TILEANIM_WATER, TilesetCavernPalMap
	tileset Lobby,       $15,$36, -1,  -1, TILEANIM_NONE, TilesetLobbyPalMap
	tileset Mansion,      -1, -1, -1,  -1, TILEANIM_NONE, TilesetMansionPalMap
	tileset Lab,          -1, -1, -1,  -1, TILEANIM_NONE, TilesetLabPalMap
	tileset Club,        $07,$17, -1,  -1, TILEANIM_NONE, TilesetClubPalMap
	tileset Facility,    $12, -1, -1,  -1, TILEANIM_WATER, TilesetFacilityPalMap
	tileset Plateau,      -1, -1, -1, $45, TILEANIM_WATER, TilesetPlateauPalMap
	tileset BeachHouse,   -1, -1, -1,  -1, TILEANIM_NONE, TilesetBeachHousePalMap
	assert_table_length NUM_TILESETS

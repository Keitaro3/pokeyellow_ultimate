; tileset ids
; Tilesets indexes (see data/tilesets/tileset_headers.asm)
	const_def
	const OVERWORLD    ; 0
	const REDS_HOUSE_1 ; 1
	const MART         ; 2
	const FOREST       ; 3
	const REDS_HOUSE_2 ; 4
	const DOJO         ; 5
	const POKECENTER   ; 6
	const GYM          ; 7
	const HOUSE        ; 8
	const FOREST_GATE  ; 9
	const MUSEUM       ; 10
	const UNDERGROUND  ; 11
	const GATE_T       ; 12
	const SHIP         ; 13
	const SHIP_PORT    ; 14
	const CEMETERY     ; 15
	const INTERIOR     ; 16
	const CAVERN       ; 17
	const LOBBY        ; 18
	const MANSION      ; 19
	const LAB          ; 20
	const CLUB         ; 21
	const FACILITY     ; 22
	const PLATEAU      ; 23
	const BEACH_HOUSE  ; 24
DEF NUM_TILESETS EQU const_value

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7

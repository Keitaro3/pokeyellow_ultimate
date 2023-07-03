; width of east/west connections
; height of north/south connections
DEF MAP_BORDER EQU 3

; connection directions
	const_def
	shift_const EAST   ; 1
	shift_const WEST   ; 2
	shift_const SOUTH  ; 4
	shift_const NORTH  ; 8

; flower and water tile animations
	const_def
	const TILEANIM_NONE          ; 0
	const TILEANIM_WATER         ; 1
	const TILEANIM_WATER_FLOWER  ; 2
	
; map struct members (see data/maps/maps.asm)
rsreset
DEF MAP_MAPHEADER_BANK     rb ; 0
DEF MAP_ENVIRONMENT        rb ; 1
DEF MAP_MAPHEADER          rw ; 2
DEF MAP_LOCATION           rb ; 4
DEF MAP_MUSIC              rb ; 5
DEF MAP_PALETTE            rb ; 6
DEF MAP_LENGTH EQU _RS	
	
; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ENVIRONMENT_5
	const GATE
	const DUNGEON
DEF NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK
DEF NUM_MAP_PALETTES EQU const_value

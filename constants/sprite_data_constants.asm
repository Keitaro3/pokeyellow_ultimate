; overworld_sprite struct members (see data/sprites/sprites.asm)
rsreset
DEF SPRITEDATA_ADDR    rw ; 0
DEF SPRITEDATA_SIZE    rb ; 2
DEF SPRITEDATA_BANK    rb ; 3
DEF SPRITEDATA_PALETTE rb ; 4
DEF NUM_SPRITEDATA_FIELDS EQU _RS

; sprite facing directions
	const_def 0, $04
	const SPRITE_FACING_DOWN  ; $00
	const SPRITE_FACING_UP    ; $04
	const SPRITE_FACING_LEFT  ; $08
	const SPRITE_FACING_RIGHT ; $0C

	const_def 0, $40
	const NPC_MOVEMENT_DOWN  ; $00
	const NPC_MOVEMENT_UP    ; $40
	const NPC_MOVEMENT_LEFT  ; $80
	const NPC_MOVEMENT_RIGHT ; $C0

DEF NPC_CHANGE_FACING EQU $E0

; player direction constants
	const_def
	const PLAYER_DIR_BIT_RIGHT ; 0
	const PLAYER_DIR_BIT_LEFT  ; 1
	const PLAYER_DIR_BIT_DOWN  ; 2
	const PLAYER_DIR_BIT_UP    ; 3

DEF PLAYER_DIR_RIGHT EQU 1 << PLAYER_DIR_BIT_RIGHT
DEF PLAYER_DIR_LEFT  EQU 1 << PLAYER_DIR_BIT_LEFT
DEF PLAYER_DIR_DOWN  EQU 1 << PLAYER_DIR_BIT_DOWN
DEF PLAYER_DIR_UP    EQU 1 << PLAYER_DIR_BIT_UP

; sprite palettes
	const_def
	const PAL_OW_RED    ; 0
	const PAL_OW_BLUE   ; 1
	const PAL_OW_GREEN  ; 2
	const PAL_OW_BROWN  ; 3
	const PAL_OW_PINK   ; 4
	const PAL_OW_SILVER ; 5
	const PAL_OW_TREE   ; 6
	const PAL_OW_ROCK   ; 7

; object_events set bit 3 so as not to use the sprite's default palette
; MapObjectPals indexes (see gfx/overworld/npc_sprites.pal)
	const_def 1 << 3
	const PAL_NPC_RED    ; 8
	const PAL_NPC_BLUE   ; 9
	const PAL_NPC_GREEN  ; a
	const PAL_NPC_BROWN  ; b
	const PAL_NPC_PINK   ; c
	const PAL_NPC_SILVER ; d
	const PAL_NPC_TREE   ; e
	const PAL_NPC_ROCK   ; f

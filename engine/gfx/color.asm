INCLUDE "engine/gfx/sgb_layouts.asm"

DEF SHINY_ATK_MASK EQU %0010
DEF SHINY_DEF_DV EQU 10
DEF SHINY_SPD_DV EQU 10
DEF SHINY_SPC_DV EQU 10

CheckShininess:
; Check if a mon is shiny by DVs at bc.
; Return carry if shiny.

	ld l, c
	ld h, b

; Attack
	ld a, [hl]
	and SHINY_ATK_MASK << 4
	jr z, .not_shiny

; Defense
	ld a, [hli]
	and %1111
	cp SHINY_DEF_DV
	jr nz, .not_shiny

; Speed
	ld a, [hl]
	and %1111 << 4
	cp SHINY_SPD_DV << 4
	jr nz, .not_shiny

; Special
	ld a, [hl]
	and %1111
	cp SHINY_SPC_DV
	jr nz, .not_shiny

; shiny
	scf
	ret

.not_shiny
	and a
	ret

InitPartyMenuBlkPacket:
	ld hl, BlkPacket_PartyMenu
	ld de, wPartyMenuBlkPacket
	ld bc, $30
	jp CopyData

UpdatePartyMenuBlkPacket:
; Update the blk packet with the palette of the HP bar that is
; specified in [wWhichPartyMenuHPBar].
	ld hl, wPartyMenuHPBarColors
	ld a, [wWhichPartyMenuHPBar]
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	and a
	ld e, (1 << 2) | 1 ; green
	jr z, .next
	dec a
	ld e, (2 << 2) | 2 ; yellow
	jr z, .next
	ld e, (3 << 2) | 3 ; red
.next
	push de
	ld hl, wPartyMenuBlkPacket + 8 + 1
	ld bc, 6
	ld a, [wWhichPartyMenuHPBar]
	call AddNTimes
	pop de
	ld [hl], e
	ret

ApplyMonOrTrainerPals:
	call CheckCGB
	ret z
	ld a, e
	and a
	jr z, .get_trainer
	ld a, [wcf91]
	call GetMonPalettePointer
	jr .load_palettes

.get_trainer
	ld a, [wTrainerClass]
	call GetTrainerPalettePointer

.load_palettes
	ld de, wBGPals1
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret

ApplyHPBarPals:
	ld a, [wHPBarType]
	and a
	jr z, .Enemy
	cp $1
	jr z, .Player
	cp $2
	jr z, .PartyMenu
	ret

.Enemy:
	ld de, wBGPals2 palette PAL_BATTLE_BG_ENEMY_HP color 1
	jr .okay

.Player:
	ld de, wBGPals2 palette PAL_BATTLE_BG_PLAYER_HP color 1

.okay
	ld l, c
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	ld bc, 4
	call CopyData
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.PartyMenu:
	ld e, c
	inc e
	hlcoord 11, 3, wAttrmap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wWhichPokemon]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop

.done
	lb bc, 2, 8
	ld a, e
	call FillBoxCGB
	ret

LoadStatsScreenPals:
	call CheckCGB
	ret z
	ld hl, StatsScreenPals
	ld b, 0
	dec c
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wBGPals1 palette 0], a
	ld [wBGPals1 palette 2], a
	ld a, [hl]
	ld [wBGPals1 palette 0 + 1], a
	ld [wBGPals1 palette 2 + 1], a
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

INCLUDE "engine/gfx/cgb_layouts.asm"

CopyFourPalettes:
	ld de, wBGPals1
	ld c, 4

CopyPalettes:
.loop
	push bc
	ld a, [hli]
	push hl
	call GetPredefPal
	call LoadHLPaletteIntoDE
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, .loop
	ret

GetPredefPal:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, SuperPalettes
	add hl, bc
	ret

LoadHLPaletteIntoDE:
	ld c, 1 palettes
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

TitleScreenGetMonPalettePointer:
	ld de, wBGPals2
_TitleScreenGetMonPalettePointer:
	ld a, [wTitleMonSpecies]
	call _GetMonPalettePointer

LoadPalette_White_Col1_Col2_Black:
	ld a, LOW(PALRGB_WHITE)
	ld [de], a
	inc de
	ld a, HIGH(PALRGB_WHITE)
	ld [de], a
	inc de

	ld c, 2 * PAL_COLOR_SIZE
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop

	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de
	ret

FillBoxCGB:
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret

ResetBGPals:
	push af
	push bc
	push de
	push hl
	ld hl, wBGPals1
	ld c, 1 palettes
.loop
	ld a, $ff
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	dec c
	jr nz, .loop
	pop hl
	pop de
	pop bc
	pop af
	ret

WipeAttrmap:
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	call FillMemory
	ret

ApplyPals:
	ld hl, wBGPals1
	ld de, wBGPals2
	ld bc, 16 palettes
	call CopyData
	ret

ApplyAttrmap:
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr z, UpdateVBank1
	ldh a, [hAutoBGTransferEnabled]
	push af
	ld a, $2
	ldh [hAutoBGTransferEnabled], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	call DelayFrame
	pop af
	ldh [hAutoBGTransferEnabled], a
	ret

ApplyAttrmapToWindow:
	call IsCGB
	ret z
	
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jr z, UpdateVBank1
	ldh a, [hAutoBGTransferEnabled]
	push af
	ld a, $4
	ldh [hAutoBGTransferEnabled], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	call DelayFrame
	pop af
	ldh [hAutoBGTransferEnabled], a
	ret

UpdateVBank1:
	hlcoord 0, 0, wAttrmap
	debgcoord 0, 0
	ld b, SCREEN_HEIGHT
	ld a, $1
	ldh [rVBK], a
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	ld a, BG_MAP_WIDTH - SCREEN_WIDTH
	add e
	jr nc, .okay
	inc d
.okay
	ld e, a
	dec b
	jr nz, .row
	ld a, $0
	ldh [rVBK], a
	ret

; CGB layout for SCGB_PARTY_MENU_HP_BARS
CGB_ApplyPartyMenuHPPals:
	ld hl, wPartyMenuHPBarColors
	ld a, [wWhichPartyMenuHPBar]
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	ld a, [de]
	inc a
	ld e, a
	hlcoord 11, 2, wAttrmap
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wWhichPartyMenuHPBar]
.loop
	and a
	jr z, .done
	add hl, bc
	dec a
	jr .loop
.done
	lb bc, 2, 8
	ld a, e
	call FillBoxCGB
	ret

InitPartyMenuOBPals:
	ld hl, PartyMenuOBPals
	ld de, wOBPals1
	ld bc, 2 palettes
	call CopyData
	ret

GetBattlemonBackpicPalettePointer:
	push de
	farcall GetPartyMonDVs
	ld c, l
	ld b, h
	ld a, [wBattleMonSpecies]
	call GetPlayerOrMonPalettePointer
	pop de
	ret

GetEnemyFrontpicPalettePointer:
	push de
	farcall GetEnemyMonDVs
	ld c, l
	ld b, h
	ld a, [wEnemyMonSpecies2]
	call GetFrontpicPalettePointer
	pop de
	ret

GetPlayerOrMonPalettePointer:
	and a
	jp nz, GetMonNormalOrShinyPalettePointer
	ld a, [wPlayerGender]
	and a
	jr z, .male
	ld hl, LeafPalette
	ret
	
.male
	ld hl, PlayerPalette
	ret

GetFrontpicPalettePointer:
	and a
	jp nz, GetMonNormalOrShinyPalettePointer
	ld a, [wTrainerClass]

GetTrainerPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, TrainerPalettes
	add hl, bc
	ret

GetMonPalettePointer:
	call _GetMonPalettePointer
	ret

BattleObjectPals:
INCLUDE "gfx/battle_anims/battle_anims.pal"
	
_GetMonPalettePointer:
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PokemonPalettes
	add hl, bc
	ret

GetMonNormalOrShinyPalettePointer:
	push bc
	call _GetMonPalettePointer
	pop bc
	push hl
	call CheckShininess
	pop hl
	ret nc
rept 4
	inc hl
endr
	ret

SendSGBPacket:
	ld a, 1
	ldh [hDisableJoypadPolling], a ; don't poll joypad while sending packet
	call _SendSGBPacket
	xor a
	ldh [hDisableJoypadPolling], a
	ret

_SendSGBPacket:
;check number of packets
	ld a, [hl]
	and $07
	ret z
; store number of packets in B
	ld b, a
.loop2
; save B for later use
	push bc
; send RESET signal (P14=LOW, P15=LOW)
	xor a
	ldh [rJOYP], a
; set P14=HIGH, P15=HIGH
	ld a, $30
	ldh [rJOYP], a
;load length of packets (16 bytes)
	ld b, $10
.nextByte
;set bit counter (8 bits per byte)
	ld e, $08
; get next byte in the packet
	ld a, [hli]
	ld d, a
.nextBit0
	bit 0, d
; if 0th bit is not zero set P14=HIGH, P15=LOW (send bit 1)
	ld a, $10
	jr nz, .next0
; else (if 0th bit is zero) set P14=LOW, P15=HIGH (send bit 0)
	ld a, $20
.next0
	ldh [rJOYP], a
; must set P14=HIGH,P15=HIGH between each "pulse"
	ld a, $30
	ldh [rJOYP], a
; rotation will put next bit in 0th position (so  we can always use command
; "bit 0, d" to fetch the bit that has to be sent)
	rr d
; decrease bit counter so we know when we have sent all 8 bits of current byte
	dec e
	jr nz, .nextBit0
	dec b
	jr nz, .nextByte
; send bit 1 as a "stop bit" (end of parameter data)
	ld a, $20
	ldh [rJOYP], a
; set P14=HIGH,P15=HIGH
	ld a, $30
	ldh [rJOYP], a
; wait for about 70000 cycles
	call Wait7000
; restore (previously pushed) number of packets
	pop bc
	dec b
; return if there are no more packets
	ret z
; else send 16 more bytes
	jr .loop2

InitCGBPals::
	call CheckCGB
	ret z

; CGB only
	ld a, BANK(vChars3)
	ldh [rVBK], a
	ld hl, vChars3
	ld bc, $200 tiles
	xor a
	call FillMemory
	ld a, BANK(vChars0)
	ldh [rVBK], a
	ld a, 1 << rBGPI_AUTO_INCREMENT
	ldh [rBGPI], a
	ld c, 4 * 8
.bgpals_loop
	ld a, LOW(PALRGB_WHITE)
	ldh [rBGPD], a
	ld a, HIGH(PALRGB_WHITE)
	ldh [rBGPD], a
	dec c
	jr nz, .bgpals_loop
	ld a, 1 << rOBPI_AUTO_INCREMENT
	ldh [rOBPI], a
	ld c, 4 * 8
.obpals_loop
	ld a, LOW(PALRGB_WHITE)
	ldh [rOBPD], a
	ld a, HIGH(PALRGB_WHITE)
	ldh [rOBPD], a
	dec c
	jr nz, .obpals_loop
	ld hl, wBGPals1
	call .LoadWhitePals
	ld hl, wBGPals2
.LoadWhitePals:
	ld c, 4 * 16
.loop
	ld a, LOW(PALRGB_WHITE)
	ld [hli], a
	ld a, HIGH(PALRGB_WHITE)
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadSGB:
	xor a
	ld [wOnSGB], a
	call CheckSGB
	ret nc
	ld a, 1
	ld [wOnSGB], a
	ldh a, [hGBC]
	and a
	jr z, .notGBC
	ret
.notGBC
	di
	call PrepareSuperNintendoVRAMTransfer
	ei
	ld a, 1
	ld [wCopyingSGBTileData], a
	ld de, ChrTrnPacket
	ld hl, SGBBorderGraphics
	call CopyGfxToSuperNintendoVRAM
	xor a
	ld [wCopyingSGBTileData], a
	ld de, PctTrnPacket
	ld hl, BorderPalettes
	call CopyGfxToSuperNintendoVRAM
	xor a
	ld [wCopyingSGBTileData], a
	ld de, PalTrnPacket
	ld hl, SuperPalettes
	call CopyGfxToSuperNintendoVRAM
	call ClearVram
	ld hl, MaskEnCancelPacket
	jp SendSGBPacket

PrepareSuperNintendoVRAMTransfer:
	ld hl, .packetPointers
	ld c, 9
.loop
	push bc
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call SendSGBPacket
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, .loop
	ret

.packetPointers
; Only the first packet is needed.
	dw MaskEnFreezePacket
	dw DataSndPacket1
	dw DataSndPacket2
	dw DataSndPacket3
	dw DataSndPacket4
	dw DataSndPacket5
	dw DataSndPacket6
	dw DataSndPacket7
	dw DataSndPacket8
	
CheckSGB:
; Returns whether the game is running on an SGB in carry.
	ld hl, MltReq2Packet
	call SendSGBPacket
	call Wait7000
	ldh a, [rJOYP]
	and $3
	cp $3
	jr nz, .isSGB
	ld a, $20
	ldh [rJOYP], a
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	call Wait7000
	call Wait7000
	ld a, $30
	ldh [rJOYP], a
	call Wait7000
	call Wait7000
	ld a, $10
	ldh [rJOYP], a
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	call Wait7000
	call Wait7000
	ld a, $30
	ldh [rJOYP], a
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	ldh a, [rJOYP]
	call Wait7000
	call Wait7000
	ldh a, [rJOYP]
	and $3
	cp $3
	jr nz, .isSGB
	call SendMltReq1Packet
	and a
	ret
.isSGB
	call SendMltReq1Packet
	scf
	ret

SendMltReq1Packet:
	ld hl, MltReq1Packet
	call SendSGBPacket
	vc_hook Unknown_network_reset
	jp Wait7000

CopyGfxToSuperNintendoVRAM:
	di
	push de
	call DisableLCD
	ld a, $e4
	ldh [rBGP], a
	ld de, vChars1
	ld a, [wCopyingSGBTileData]
	and a
	jr z, .notCopyingTileData
	call CopySGBBorderTiles
	jr .next
.notCopyingTileData
	ld bc, $1000
	call CopyData
.next
	ld hl, vBGMap0
	ld de, $c
	ld a, $80
	ld c, $d
.loop
	ld b, $14
.innerLoop
	ld [hli], a
	inc a
	dec b
	jr nz, .innerLoop
	add hl, de
	dec c
	jr nz, .loop
	ld a, $e3
	ldh [rLCDC], a
	pop hl
	call SendSGBPacket
	xor a
	ldh [rBGP], a
	ei
	ret

Wait7000:
; Each loop takes 9 cycles so this routine actually waits 63000 cycles.
	ld de, 7000
.loop
	nop
	nop
	nop
	dec de
	ld a, d
	or e
	jr nz, .loop
	ret

SendSGBPackets:
	push de
	call SendSGBPacket
	pop hl
	jp SendSGBPacket

CopySGBBorderTiles:
; SGB tile data is stored in a 4BPP planar format.
; Each tile is 32 bytes. The first 16 bytes contain bit planes 1 and 2, while
; the second 16 bytes contain bit planes 3 and 4.
; This function converts 2BPP planar data into this format by mapping
; 2BPP colors 0-3 to 4BPP colors 0-3. 4BPP colors 4-15 are not used.
	ld b, 128
.tileLoop
; Copy bit planes 1 and 2 of the tile data.
	ld c, 16
.copyLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copyLoop

; Zero bit planes 3 and 4.
	ld c, 16
	xor a
.zeroLoop
	ld [de], a
	inc de
	dec c
	jr nz, .zeroLoop

	dec b
	jr nz, .tileLoop
	ret

INCLUDE "data/sgb/sgb_packets.asm"

INCLUDE "data/sgb/sgb_palettes.asm"

INCLUDE "data/sgb/sgb_border.asm"

HPBarPals:
INCLUDE "gfx/battle/hp_bar.pal"

ExpBarPalette:
INCLUDE "gfx/battle/exp_bar.pal"

INCLUDE "data/pokemon/palettes.asm"

INCLUDE "data/trainers/palettes.asm"

LoadMapPals:
	call LoadSpecialMapPalette
	jr c, .got_pals

	; Which palette group is based on whether we're outside or inside
	ld a, [wEnvironment]
	and 7
	ld e, a
	ld d, 0
	ld hl, EnvironmentColorsPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	; Futher refine by time of day
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	add a
	add a
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld e, l
	ld d, h
	ld hl, wBGPals1
	ld b, 8
.outer_loop
	ld a, [de] ; lookup index for TilesetBGPalette
	push de
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, TilesetBGPalette
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld c, 1 palettes
.inner_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .inner_loop
	pop de
	inc de
	dec b
	jr nz, .outer_loop
	
.got_pals	
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	ld bc, 8 palettes
	ld hl, MapObjectPals
	call AddNTimes
	ld de, wOBPals1
	ld bc, 8 palettes
	call CopyData

	ld a, [wEnvironment]
	cp TOWN
	jr z, .outside
	cp ROUTE
	ret nz
.outside
	ld a, [wMapGroup]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, RoofPals
	add hl, de
	ld a, [wTimeOfDayPal]
	maskbits NUM_DAYTIMES
	cp NITE_F
	jr c, .morn_day
rept 4
	inc hl
endr
.morn_day
	ld de, wBGPals1 palette PAL_BG_ROOF color 1
	ld bc, 4
	call CopyData
	ret

INCLUDE "data/maps/environment_colors.asm"

TilesetBGPalette:
INCLUDE "gfx/tilesets/bg_tiles.pal"

MapObjectPals::
INCLUDE "gfx/overworld/npc_sprites.pal"

RoofPals:
	table_width PAL_COLOR_SIZE * 2 * 2, RoofPals
INCLUDE "gfx/tilesets/roofs.pal"
	assert_table_length NUM_MAP_GROUPS + 1
	
DiplomaPalettes:
INCLUDE "gfx/surfing_pikachu/diploma.pal"

PartyMenuBGPals:
INCLUDE "gfx/icons/party_menu_bg.pal"

PartyMenuOBPals:
INCLUDE "gfx/icons/party_menu_ob.pal"

MaleTownMapPals:
INCLUDE "gfx/town_map/townmap.pal"

FemaleTownMapPals:
INCLUDE "gfx/town_map/townmap_f.pal"

GengarPals:
INCLUDE "gfx/intro/gengar.pal"

NidorinoPal:
INCLUDE "gfx/intro/nidorino.pal"

GameFreakLogoPals:
INCLUDE "gfx/splash/gamefreak_logo.pal"

GameFreakLogoObjPals:
INCLUDE "gfx/splash/gamefreak_logo_obj.pal"

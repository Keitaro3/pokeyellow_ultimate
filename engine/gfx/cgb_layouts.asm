; Replaces the functionality of sgb.asm to work with CGB hardware.

CheckCGB:
	ldh a, [hGBC]
	and a
	ret
	
LoadSGBLayoutCGB:
	call GetPredefRegisters
	ld a, b
	cp SET_PAL_DEFAULT
	jr nz, .not_default
	ld a, [wDefaultPaletteCommand]
.not_default
	cp SET_PAL_PARTY_MENU_HP_BARS
	jp z, CGB_ApplyPartyMenuHPPals
	call ResetBGPals
	ld l, a
	ld h, 0
	add hl, hl
	ld de, CGBLayoutJumptable
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	push de
	jp hl
.done:
	ret
	
CGBLayoutJumptable:
	table_width 2, CGBLayoutJumptable
	dw _CGB_BattleGrayscale
	dw _CGB_BattleColors
	dw _CGB_TownMapPals
	dw _CGB_StatsScreenHPPals
	dw _CGB_Diploma ; Pokedex
	dw _CGB_Diploma ; Slots
	dw _CGB_TitleScreen
	dw _CGB_NidorinoIntro
	dw _CGB_Diploma
	dw _CGB_MapPals
	dw _CGB_PartyMenu
	dw _CGB_Evolution
	dw _CGB_GameFreakIntro
	dw _CGB_Diploma ; Trainer Card
	dw _CGB_Diploma ; Pikachu Beach gameplay
	dw _CGB_Diploma ; Pikachu Beach title
	dw _CGB_Diploma ; Pokedex 2
	dw _CGB_Diploma ; Pokepic
	dw _CGB_PackPals
	dw _CGB_TradeTube
	dw _CGB_TrainerOrMonFrontpicPals
	dw _CGB_Diploma ; Gender Select
	assert_table_length NUM_SCGB_LAYOUTS
	
_CGB_BattleGrayscale:
	ld hl, BlackoutPal
	ld de, wBGPals1
	ld bc, 4 palettes
	call CopyData
	ld hl, BlackoutPal
	ld de, wBGPals1 palette PAL_BATTLE_BG_EXP
	ld bc, 4 palettes
	call CopyData
	ld hl, BlackoutPal
	ld de, wOBPals1
	ld bc, 2 palettes
	call CopyData
	jr _CGB_FinishBattleScreenLayout
	
BlackoutPal:
INCLUDE "gfx/font/blackout.pal"		
	
_CGB_BattleColors:
	ld de, wBGPals1
	call GetBattlemonBackpicPalettePointer
	push hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_PLAYER
	call GetEnemyFrontpicPalettePointer
	push hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_ENEMY
	ld a, [wEnemyHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_ENEMY_HP
	ld a, [wPlayerHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_PLAYER_HP
	ld hl, ExpBarPalette
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_EXP
	ld de, wOBPals1
	pop hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_OB_ENEMY
	pop hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_OB_PLAYER
	ld a, SET_PAL_BATTLE
	ld [wDefaultPaletteCommand], a
	call ApplyPals
_CGB_FinishBattleScreenLayout:
	ld hl, TilesetBGPalette palette PAL_BATTLE_BG_TEXT
	ld de, wBGPals1 palette PAL_BATTLE_BG_TEXT
	ld bc, 1 palettes
	call CopyData
	hlcoord 0, 0, wAttrmap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillMemory
	hlcoord 0, 4, wAttrmap
	lb bc, 8, 10
	ld a, PAL_BATTLE_BG_PLAYER
	call FillBoxCGB
	hlcoord 10, 0, wAttrmap
	lb bc, 7, 10
	ld a, PAL_BATTLE_BG_ENEMY
	call FillBoxCGB
	hlcoord 0, 0, wAttrmap
	lb bc, 4, 10
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillBoxCGB
	hlcoord 10, 7, wAttrmap
	lb bc, 5, 10
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxCGB
	hlcoord 10, 11, wAttrmap
	lb bc, 1, 9
	ld a, PAL_BATTLE_BG_EXP
	call FillBoxCGB
	hlcoord 0, 12, wAttrmap
	ld bc, 6 * SCREEN_WIDTH
	ld a, PAL_BATTLE_BG_TEXT
	call FillMemory
	ld hl, BattleObjectPals
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld bc, 6 palettes
	call CopyData
	call ApplyAttrmap
	ret	
	
_CGB_TownMapPals:
	ld a, [wPlayerGender]
	and a
	jr z, .male
	ld hl, FemaleTownMapPals
	jr .got_pals

.male
	ld hl, MaleTownMapPals
.got_pals
	ld de, wBGPals1
	ld bc, 6 palettes
	call CopyData
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret	
	
_CGB_StatsScreenHPPals:
	ld de, wBGPals1
	ld a, [wStatusScreenHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; hp palette
	ld a, [wcf91]
	ld bc, wLoadedMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black ; mon palette
	ld hl, ExpBarPalette
	call LoadPalette_White_Col1_Col2_Black ; exp palette
	call WipeAttrmap

	hlcoord 0, 0, wAttrmap
	lb bc, 8, SCREEN_WIDTH
	ld a, $1 ; mon palette
	call FillBoxCGB
	
	; temporarily
	hlcoord 11, 03, wAttrmap
	ld bc, 10
	xor a
	call FillMemory	

	hlcoord 10, 7, wAttrmap
	ld bc, 10
	ld a, $2 ; exp palette
	call FillMemory

	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

StatsScreenPals:
INCLUDE "gfx/font/stats.pal"	
	
_CGB_TitleScreen:
	ld de, wBGPals1
	call _TitleScreenGetMonPalettePointer

	ld hl, .TitleLogoPals
	ld de, wBGPals1 palette 1
	ld bc, 3 palettes
	call CopyData

	ld de, wOBPals1
	xor a
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	
	call WipeAttrmap
	
	; line 0 (copyright)
	
	;Logo
	hlcoord 2, 0, wAttrmap
	lb bc, 8, 16
	ld a, $1
	call FillBoxCGB 
	
	;Version
	hlcoord 7, 8, wAttrmap
	ld bc, $d
	ld a, $2
	call FillMemory 
	
	;Pokemon sprites
	hlcoord 0, 10, wAttrmap
	lb bc, 6, SCREEN_WIDTH
	xor a
	call FillBoxCGB 
	
	;Copyright
	hlcoord 2, 17, wAttrmap
	ld bc, $10
	ld a, $3
	call FillMemory 
	
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ld [hCGBPalUpdate], a
	ret
	
.TitleLogoPals:
INCLUDE "gfx/title/title_logo.pal"
	
_CGB_NidorinoIntro:
	ld hl, GengarPals
	ld de, wBGPals1
	ld bc, 2 palettes
	call CopyData
	ld hl, NidorinoPal
	ld de, wOBPals1
	call LoadHLPaletteIntoDE
	
	call WipeAttrmap
	call ApplyAttrmap
	ret	
	
_CGB_Diploma:
	ld hl, DiplomaPalettes
	ld de, wBGPals1
	ld bc, 16 palettes
	call CopyData

	call WipeAttrmap
	call ApplyAttrmap
	ret
	
_CGB_MapPals:
	call LoadMapPals
	ld a, SET_PAL_OVERWORLD
	ld [wDefaultPaletteCommand], a
	ret	
	
_CGB_PartyMenu:
	ld hl, PartyMenuBGPals
	ld de, wBGPals1
	ld bc, 4 palettes
	call CopyData
	call InitPartyMenuOBPals
	call ApplyAttrmap
	ret

_CGB_Evolution:
	ld de, wBGPals1
	ld a, c
	and a
	jr z, .pokemon
	ld hl, BlackoutPal
	ld bc, 1 palettes
	call CopyData
	jr .got_palette

.pokemon
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wWhichPokemon]
	call AddNTimes
	ld c, l
	ld b, h
	ld a, [wWholeScreenPaletteMonSpecies]
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld hl, BattleObjectPals
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld bc, 6 palettes
	call CopyData

.got_palette
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret	
	
_CGB_GameFreakIntro:
	ld hl, GameFreakLogoPals
	ld de, wBGPals1
	ld bc, 4 palettes
	call CopyData
	
	ld hl, GameFreakLogoObjPals
	ld de, wOBPals1
	ld bc, 8 palettes
	call CopyData

	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret
	
_CGB_PackPals:
	ld a, [wBattleType]
	cp BATTLE_TYPE_OLD_MAN
	jr z, .tutorial_male

	ld a, [wPlayerGender]
    and a
    jr z, .tutorial_male

	ld hl, .LeafPackPals
	jr .got_gender

.tutorial_male
	ld hl, .RedPackPals

.got_gender
	ld de, wBGPals1
	ld bc, 8 palettes ; 6 palettes?
	call CopyData
	call WipeAttrmap
	hlcoord 0, 0, wAttrmap
	lb bc, 1, 10
	ld a, $1
	call FillBoxCGB
	hlcoord 10, 0, wAttrmap
	lb bc, 1, 10
	ld a, $2
	call FillBoxCGB
	hlcoord 7, 2, wAttrmap
	lb bc, 9, 1
	ld a, $3
	call FillBoxCGB
	hlcoord 0, 7, wAttrmap
	lb bc, 3, 5
	ld a, $4
	call FillBoxCGB
	hlcoord 0, 3, wAttrmap
	lb bc, 3, 5
	ld a, $5
	call FillBoxCGB
	call ApplyAttrmap
	call ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

.RedPackPals:
INCLUDE "gfx/pack/pack.pal"

.LeafPackPals:
INCLUDE "gfx/pack/pack_f.pal"
	
_CGB_TradeTube:
	ld hl, .TradeTubePals
	ld de, wBGPals1
	ld bc, 4 palettes
	call CopyData
	ld hl, PartyMenuOBPals
	ld de, wOBPals1
	ld bc, 1 palettes
	call CopyData
	ld hl, .TradeTubePals
	ld de, wOBPals1 palette 7
	ld bc, 1 palettes
	call CopyData
	call WipeAttrmap
	ret	
	
.TradeTubePals:
INCLUDE "gfx/trade/tradetube.pal"	
	
_CGB_TrainerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wcf91]
	ld bc, wLoadedMonDVs
	call GetFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrmap
	call ApplyAttrmap
	call ApplyPals
	ret	


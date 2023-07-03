_RunPaletteCommand:
	call CheckCGB
	jp nz, LoadSGBLayoutCGB

	call GetPredefRegisters
	ld a, b
	cp SET_PAL_DEFAULT
	jr nz, .not_default
	ld a, [wDefaultPaletteCommand]
.not_default
	cp SET_PAL_PARTY_MENU_HP_BARS
	jp z, UpdatePartyMenuBlkPacket
	ld l, a
	ld h, 0
	add hl, hl
	ld de, SetPalFunctions
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, SendSGBPackets
	push de
	jp hl

SetPal_BattleBlack:
	ld hl, PalPacket_Black
	ld de, BlkPacket_Battle
	ret

; uses PalPacket_Empty to build a packet based on mon IDs and health color
SetPal_Battle:
	ld hl, BlkPacket_Battle
	call SendSGBPacket
	
	ld hl, PalPacket_Battle
	ld de, wPalPacket
	ld bc, PALPACKET_LENGTH
	call CopyData
	
	ld a, [wPlayerHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, HPBarPalsSGB
	add hl, de

	ld a, [hli]
	ld [wPalPacket + 3], a
	ld a, [hli]
	ld [wPalPacket + 4], a
	ld a, [hli]
	ld [wPalPacket + 5], a
	ld a, [hl]
	ld [wPalPacket + 6], a

	ld a, [wEnemyHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl

	ld de, HPBarPalsSGB
	add hl, de
	ld a, [hli]
	ld [wPalPacket + 9], a
	ld a, [hli]
	ld [wPalPacket + 10], a
	ld a, [hli]
	ld [wPalPacket + 11], a
	ld a, [hl]
	ld [wPalPacket + 12], a

	ld hl, PalPacket_Battle2
	ld de, wPalPacket + PALPACKET_LENGTH
	ld bc, PALPACKET_LENGTH
	call CopyData	

	call GetBattlemonBackpicPalettePointer

	ld a, [hli]
	ld [wPalPacket + 19], a
	ld a, [hli]
	ld [wPalPacket + 20], a
	ld a, [hli]
	ld [wPalPacket + 21], a
	ld a, [hl]
	ld [wPalPacket + 22], a
	call GetEnemyFrontpicPalettePointer
	ld a, [hli]
	ld [wPalPacket + 25], a
	ld a, [hli]
	ld [wPalPacket + 26], a
	ld a, [hli]
	ld [wPalPacket + 27], a
	ld a, [hl]
	ld [wPalPacket + 28], a

	ld hl, wPalPacket
	ld de, wPalPacket + PALPACKET_LENGTH
	ld a, SET_PAL_BATTLE
	ld [wDefaultPaletteCommand], a
	ret

SetPal_TownMap:
	ld hl, PalPacket_TownMap
	ld de, BlkPacket_WholeScreen
	ret

SetPal_StatusScreen:
	ld hl, PalPacket_Battle
	ld de, wPalPacket
	ld bc, $10
	call CopyData
	ld a, [wStatusScreenHPBarColor]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, HPBarPalsSGB
	add hl, de
	ld a, [hli]
	ld [wPalPacket + 3], a
	ld a, [hli]
	ld [wPalPacket + 4], a
	ld a, [hli]
	ld [wPalPacket + 5], a
	ld a, [hl]
	ld [wPalPacket + 6], a
	ld a, [wcf91] ; wCurPartySpecies
	ld bc, wLoadedMonDVs
	call GetPlayerOrMonPalettePointer
	ld a, [hli]
	ld [wPalPacket + 9], a
	ld a, [hli]
	ld [wPalPacket + 10], a
	ld a, [hli]
	ld [wPalPacket + 11], a
	ld a, [hl]
	ld [wPalPacket + 12], a
	ld hl, wPalPacket
	ld de, BlkPacket_StatusScreen
	ret

SetPal_PartyMenu:
	ld hl, PalPacket_PartyMenu
	ld de, wPartyMenuBlkPacket
	ret

SetPal_Pokedex:
	ld hl, PalPacket_Battle
	ld de, wPalPacket
	ld bc, $10
	call CopyData
	ld hl, wPalPacket + 3
	ld [hl], $9f
	inc hl
	ld [hl], $2a
	inc hl
	ld [hl], $5a
	inc hl
	ld [hl], $19
	ld a, [wcf91]
	call GetMonPalettePointer
	ld a, [hli]
	ld [wPalPacket + 9], a
	ld a, [hli]
	ld [wPalPacket + 10], a
	ld a, [hli]
	ld [wPalPacket + 11], a
	ld a, [hl]
	ld [wPalPacket + 12], a
	ld hl, wPalPacket
	ld de, BlkPacket_Pokedex
	ret

SetPal_Slots:
	ld hl, PalPacket_Slots
	ld de, BlkPacket_Slots
	ret

SetPal_TitleScreen:
	ld hl, PalPacket_Titlescreen
	ld de, BlkPacket_Titlescreen
	ret

; used mostly for menus and the Oak intro
SetPal_Generic:
	ld hl, PalPacket_Generic
	ld de, BlkPacket_WholeScreen
	ret

SetPal_NidorinoIntro:
	ld hl, PalPacket_NidorinoIntro
	ld de, BlkPacket_NidorinoIntro
	ret

SetPal_GameFreakIntro:
	ld hl, PalPacket_GameFreakIntro
	ld de, BlkPacket_GameFreakIntro
	ld a, SET_PAL_GENERIC
	ld [wDefaultPaletteCommand], a
	ret

; uses PalPacket_Empty to build a packet based on the current map
SetPal_Overworld:
	ld hl, PalPacket_Empty
	ld de, wPalPacket
	ld bc, $10
	call CopyData
	ld a, [wCurMapTileset]
	cp CEMETERY
	jr z, .PokemonTowerOrAgatha
	cp CAVERN
	jr z, .caveOrBruno
	ld a, [wCurMap]
	cp FIRST_INDOOR_MAP
	jr c, .townOrRoute
	cp CERULEAN_CAVE_2F
	jr c, .normalDungeonOrBuilding
	cp CERULEAN_CAVE_1F + 1
	jr c, .caveOrBruno
	cp LORELEIS_ROOM
	jr z, .Lorelei
	cp BRUNOS_ROOM
	jr z, .caveOrBruno
	cp TRADE_CENTER
	jr z, .trade_center_colosseum
	cp COLOSSEUM
	jr z, .trade_center_colosseum
.normalDungeonOrBuilding
	ld a, [wLastMap] ; town or route that current dungeon or building is located
.townOrRoute
	cp NUM_CITY_MAPS
	jr c, .town
	ld a, PAL_ROUTE - 1
.town
	inc a ; a town's palette ID is its map ID + 1
	ld hl, wPalPacket + 1
	ld [hld], a
	ld de, BlkPacket_WholeScreen
	ld a, SET_PAL_OVERWORLD
	ld [wDefaultPaletteCommand], a
	ret
.PokemonTowerOrAgatha
	ld a, PAL_GREYMON - 1
	jr .town
.caveOrBruno
	ld a, PAL_CAVE - 1
	jr .town
.Lorelei
	xor a
	jr .town
.trade_center_colosseum
	ld a, PAL_GREYMON - 1
	jr .town

; used when a Pokemon is the only thing on the screen
; such as evolution, trading and the Hall of Fame
SetPal_PokemonWholeScreen:
	push bc
	ld hl, PalPacket_Battle
	ld de, wPalPacket
	ld bc, $10
	call CopyData
	pop bc
	ld a, c
	and a
	jr z, .partymon
	; Egg
	ld hl, wPalPacket + 3
	ld [hl], LOW(palred 7 + palgreen 7 + palblue 7)
	inc hl
	ld [hl], HIGH(palred 7 + palgreen 7 + palblue 7)
	inc hl
	ld [hl], LOW(palred 2 + palgreen 3 + palblue 3)
	inc hl
	ld [hl], HIGH(palred 2 + palgreen 3 + palblue 3)
	jr .done

.partymon
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wWhichPokemon]
	call AddNTimes
	ld c, l
	ld b, h
	ld a, [wWholeScreenPaletteMonSpecies]
	call GetPlayerOrMonPalettePointer
	ld a, [hli]
	ld [wPalPacket + 3], a
	ld a, [hli]
	ld [wPalPacket + 4], a
	ld a, [hli]
	ld [wPalPacket + 5], a
	ld a, [hl]
	ld [wPalPacket + 6], a

.done
	ld hl, wPalPacket
	ld de, BlkPacket_WholeScreen
	ret

SendUnknownPalPacket_7205d::
	ld hl, UnknownPalPacket_72811
	ld de, BlkPacket_WholeScreen
	ret

SendUnknownPalPacket_72064::
	ld hl, UnknownPalPacket_72821
	ld de, UnknownPacket_72751
	ret
	
SetPal_Pokedex2:
	ld hl, PalPacket_Pokedex
	ld de, BlkPacket_WholeScreen
	ret
	
SetPal_Pokepic:
	ld a, [wPalPacket + 1]
	ld [wBGPals1], a
	
	ld hl, PalPacket_Pokepic
	ld de, wPalPacket
	ld bc, PALPACKET_LENGTH
	call CopyData
	ld hl, BlkPacket_WholeScreen
	ld de, wPalPacket + PALPACKET_LENGTH
	ld bc, PALPACKET_LENGTH
	call CopyData
	ld a, [wBGPals1]
	ld hl, wPalPacket + 1
	ld [hl], a
	ld hl, wPalPacket + 3
	ld [hl], PAL_SHINY_GREYMON
	ld hl, wPalPacket + $13
	ld a, 5
	ld [hli], a
	ld a, $06  ; left coord
	ld [hli], a
	ld a, $04 ; top coord 
	ld [hli], a
	ld a, $0e ; right coord
	ld [hli], a
	ld a, $0d ; bottom coord
	ld [hl], a
	ld hl, wPalPacket
	ld de, wPalPacket + PALPACKET_LENGTH
	ret
	
SetPal_PackPals:
	ld hl, PalPacket_Pack
	ld de, BlkPacket_WholeScreen
	ret	
	
SetPal_TradeTube:
	ld hl, PalPacket_TradeTube
	ld de, BlkPacket_WholeScreen
	ret
	
SetPal_TrainerOrMonFrontpic:
	ld hl, PalPacket_Battle
	ld de, wPalPacket
	ld bc, PALPACKET_LENGTH
	call CopyData
	ld a, [wcf91] ; wCurPartySpecies
	ld bc, wLoadedMonDVs
	call GetFrontpicPalettePointer
	ld a, [hli]
	ld [wPalPacket + 3], a
	ld a, [hli]
	ld [wPalPacket + 4], a
	ld a, [hli]
	ld [wPalPacket + 5], a
	ld a, [hl]
	ld [wPalPacket + 6], a
	ld hl, wPalPacket
	ld de, BlkPacket_WholeScreen
	ret
	
SetPal_GenderSelect:
	ld hl, PalPacket_GenderSelect
	ld de, BlkPacket_WholeScreen
	ret	

SetPalFunctions:
; entries correspond to SET_PAL_* constants
	table_width 2, SetPalFunctions
	dw SetPal_BattleBlack
	dw SetPal_Battle
	dw SetPal_TownMap
	dw SetPal_StatusScreen
	dw SetPal_Pokedex
	dw SetPal_Slots
	dw SetPal_TitleScreen
	dw SetPal_NidorinoIntro
	dw SetPal_Generic
	dw SetPal_Overworld
	dw SetPal_PartyMenu
	dw SetPal_PokemonWholeScreen
	dw SetPal_GameFreakIntro
	dw SetPal_Generic ; Trainer Card
	dw SendUnknownPalPacket_7205d ; Pikachu Beach gameplay
	dw SendUnknownPalPacket_72064 ; Pikachu Beach title
	dw SetPal_Pokedex2
	dw SetPal_Pokepic
	dw SetPal_PackPals
	dw SetPal_TradeTube
	dw SetPal_TrainerOrMonFrontpic
	dw SetPal_GenderSelect
	assert_table_length NUM_SCGB_LAYOUTS

DeterminePaletteID:
	ld a, [hl]
DeterminePaletteIDOutOfBattle:
	ld [wd11e], a
	and a ; is the mon index 0?
	jr z, .skipDexNumConversion
	push bc
	predef IndexToPokedex
	pop bc
	ld a, [wd11e]
.skipDexNumConversion
	ld e, a
	ld d, 0
	;ld hl, MonsterPalettes ; not just for Pokemon, Trainers use it too
	add hl, de
	ld a, [hl]
	ret

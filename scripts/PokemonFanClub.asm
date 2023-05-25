PokemonFanClub_Script:
	jp EnableAutoTextBoxDrawing

PokemonFanClub_TextPointers:
	dw FanClubText1
	dw FanClubText2
	dw FanClubText3
	dw FanClubText4
	dw FanClubText5
	dw FanClubText6

FanClubText1:
; pikachu fan
	text_asm
	CheckEventHL EVENT_152
	jr z, .asm_59aaf
	ld hl, .yellowtext
	call PrintText
	jr .done

.asm_59aaf
	CheckEventReuseHL EVENT_PIKACHU_FAN_BOAST
	jr nz, .mineisbetter
	SetEventReuseHL EVENT_SEEL_FAN_BOAST
	ld hl, .normaltext
	call PrintText
	jr .done

.mineisbetter
	ResetEventReuseHL EVENT_PIKACHU_FAN_BOAST
	ld hl, .bettertext
	call PrintText
.done
	jp TextScriptEnd

.normaltext
	text_far PikachuFanText
	text_end

.bettertext
	text_far PikachuFanBetterText
	text_end

.yellowtext
	text_far PikachuFanPrintText
	text_end

FanClubText2:
; seel fan
	text_asm
	CheckEventHL EVENT_152
	jr z, .asm_59ae7
	ld hl, .yellowtext
	call PrintText
	jr .done
.asm_59ae7
	CheckEventReuseHL EVENT_SEEL_FAN_BOAST
	jr nz, .mineisbetter
	SetEventReuseHL EVENT_PIKACHU_FAN_BOAST
	ld hl, .normaltext
	call PrintText
	jr .done
.mineisbetter
	ResetEventReuseHL EVENT_SEEL_FAN_BOAST
	ld hl, .bettertext
	call PrintText
.done
	jp TextScriptEnd

.normaltext
	text_far SeelFanText
	text_end

.bettertext
	text_far SeelFanBetterText
	text_end

.yellowtext
	text_far SeelFanPrintText
	text_end

FanClubText3:
; pikachu
	text_asm
	ld hl, .text
	call PrintText
	ld a, PIKACHU
	call PlayMonCry
	call WaitSFX
	jp TextScriptEnd

.text
	text_far FanClubPikachuText
	text_end

FanClubText4:
; seel
	text_asm
	ld hl, .text
	call PrintText
	ld a, SEEL
	call PlayCry
	call PlayMonCry
	jp TextScriptEnd

.text
	text_far FanClubSeelText
	text_end

FanClubText5:
; chair
	text_asm
	CheckEventHL EVENT_152
	jr z, .check_bike_voucher
	ld hl, Text_59c1f
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr z, .select_mon_to_print
	ld hl, Text_59c24
	jr .gbpals_print_text

.check_bike_voucher
	CheckEvent EVENT_GOT_BIKE_VOUCHER
	jr nz, .nothingleft
	ld hl, .meetchairtext
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .nothanks

	; tell the story
	ld hl, .storytext
	call PrintText
	lb bc, BIKE_VOUCHER, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .receivedvouchertext
	call PrintText
	SetEvent EVENT_GOT_BIKE_VOUCHER
	jp TextScriptEnd
.bag_full
	ld hl, .bagfulltext
	jr .gbpals_print_text
.nothanks
	ld hl, .nostorytext
	jr .gbpals_print_text
.nothingleft
	ld hl, .finaltext
.gbpals_print_text
	push hl
	call LoadGBPal
	pop hl
	call PrintText
	jp TextScriptEnd

.select_mon_to_print
	call GBPalWhiteOutWithDelay3
	call LoadCurrentMapView
	call SaveScreenTilesToBuffer2
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	ld a, $00
	ld [wTempTilesetNumTiles], a
	call DisplayPartyMenu
	jp nc, .print
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	ld hl, Text_59c24
	jr .gbpals_print_text

.print
	xor a
	ld [wUpdateSpritesEnabled], a
	ld hl, wd730
	set 6, [hl]
	callfar PrintFanClubPortrait
	ld hl, wd730
	res 6, [hl]
	call GBPalWhiteOutWithDelay3
	call ReloadTilesetTilePatterns
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadScreenTilesFromBuffer2
	call Delay3
	call GBPalNormal
	ld hl, Text_59c2e
	ldh a, [hOaksAideResult]
	and a
	jr nz, .gbpals_print_text
	ld hl, Text_59c29
	jr .gbpals_print_text

.meetchairtext
	text_far FanClubMeetChairText
	text_end

.storytext
	text_far FanClubChairStoryText
	text_end

.receivedvouchertext
	text_far ReceivedBikeVoucherText
	sound_get_key_item
	text_far ExplainBikeVoucherText
	text_end

.nostorytext
	text_far FanClubNoStoryText
	text_end

.finaltext
	text_far FanClubChairFinalText
	text_end

.bagfulltext
	text_far FanClubBagFullText
	text_end

Text_59c1f:
	text_far FanClubChairPrintText1
	text_end

Text_59c24:
	text_far FanClubChairPrintText2
	text_end

Text_59c29:
	text_far FanClubChairPrintText3
	text_end

Text_59c2e:
	text_far FanClubChairPrintText4
	text_end

FanClubText6:
	text_far _FanClubText6
	text_end

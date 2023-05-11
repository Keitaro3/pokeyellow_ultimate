LoadSAV:
;(if carry -> write
;"the file data is destroyed")
	call ClearScreen
	call LoadFontTilePatterns
	call LoadTextBoxTilePatterns
	call LoadSAV0
	jr c, .badsum
	call LoadSAV1
	jr c, .badsum
	call LoadSAV2
	jr c, .badsum
	ld a, $2 ; good checksum
	jr .goodsum
.badsum
	ld hl, wd730
	push hl
	set 6, [hl]
	ld hl, FileDataDestroyedText
	call PrintText
	ld c, 100
	call DelayFrames
	pop hl
	res 6, [hl]
	ld a, $1 ; bad checksum
.goodsum
	ld [wSaveFileStatus], a
	ret

FileDataDestroyedText:
	text_far _FileDataDestroyedText
	text_end

LoadSAV0:
	call EnableSRAMAndLatchClockData
	ld a, $1
	ld [MBC1SRamBank], a
; This vc_hook does not have to be in any particular location.
; It is defined here because it refers to the same labels as the two lines below.
	vc_hook Unknown_save_limit
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld c, a
	ld a, [sMainDataCheckSum]
	cp c
	jp z, .checkSumsMatched

; If the computed checksum didn't match the saved on, try again.
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld c, a
	ld a, [sMainDataCheckSum]
	cp c
	jp nz, SAVBadCheckSum

.checkSumsMatched
	ld hl, sPlayerName
	ld de, wPlayerName
	ld bc, NAME_LENGTH
	call CopyData
	ld hl, sMainData
	ld de, wMainDataStart
	ld bc, wMainDataEnd - wMainDataStart
	call CopyData
	ld hl, wCurMapTileset
	set 7, [hl]
	ld hl, sSpriteData
	ld de, wSpriteDataStart
	ld bc, wSpriteDataEnd - wSpriteDataStart
	call CopyData
	ld a, [sTileAnimations]
	ldh [hTileAnimations], a
	
	call DisableSRAMAndPrepareClockData
	call LoadBox
	and a
	ret ; SAVGoodChecksum

LoadSAV1:
	call EnableSRAMAndLatchClockData
	ld a, $1
	ld [MBC1SRamBank], a
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld c, a
	ld a, [sMainDataCheckSum]
	cp c
	jr nz, SAVBadCheckSum
	call DisableSRAMAndPrepareClockData
	call LoadBox
	and a
	ret ; SAVGoodChecksum

LoadSAV2:
	call EnableSRAMAndLatchClockData
	ld a, $1
	ld [MBC1SRamBank], a
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld c, a
	ld a, [sMainDataCheckSum]
	cp c
	jp nz, SAVBadCheckSum
	ld hl, sPartyData
	ld de, wPartyDataStart
	ld bc, wPartyDataEnd - wPartyDataStart
	call CopyData
	ld hl, sMainData
	ld de, wPokedexOwned
	ld bc, wPokedexSeenEnd - wPokedexOwned
	call CopyData
	and a
	jp SAVGoodChecksum

SAVBadCheckSum:
	scf

SAVGoodChecksum:
	call DisableSRAMAndPrepareClockData
	ret

LoadSAVIgnoreBadCheckSum:
; unused function that loads save data and ignores bad checksums
	call LoadSAV0
	call LoadSAV1
	jp LoadSAV2

SaveSAV:
	farcall PrintSaveScreenText
	ld c, 10
	call DelayFrames
	ld hl, WouldYouLikeToSaveText
	call SaveSAVConfirm
	and a   ;|0 = Yes|1 = No|
	ret nz
	ld c, 10
	call DelayFrames
	ld a, [wSaveFileStatus]
	cp $1
	jr z, .save
	call SAVCheckRandomID
	jr z, .save
	ld hl, OlderFileWillBeErasedText
	call SaveSAVConfirm
	and a
	ret nz
.save
	call SaveSAVtoSRAM
	ld hl, SavingText
	call PrintText
	ld c, 128
	call DelayFrames
	ld hl, GameSavedText
	call PrintText
	ld c, 10
	call DelayFrames
	ld a, SFX_SAVE
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	ld c, 30
	call DelayFrames
	ret

SaveSAVConfirm:
	call PrintText
	hlcoord 0, 7
	lb bc, 8, 1
	ld a, TWO_OPTION_MENU
	ld [wTextBoxID], a
	call DisplayTextBoxID ; yes/no menu
	ld a, [wCurrentMenuItem]
	ret

WouldYouLikeToSaveText:
	text_far _WouldYouLikeToSaveText
	text_end

SavingText:
	text_far _SavingText
	text_end

GameSavedText:
	text_far _GameSavedText
	text_end

OlderFileWillBeErasedText:
	text_far _OlderFileWillBeErasedText
	text_end

SaveSAVtoSRAM0:
	call EnableSRAMAndLatchClockData
	ld a, $1
	ld [MBC1SRamBank], a
	ld hl, wPlayerName
	ld de, sPlayerName
	ld bc, NAME_LENGTH
	call CopyData
	ld hl, wMainDataStart
	ld de, sMainData
	ld bc, wMainDataEnd - wMainDataStart
	call CopyData
	ld hl, wSpriteDataStart
	ld de, sSpriteData
	ld bc, wSpriteDataEnd - wSpriteDataStart
	call CopyData
	call DisableSRAMAndPrepareClockData
	
	call SaveBox
	
	call EnableSRAMAndLatchClockData
	ldh a, [hTileAnimations]
	ld [sTileAnimations], a
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld [sMainDataCheckSum], a
	call DisableSRAMAndPrepareClockData
	ret

SaveSAVtoSRAM1:
; stored pokémon
	call SaveBox
	call EnableSRAMAndLatchClockData
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld [sMainDataCheckSum], a
	call DisableSRAMAndPrepareClockData
	ret

SaveSAVtoSRAM2:
	call EnableSRAMAndLatchClockData
	ld a, $1
	ld [MBC1SRamBank], a
	ld hl, wPartyDataStart
	ld de, sPartyData
	ld bc, wPartyDataEnd - wPartyDataStart
	call CopyData
	ld hl, wPokedexOwned ; pokédex only
	ld de, sMainData
	ld bc, wPokedexSeenEnd - wPokedexOwned
	call CopyData
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld [sMainDataCheckSum], a
	call DisableSRAMAndPrepareClockData
	ret

SaveSAVtoSRAM::
	ld a, $2
	ld [wSaveFileStatus], a
	call SaveSAVtoSRAM0
	call SaveSAVtoSRAM1
	jp SaveSAVtoSRAM2

SAVCheckSum:
;Check Sum (result[1 byte] is complemented)
	ld d, 0
.loop
	ld a, [hli]
	add d
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ld a, d
	cpl
	ret

CalcIndividualBoxCheckSums:
	ld hl, sBox1 ; sBox7
	ld de, sBank2IndividualBoxChecksums ; sBank3IndividualBoxChecksums
	ld b, NUM_BOXES / 2
.loop
	push bc
	push de
	ld bc, wBoxDataEnd - wBoxDataStart
	call SAVCheckSum
	pop de
	ld [de], a
	inc de
	pop bc
	dec b
	jr nz, .loop
	ret

GetBoxSRAMLocation:	
	ld a, [wCurrentBoxNum]
	and $7f
	cp NUM_BOXES
	jr c, .ok
	xor a
	ld [wCurrentBoxNum], a

.ok
	ld e, a
	ld d, 0
	ld hl, BoxSRAMPointerTable
rept 5
	add hl, de
endr
	ld a, [hli]
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	ret
	
BoxSRAMPointerTable:
; dbww bank, address, address
	dbww BANK(sBox1),  sBox1,  sBox2 ; sBox1End
	dbww BANK(sBox2),  sBox2,  sBox3 ; sBox2End
	dbww BANK(sBox3),  sBox3,  sBox4 ; sBox3End
	dbww BANK(sBox4),  sBox4,  sBox5 ; sBox4End
	dbww BANK(sBox5),  sBox5,  sBox6 ; sBox5End
	dbww BANK(sBox6),  sBox6,  sBoxesEnd1 ; sBox6End
	dbww BANK(sBox7),  sBox7,  sBox8  ;sBox7End
	dbww BANK(sBox8),  sBox8,  sBox9  ;sBox8End
	dbww BANK(sBox9),  sBox9,  sBox10 ;sBox9End
	dbww BANK(sBox10), sBox10, sBox11 ;sBox10End
	dbww BANK(sBox11), sBox11, sBox12 ;sBox11End
	dbww BANK(sBox12), sBox12, sBoxesEnd2 ; sBox12End

ChangeBox::
	ld hl, WhenYouChangeBoxText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ret nz ; return if No was chosen
	ld hl, wCurrentBoxNum
	bit 7, [hl] ; is it the first time player is changing the box?
	call z, EmptyAllSRAMBoxes ; if so, empty all boxes in SRAM
	call DisplayChangeBoxMenu
	call UpdateSprites
	ld hl, hUILayoutFlags
	set 1, [hl]
	call HandleMenuInput
	ld hl, hUILayoutFlags
	res 1, [hl]
	bit 1, a ; pressed b
	ret nz
	ld a, $b6
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish	
	
	call SaveBox    ; Copy sCurBoxData to box
	ld a, [wCurrentMenuItem]
	set 7, a
	ld [wCurrentBoxNum], a
	call LoadBox
	xor a
	ld hl, wMapTextPtr
	ld de, wChangeBoxSavedMapTextPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	call RestoreMapTextPointer
	call SaveSAVtoSRAM
	ld hl, wChangeBoxSavedMapTextPointer
	call SetMapTextPointer
	ret

WhenYouChangeBoxText:
	text_far _WhenYouChangeBoxText
	text_end

DisplayChangeBoxMenu:
	xor a
	ldh [hAutoBGTransferEnabled], a
	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, 11
	ld [wMaxMenuItem], a
	ld a, 1
	ld [wTopMenuItemY], a
	ld a, 12
	ld [wTopMenuItemX], a
	xor a
	ld [wMenuWatchMovingOutOfBounds], a
	ld a, [wCurrentBoxNum]
	and $7f
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	hlcoord 0, 0
	lb bc, 2, 9
	call TextBoxBorder
	ld hl, ChooseABoxText
	call PrintText
	hlcoord 11, 0
	lb bc, 12, 7
	call TextBoxBorder
	ld hl, hUILayoutFlags
	set 2, [hl]
	ld de, BoxNames
	hlcoord 13, 1
	call PlaceString
	ld hl, hUILayoutFlags
	res 2, [hl]
	ld a, [wCurrentBoxNum]
	and $7f
	cp 9
	jr c, .singleDigitBoxNum
	sub 9
	hlcoord 8, 2
	ld [hl], "1"
	add "0"
	jr .next
.singleDigitBoxNum
	add "1"
.next
	ldcoord_a 9, 2
	hlcoord 1, 2
	ld de, BoxNoText
	call PlaceString
	call GetMonCountsForAllBoxes
	hlcoord 18, 1
	ld de, wBoxMonCounts
	ld bc, SCREEN_WIDTH
	ld a, $c
.loop
	push af
	ld a, [de]
	and a ; is the box empty?
	jr z, .skipPlacingPokeball
	ld [hl], $78 ; place pokeball tile next to box name if box not empty
.skipPlacingPokeball
	add hl, bc
	inc de
	pop af
	dec a
	jr nz, .loop
	ld a, 1
	ldh [hAutoBGTransferEnabled], a
	ret

ChooseABoxText:
	text_far _ChooseABoxText
	text_end

BoxNames:
	db   "BOX 1"
	next "BOX 2"
	next "BOX 3"
	next "BOX 4"
	next "BOX 5"
	next "BOX 6"
	next "BOX 7"
	next "BOX 8"
	next "BOX 9"
	next "BOX10"
	next "BOX11"
	next "BOX12@"

BoxNoText:
	db "BOX No.@"

EmptyAllSRAMBoxes:
; marks all boxes in SRAM as empty (initialisation for the first time the
; player changes the box)
	call EnableSRAMAndLatchClockData
	ld a, 2
	ld [MBC1SRamBank], a
	call EmptySRAMBoxesInBank
	ld a, 3
	ld [MBC1SRamBank], a
	call EmptySRAMBoxesInBank
	call DisableSRAMAndPrepareClockData
	ret

EmptySRAMBoxesInBank:
; marks every box in the current SRAM bank as empty
	ld hl, sBox1 ; sBox7
	call EmptySRAMBox
	ld hl, sBox2 ; sBox8
	call EmptySRAMBox
	ld hl, sBox3 ; sBox9
	call EmptySRAMBox
	ld hl, sBox4 ; sBox10
	call EmptySRAMBox
	ld hl, sBox5 ; sBox11
	call EmptySRAMBox
	ld hl, sBox6 ; sBox12
	call EmptySRAMBox
	ld hl, sBox1 ; sBox7
	ld bc, sBank2AllBoxesChecksum - sBox1
	call SAVCheckSum
	ld [sBank2AllBoxesChecksum], a ; sBank3AllBoxesChecksum
	call CalcIndividualBoxCheckSums
	ret

EmptySRAMBox:
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ret

GetMonCountsForAllBoxes:
	ld hl, wBoxMonCounts
	push hl
	call EnableSRAMAndLatchClockData
	ld a, $2
	ld [MBC1SRamBank], a
	call GetMonCountsForBoxesInBank
	ld a, $3
	ld [MBC1SRamBank], a
	call GetMonCountsForBoxesInBank
	call DisableSRAMAndPrepareClockData
	pop hl

; copy the count for the current box from WRAM
	ld a, [wCurrentBoxNum]
	and $7f
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wBoxCount]
	ld [hl], a

	ret

GetMonCountsForBoxesInBank:
	ld a, [sBox1] ; sBox7
	ld [hli], a
	ld a, [sBox2] ; sBox8
	ld [hli], a
	ld a, [sBox3] ; sBox9
	ld [hli], a
	ld a, [sBox4] ; sBox10
	ld [hli], a
	ld a, [sBox5] ; sBox11
	ld [hli], a
	ld a, [sBox6] ; sBox12
	ld [hli], a
	ret

SAVCheckRandomID:
; checks if Sav file is the same by checking player's name 1st letter
; and the two random numbers generated at game beginning
; (which are stored at wPlayerID)s
	call EnableSRAMAndLatchClockData
	ld a, $01
	ld [MBC1SRamBank], a
	ld a, [sPlayerName]
	and a
	jr z, .next
	ld hl, sGameData
	ld bc, sGameDataEnd - sGameData
	call SAVCheckSum
	ld c, a
	ld a, [sMainDataCheckSum]
	cp c
	jr nz, .next
	ld hl, sMainData + (wPlayerID - wMainDataStart) ; player ID
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wPlayerID]
	cp l
	jr nz, .next
	ld a, [wPlayerID + 1]
	cp h
.next
	ld a, $00
	ld [MBC1SRamBankingMode], a
	ld [MBC1SRamEnable], a
	ret

SaveHallOfFameTeams:
	ld a, [wNumHoFTeams]
	dec a
	cp HOF_TEAM_CAPACITY
	jr nc, .shiftHOFTeams
	ld hl, sHallOfFame
	ld bc, HOF_TEAM
	call AddNTimes
	ld e, l
	ld d, h
	ld hl, wHallOfFame
	ld bc, HOF_TEAM
	jr HallOfFame_Copy

.shiftHOFTeams
; if the space designated for HOF teams is full, then shift all HOF teams to the next slot, making space for the new HOF team
; this deletes the last HOF team though
	ld hl, sHallOfFame + HOF_TEAM
	ld de, sHallOfFame
	ld bc, HOF_TEAM * (HOF_TEAM_CAPACITY - 1)
	call HallOfFame_Copy
	ld hl, wHallOfFame
	ld de, sHallOfFame + HOF_TEAM * (HOF_TEAM_CAPACITY - 1)
	ld bc, HOF_TEAM
	jr HallOfFame_Copy

LoadHallOfFameTeams:
	ld hl, sHallOfFame
	ld bc, HOF_TEAM
	ld a, [wHoFTeamIndex]
	call AddNTimes
	ld de, wHallOfFame
	ld bc, HOF_TEAM
	; fallthrough

HallOfFame_Copy:
	call EnableSRAMAndLatchClockData
	xor a
	ld [MBC1SRamBank], a
	call CopyData
	call DisableSRAMAndPrepareClockData
	ret

ClearSAV:
	call EnableSRAMAndLatchClockData
	ld a, $4
.loop
	dec a
	push af
	call PadSRAM_FF
	pop af
	jr nz, .loop
	call DisableSRAMAndPrepareClockData
	ret

PadSRAM_FF:
	ld [MBC1SRamBank], a
	ld hl, SRAM_Begin
	ld bc, SRAM_End - SRAM_Begin
	ld a, $ff
	jp FillMemory

EnableSRAMAndLatchClockData:
	ld a, $1
	ld [MBC1SRamBankingMode], a
	ld a, SRAM_ENABLE
	ld [MBC1SRamEnable], a
	ret

DisableSRAMAndPrepareClockData:
	ld a, SRAM_DISABLE
	ld [MBC1SRamBankingMode], a
	ld [MBC1SRamEnable], a
	ret

LoadBox:
	call GetBoxSRAMLocation
	call LoadBoxAddress
	ret
	
SaveBox:
	call GetBoxSRAMLocation
	call SaveBoxAddress
	ret	
	
SaveBoxAddress:
; Save box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sCurBoxData.
	push hl  ; box address (supposed to be end of box)
; Load the first part of the active box.
	push af  ; box bank
	push de  ; box address $A000
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, sCurBoxData
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	pop de   ; box address
	pop af   ; box bank
; Save it to the target box.
	push af  ; box bank
	push de  ; box address
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM

; Load the second part of the active box.
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData)
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	pop de ; $A000
	pop af ; $2

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h ; de = $A1E0
; Save it to the next part of the target box.
	push af
	push de
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM

; Load the third and final part of the active box.
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld de, wBoxPartialData
	ld bc, sCurBoxDataEnd - (sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $B7
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	pop de
	pop af

	ld hl, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	ld e, l
	ld d, h
; Save it to the final part of the target box.
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld bc, sCurBoxDataEnd - (sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $B7
	call CopyData
	call PrepareRTCDataAndDisableSRAM

	pop hl
	ret
	
LoadBoxAddress:
; Load box via wBoxPartialData.
; We do this in three steps because the size of wBoxPartialData is less than
; the size of sBox.
	push hl
	ld l, e
	ld h, d
; Load part 1
	push af
	push hl
	call SwitchSRAMBankAndLatchClockData
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld de, sCurBoxData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	pop hl
	pop af

	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
; Load part 2
	push af
	push hl
	call SwitchSRAMBankAndLatchClockData
	ld de, wBoxPartialData
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld de, sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData)
	ld bc, (wBoxPartialDataEnd - wBoxPartialData)
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	pop hl
	pop af
; Load part 3
	ld de, (wBoxPartialDataEnd - wBoxPartialData)
	add hl, de
	call SwitchSRAMBankAndLatchClockData
	ld de, wBoxPartialData
	ld bc, sCurBoxDataEnd - (sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	ld a, BANK(sCurBoxData)
	call SwitchSRAMBankAndLatchClockData
	ld hl, wBoxPartialData
	ld de, sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2
	ld bc, sCurBoxDataEnd - (sCurBoxData + (wBoxPartialDataEnd - wBoxPartialData) * 2) ; $8e
	call CopyData
	call PrepareRTCDataAndDisableSRAM
	
	pop hl
	ret

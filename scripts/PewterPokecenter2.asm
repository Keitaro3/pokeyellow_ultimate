Func_f1d98::
	ld hl, PewterPokecenterText_f1d9f
	call PrintText
	ret

PewterPokecenterText_f1d9f:
	text_far _PewterPokecenterText3
	text_end

PewterJigglypuff::
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .JigglypuffText
	call PrintText

	ld de, MUSIC_NONE
	call PlayMusic
	ld c, 32
	call DelayFrames

	ld hl, JigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData

	ld a, [wSprite03StateData1ImageIndex]
	ld hl, wJigglypuffFacingDirections
.findMatchingFacingDirectionLoop
	cp [hl]
	inc hl
	jr nz, .findMatchingFacingDirectionLoop
	dec hl

	push hl
	ld de, MUSIC_JIGGLYPUFF_SONG
	call PlayMusic
	pop hl

.spinMovementLoop
	ld a, [hl]
	ld [wSprite03StateData1ImageIndex], a
; rotate the array
	push hl
	ld hl, wJigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections - 1
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData
	ld a, [wJigglypuffFacingDirections - 1]
	ld [wJigglypuffFacingDirections + 3], a
	pop hl
	ld c, 24
	call DelayFrames
	ld a, [wChannel1MusicID]
	ld b, a
	ld a, [wChannel2MusicID]
	or b
	jr nz, .spinMovementLoop

	ld c, 48
	call DelayFrames
	call RestartMapMusic
	ret

.JigglypuffText:
	text_far _PewterJigglypuffText
	text_end

JigglypuffFacingDirections:
	db $30 | SPRITE_FACING_DOWN
	db $30 | SPRITE_FACING_LEFT
	db $30 | SPRITE_FACING_UP
	db $30 | SPRITE_FACING_RIGHT
JigglypuffFacingDirectionsEnd:

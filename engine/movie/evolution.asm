EvolveMon:
	push hl
	push de
	push bc
	ld a, [wcf91]
	push af
	ld a, [wd0b5]
	push af
	ld de, MUSIC_NONE
	call PlayMusic	
	xor a
	ld [wLowHealthAlarm], a
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	ld de, SFX_TINK
	call PlaySFX
	call Delay3
	xor a
	ldh [hAutoBGTransferEnabled], a
	ldh [hTileAnimations], a
	ld a, [wEvoOldSpecies]
	ld [wWholeScreenPaletteMonSpecies], a
	ld c, 0
	call EvolutionSetWholeScreenPalette
	ld a, [wEvoNewSpecies]
	ld [wcf91], a
	ld [wd0b5], a
	call Evolution_LoadPic
	ld de, vFrontPic
	ld hl, vBackPic
	ld bc, 7 * 7
	call CopyVideoData
	ld a, [wEvoOldSpecies]
	ld [wcf91], a
	ld [wd0b5], a
	call Evolution_LoadPic
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	ld a, [wEvoOldSpecies]
	call PlayMonCry
	call WaitSFX
	ld de, MUSIC_SAFARI_ZONE
	call PlayMusic
	ld c, 80
	call DelayFrames
	ld c, 1 ; set PAL_BLACK instead of mon palette
	call EvolutionSetWholeScreenPalette
	lb bc, $1, $10
.animLoop
	push bc
	call Evolution_CheckForCancel
	jr c, .evolutionCancelled
	call Evolution_BackAndForthAnim
	pop bc
	inc b
	dec c
	dec c
	jr nz, .animLoop
	xor a
	ld [wEvoCancelled], a
	ld a, $31
	ld [wEvoMonTileOffset], a
	call Evolution_ChangeMonPic ; show the new species pic
	ld a, [wEvoNewSpecies]
.done
	ld [wWholeScreenPaletteMonSpecies], a
	ld de, MUSIC_NONE
	call PlayMusic
	ld a, [wWholeScreenPaletteMonSpecies]
	call PlayMonCry
	ld c, 0
	call EvolutionSetWholeScreenPalette
	pop af
	ld [wd0b5], a
	pop af
	ld [wcf91], a
	pop bc
	pop de
	pop hl
	ld a, [wEvoCancelled]
	and a
	ret z
	scf
	ret
.evolutionCancelled
	pop bc
	ld a, 1
	ld [wEvoCancelled], a
	ld a, [wEvoOldSpecies]
	jr .done

EvolutionSetWholeScreenPalette:
	ld b, SET_PAL_POKEMON_WHOLE_SCREEN
	jp RunPaletteCommand

Evolution_LoadPic:
	call GetMonHeader
	hlcoord 7, 2
	jp LoadFlippedFrontSpriteByMonIndex

Evolution_BackAndForthAnim:
; show the mon change back and forth between the new and old species b times
	ld a, $31
	ld [wEvoMonTileOffset], a
	call Evolution_ChangeMonPic
	ld a, -$31
	ld [wEvoMonTileOffset], a
	call Evolution_ChangeMonPic
	dec b
	jr nz, Evolution_BackAndForthAnim
	ret

Evolution_ChangeMonPic:
	push bc
	xor a
	ldh [hAutoBGTransferEnabled], a
	hlcoord 7, 2
	lb bc, 7, 7
	ld de, SCREEN_WIDTH - 7
.loop
	push bc
.innerLoop
	ld a, [wEvoMonTileOffset]
	add [hl]
	ld [hli], a
	dec c
	jr nz, .innerLoop
	pop bc
	add hl, de
	dec b
	jr nz, .loop
	ld a, 1
	ldh [hAutoBGTransferEnabled], a
	call Delay3
	pop bc
	ret

Evolution_CheckForCancel:
	call DelayFrame
	push bc
	call JoypadLowSensitivity
	ld a, [hJoy5]
	pop bc
	and B_BUTTON
	jr nz, .pressedB
.nationalDexCheck
	ld a, [wStatusFlags]
	bit STATUSFLAGS_NATIONAL_DEX_F, a
	jr z, .CheckEvoSpecies
.notAllowedToCancel
	dec c
	jr nz, Evolution_CheckForCancel
	and a
	ret
.CheckEvoSpecies
	ld a, [wEvoNewSpecies]
	cp SCIZOR
	jr z, .pressedB
	cp KINGDRA
	jr z, .pressedB
	cp PORYGON2
	jr z, .pressedB
	cp BLISSEY
	jr nz, .notAllowedToCancel
	;cp CROBAT
	;jr z, .pressedB
	;cp BELLOSSOM
	;jr z, .pressedB
	;cp ESPEON
	;jr z, .pressedB
	;cp UMBREON
	;jr nz, .notAllowedToCancel
.pressedB
	ld a, [wForceEvolution]
	and a
	jr nz, .notAllowedToCancel
	scf
	ret

LoadOverworldMonIcon:
	ld a, e ; a = mon species
	call ReadMonMenuIcon ; get the icon constant
	ld l, a ; icon
	ld h, 0
	add hl, hl ; icon x 2
	ld de, MonPartySpritePointers
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl] ; de = icon pointer
	ld b, BANK(Icons) ; b = bank
	ld c, 12           ; c = num tiles
	ret

AnimatePartyMon_ForceSpeed1:
	xor a
	ld [wCurrentMenuItem], a
	ld a, [wOnSGB]
	xor $8
	add $10
	jr GotAnimationSpeed

; wPartyMenuHPBarColors contains the party mon's health bar colors
; 0: green
; 1: yellow
; 2: red
AnimatePartyMon::
	ld hl, wPartyMenuHPBarColors
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]

GetAnimationSpeed:
	ld c, a
	ld hl, PartyMonSpeeds
	add hl, bc
	ld a, [wOnSGB]
	xor $8
	add [hl]
GotAnimationSpeed:
	ld c, a
	add a
	ld b, a
	ld a, [wAnimCounter]
	and a
	jr z, .resetSprites
	cp c
	jr z, .animateSprite
.incTimer
	inc a
	cp b
	jr nz, .skipResetTimer
	xor a ; reset timer
.skipResetTimer
	ld [wAnimCounter], a
	jp DelayFrame
.resetSprites
	push bc
	ld hl, wMonPartySpritesSavedOAM
	ld de, wShadowOAM
	ld bc, $60
	call CopyData
	pop bc
	xor a
	jr .incTimer
.animateSprite
	push bc
	ld hl, wShadowOAMSprite00TileID
	ld bc, $10
	ld a, [wCurrentMenuItem]
	call AddNTimes
	ld c, $4 ; amount to increase the tile id by
	ld b, $4
	ld de, $4
.loop
	ld a, [hl]
	add c
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	pop bc
	ld a, c
	jr .incTimer

; Party mon animations cycle between 2 frames.
; The members of the PartyMonSpeeds array specify the number of V-blanks
; that each frame lasts for green HP, yellow HP, and red HP in order.
; On the naming screen, the yellow HP speed is always used.
PartyMonSpeeds:
	db 0, 64, 119

LoadMonPartySpriteGfx:
; Load mon party sprite tile patterns into VRAM during V-blank.	
	ld a, [wCurIconTile]
GetIconGFX:
; Load icon graphics into VRAM starting from tile a.
	ld l, a
	ld h, 0
	
; One tile is 16 bytes long.
rept 4
	add hl, hl
endr

	ld de, vSprites
	add hl, de

; The icons are contiguous, in order and of the same
; size, so the pointer table is somewhat redundant.
	ld a, [wCurIcon]  ; icon constant
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	ld de, MonPartySpritePointers
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl

	lb bc, BANK(Icons), 8
	call CopyVideoDataAlternate

	ld a, [wCurIconTile]
	add 8
	ld [wCurIconTile], a
	ret

LoadAnimSpriteGfx:
; Load animated sprite tile patterns into VRAM during V-blank. hl is the address
; of an array of structures that contain arguments for CopyVideoData and a is
; the number of structures in the array.
	ld bc, $0
.loop
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyVideoData
	pop hl
	pop bc
	ld a, $6
	add c
	ld c, a
	pop af
	dec a
	jr nz, .loop
	ret

LoadMonPartySpriteGfxWithLCDDisabled:
; Load mon party sprite tile patterns into VRAM immediately by disabling the
; LCD.
	call DisableLCD
	call ReloadPartySpriteGfx
	jp EnableLCD
	
ReloadPartySpriteGfx:
	xor a
	ld [wCurIconTile], a
	push af
	ld hl, wPartySpecies
.loop
	; load the correct mon icon into each subsequent OAM slot
	ld a, [hli] ; contains mon id
	push hl  ; pushed wPartySpecies
	call ReadMonMenuIcon
	ld [wCurIcon], a

	call LoadMonPartySpriteGfx
	pop hl
	
; checks if should loop	
	ld a, [wPartyCount]
	ld b, a
	pop af
	inc a
	cp b
	jr z, .done
	push af
	jr .loop
.done
	ret

INCLUDE "data/icon_pointers.asm"

WriteMonPartySpriteOAMByPartyIndex:
; Write OAM blocks for the party mon in [hPartyMonIndex].
	push hl
	push de
	push bc
	call GetPartyMonSpriteID
	call WriteMonPartySpriteOAM
	pop bc
	pop de
	pop hl
	ret

WriteMonPartySpriteOAMBySpecies:
; Write OAM blocks for the party sprite of the species in
; [wMonPartySpriteSpecies].
	xor a
	ld [hPartyMonIndex], a
	ld a, [wMonPartySpriteSpecies]
	jr WriteMonPartySpriteOAM
	
NamingScreen_InitAnimatedMonIcon:
	ld a, [wcf91]
	call ReadMonMenuIcon
	ld [wCurIcon], a
	xor a
	ld [wOAMBaseTile], a
	call GetIconGFX
	ret
	
Trade_LoadMonIconGFX:
	ld a, [wMonPartySpriteSpecies]
	call ReadMonMenuIcon
	ld [wCurIcon], a
	ld a, $62
	ld [wCurIconTile], a
	ld [wOAMBaseTile], a
	call LoadMonPartySpriteGfx
	ret

WriteMonPartySpriteOAM:
; Write the OAM blocks for the first animation frame into the OAM buffer and
; make a copy at wMonPartySpritesSavedOAM.
	push af
	ld c, $10
	ld h, HIGH(wShadowOAM)
	ldh a, [hPartyMonIndex]
	swap a
	ld l, a
	add $10
	ld b, a
	pop af
	call WriteAsymmetricMonPartySpriteOAM
; Make a copy of the OAM buffer with the first animation frame written so that
; we can flip back to it from the second frame by copying it back.
.makeCopy
	ld hl, wShadowOAM
	ld de, wMonPartySpritesSavedOAM
	ld bc, $60
	jp CopyData

GetPartyMonSpriteID:
	ldh a, [hPartyMonIndex]
	add a
	add a
	add a
	ld [wOAMBaseTile], a
	ret
	
ReadMonMenuIcon:
	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]
	cp EGG
	jr z, .egg
	dec a
	ld hl, MonPartyData
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	ret
.egg
	ld a, ICON_EGG
	ret
	
; The icons are contiguous.
GetIconPointer:
	ld a, [wWhichPokemon]
	ld c, a
	ld b, 0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	call ReadMonMenuIcon
	ld l, a
	ld h, 0
	add hl, hl
	ld de, MonPartySpritePointers
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ret

INCLUDE "data/pokemon/menu_icons.asm"

INCLUDE "gfx/icons.asm"

TradeBubbleIconGFX:  INCBIN "gfx/trade/bubble.2bpp"

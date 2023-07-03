Textbox::
; Draw a text box at hl with room for b lines of c characters each.
; Places a border around the textbox, then switches the palette to the
; text black-and-white scheme.
	push bc
	push hl
	call TextboxBorder
	pop hl
	pop bc
	jr TextboxPalette

TextboxBorder::
	; Top
	push hl
	ld a, "┌"
	ld [hli], a
	inc a ; "─"
	call .PlaceChars
	inc a ; "┐"
	ld [hl], a
	pop hl

	; Middle
	ld de, SCREEN_WIDTH
	add hl, de
.row
	push hl
	ld a, "│"
	ld [hli], a
	ld a, " "
	call .PlaceChars
	ld [hl], "│"
	pop hl

	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .row

	; Bottom
	ld a, "└"
	ld [hli], a
	ld a, "─"
	call .PlaceChars
	ld [hl], "┘"

	ret

.PlaceChars:
; Place char a c times.
	ld d, c
.loop
	ld [hli], a
	dec d
	jr nz, .loop
	ret

TextboxPalette::
; Fill text box width c height b at hl with pal 7
	ld de, wAttrmap - wTilemap
	add hl, de
	inc b
	inc b
	inc c
	inc c
	ld a, PAL_BG_TEXT
.col
	push bc
	push hl
.row
	ld [hli], a
	dec c
	jr nz, .row
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	pop bc
	dec b
	jr nz, .col
	ret

SpeechTextbox::
; Standard textbox.
	hlcoord TEXTBOX_X, TEXTBOX_Y
	ld b, TEXTBOX_INNERH
	ld c, TEXTBOX_INNERW
	jp Textbox

PrintText::
	call SetUpTextbox
	; fallthrough

PrintText_NoCreatingTextBox::
	bccoord TEXTBOX_INNERX, TEXTBOX_INNERY
	call PlaceHLTextAtBC
	ret

SetUpTextbox::
	push hl
	call SpeechTextbox
	call UpdateSprites
	call ApplyTilemap
	pop hl
	ret
	
	
	
	
PrintText::
; Print text hl at (1, 14).
	push hl
	ld a, MESSAGE_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	call Delay3
	pop hl
PrintText_NoCreatingTextBox::
	bccoord 1, 14
	jp TextCommandProcessor
	
	
	
	
	
OpenText:: ; window.asm
	call ClearWindowData
	ldh a, [hROMBank]
	push af
	ld a, BANK(ReanchorBGMap_NoOAMUpdate) ; aka BANK(LoadFonts_NoOAMUpdate)
	rst Bankswitch

	call ReanchorBGMap_NoOAMUpdate ; clear bgmap
	call SpeechTextbox
	call _OpenAndCloseMenu_HDMATransferTilemapAndAttrmap ; anchor bgmap
	call LoadFonts_NoOAMUpdate ; load font
	pop af
	rst Bankswitch

	ret

_OpenAndCloseMenu_HDMATransferTilemapAndAttrmap::
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	call CGBOnly_CopyTilemapAtOnce

	pop af
	ldh [hOAMUpdate], a
	ret	
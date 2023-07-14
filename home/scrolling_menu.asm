ScrollingMenu::
	call CopyMenuData
	ldh a, [hLoadedROMBank]
	push af

	ld a, BANK(_ScrollingMenu) ; aka BANK(_InitScrollingMenu)
	call BankswitchCommon

	call _InitScrollingMenu
	call .UpdatePalettes
	call _ScrollingMenu

	pop af
	call BankswitchCommon

	ld a, [wMenuJoypad]
	ret

.UpdatePalettes:
	ld a, [wUpdateSpritesEnabled]
	cp 1
	jp z, UpdateTimePals
	jp nz, GBPalNormal

InitScrollingMenu::
	ld a, [wMenuBorderTopCoord]
	dec a
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	sub b
	ld d, a
	ld a, [wMenuBorderLeftCoord]
	dec a
	ld c, a
	ld a, [wMenuBorderRightCoord]
	sub c
	ld e, a
	push de
	call Coord2Tile
	pop bc
	jp Textbox

JoyTextDelay_ForcehJoyDown::
	call DelayFrame

	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	call JoyTextDelay
	pop af
	ldh [hInMenu], a

	ldh a, [hJoy5]
	and D_RIGHT + D_LEFT + D_UP + D_DOWN
	ld c, a
	ldh a, [hJoyPressed]
	and A_BUTTON + B_BUTTON + SELECT + START
	or c
	ld c, a
	ret

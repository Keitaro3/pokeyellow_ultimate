UpdateItemDescription:
	ld a, [wMenuSelection]
	ld [wd0b5], a ; wCurSpecies ????
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farcall PrintItemDescription
	ret

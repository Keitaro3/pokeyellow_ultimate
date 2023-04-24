BorderPalettes:
	INCBIN "gfx/sgb/border.tilemap"

	ds $100

	RGB 30, 29, 29 ; PAL_SGB1
	RGB 25, 31, 18
	RGB 18, 25, 12
	RGB 12, 20,  9

	ds $18

	RGB 30, 29, 29 ; PAL_SGB2
	RGB 16, 19, 29
	RGB 25, 20,  7
	RGB 13, 15, 16

	ds $18

	RGB 30, 29, 29 ; PAL_SGB3
	RGB 30, 27,  4
	RGB 29, 18, 20
	RGB 13, 15, 16

	ds $18

SGBBorderGraphics:
	INCBIN "gfx/sgb/border.2bpp"

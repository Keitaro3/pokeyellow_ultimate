CinnabarMart_Script:
	jp EnableAutoTextBoxDrawing

CinnabarMart_TextPointers:
	dw CinnabarCashierText
	dw CinnabarMartText2
	dw CinnabarMartText3
	
INCLUDE "data/items/marts/cinnabar.asm"

CinnabarMartText2:
	text_far _CinnabarMartText2
	text_end

CinnabarMartText3:
	text_far _CinnabarMartText3
	text_end

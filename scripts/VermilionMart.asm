VermilionMart_Script:
	jp EnableAutoTextBoxDrawing

VermilionMart_TextPointers:
	dw VermilionCashierText
	dw VermilionMartText2
	dw VermilionMartText3
	
INCLUDE "data/items/marts/vermillion.asm"

VermilionMartText2:
	text_far _VermilionMartText2
	text_end

VermilionMartText3:
	text_far _VermilionMartText3
	text_end

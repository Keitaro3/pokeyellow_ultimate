SaffronMart_Script:
	jp EnableAutoTextBoxDrawing

SaffronMart_TextPointers:
	dw SaffronCashierText
	dw SaffronMartText2
	dw SaffronMartText3
	
INCLUDE "data/items/marts/saffron.asm"

SaffronMartText2:
	text_far _SaffronMartText2
	text_end

SaffronMartText3:
	text_far _SaffronMartText3
	text_end

CeruleanMart_Script:
	jp EnableAutoTextBoxDrawing

CeruleanMart_TextPointers:
	dw CeruleanCashierText
	dw CeruleanMartText2
	dw CeruleanMartText3
	
INCLUDE "data/items/marts/cerulean.asm"	

CeruleanMartText2:
	text_far _CeruleanMartText2
	text_end

CeruleanMartText3:
	text_far _CeruleanMartText3
	text_end

FuchsiaMart_Script:
	call EnableAutoTextBoxDrawing
	ret

FuchsiaMart_TextPointers:
	dw FuchsiaCashierText
	dw FuchsiaMartText2
	dw FuchsiaMartText3
	
INCLUDE "data/items/marts/fuchsia.asm"

FuchsiaMartText2:
	text_far _FuchsiaMartText2
	text_end

FuchsiaMartText3:
	text_far _FuchsiaMartText3
	text_end

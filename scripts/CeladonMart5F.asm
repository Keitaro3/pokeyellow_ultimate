CeladonMart5F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMart5F_TextPointers:
	dw CeladonMart5Text1
	dw CeladonMart5Text2
	dw CeladonMart5Clerk1Text
	dw CeladonMart5Clerk2Text
	dw CeladonMart5Text5
	
INCLUDE "data/items/marts/celadon_5.asm"

CeladonMart5Text1:
	text_far _CeladonMart5Text1
	text_end

CeladonMart5Text2:
	text_far _CeladonMart5Text2
	text_end

CeladonMart5Text5:
	text_far _CeladonMart5Text5
	text_end

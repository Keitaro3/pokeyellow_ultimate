DEF NAME_LENGTH EQU 11
DEF ITEM_NAME_LENGTH EQU 13
DEF NAME_BUFFER_LENGTH EQU 20

; PrintNumber
	const_def 5
	const BIT_MONEY_SIGN     ; 5
	const BIT_LEFT_ALIGN     ; 6
	const BIT_LEADING_ZEROES ; 7

DEF MONEY_SIGN EQU     (1 << BIT_MONEY_SIGN)
DEF LEFT_ALIGN EQU     (1 << BIT_LEFT_ALIGN)
DEF LEADING_ZEROES EQU (1 << BIT_LEADING_ZEROES)

; special text IDs (see home/text_script.asm)
	const_def $d0
	const TEXT_MON_FAINTED      ; $d0
	const TEXT_BLACKED_OUT      ; $d1
	const TEXT_REPEL_WORE_OFF   ; $d2
	const TEXT_SAFARI_GAME_OVER ; $d3
	const TEXT_PIKACHU_ANIM     ; $d4

DEF TEXT_START_MENU EQU $00

; see home/text.asm
DEF BORDER_WIDTH   EQU 2
DEF TEXTBOX_WIDTH  EQU SCREEN_WIDTH
DEF TEXTBOX_INNERW EQU TEXTBOX_WIDTH - BORDER_WIDTH
DEF TEXTBOX_HEIGHT EQU 6
DEF TEXTBOX_INNERH EQU TEXTBOX_HEIGHT - BORDER_WIDTH
DEF TEXTBOX_X      EQU 0
DEF TEXTBOX_INNERX EQU TEXTBOX_X + 1
DEF TEXTBOX_Y      EQU SCREEN_HEIGHT - TEXTBOX_HEIGHT
DEF TEXTBOX_INNERY EQU TEXTBOX_Y + 2

; see gfx/frames/*.png
DEF TEXTBOX_FRAME_TILES EQU 6

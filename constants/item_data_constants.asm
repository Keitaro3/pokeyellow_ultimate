; item_attributes struct members (see data/items/attributes.asm)
rsreset
DEF ITEMATTR_PRICE       rw
rsset ITEMATTR_PRICE
DEF ITEMATTR_PRICE_LO    rb
DEF ITEMATTR_PRICE_HI    rb
DEF ITEMATTR_PERMISSIONS rb
DEF ITEMATTR_POCKET      rb
DEF ITEMATTR_HELP        rb
DEF ITEMATTR_STRUCT_LENGTH EQU _RS

; item types
	const_def 1
	const ITEM_T   ; 1
	const KEY_ITEM ; 2
	const BALL     ; 3
	const TM_HM    ; 4
DEF NUM_ITEM_TYPES EQU const_value - 1

; item menu types
; UseItem.dw indexes (see engine/items/pack.asm)
; UseRegisteredItem.SwitchTo indexes (see engine/overworld/select_menu.asm)
	const_def
	const ITEMMENU_NOUSE   ; 0
	const_skip 3
	const ITEMMENU_CURRENT ; 4
	const ITEMMENU_PARTY   ; 5
	const ITEMMENU_CLOSE   ; 6

; item actions
DEF CANT_SELECT_F EQU 6
DEF CANT_TOSS_F   EQU 7

DEF NO_LIMITS   EQU 0
DEF CANT_SELECT EQU 1 << CANT_SELECT_F
DEF CANT_TOSS   EQU 1 << CANT_TOSS_F

; pack pockets
	const_def
	const ITEM_POCKET     ; 0
	const BALL_POCKET     ; 1
	const KEY_ITEM_POCKET ; 2
	const TM_HM_POCKET    ; 3
DEF NUM_POCKETS EQU const_value

DEF MAX_ITEMS     EQU 20
DEF MAX_BALLS     EQU 08
DEF MAX_KEY_ITEMS EQU 25
DEF MAX_PC_ITEMS  EQU 50

DEF MAX_ITEM_STACK EQU 99

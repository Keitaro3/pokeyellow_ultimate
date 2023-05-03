TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db RHYDON,     KANGASKHAN, TRADE_DIALOGSET_CASUAL,    "MATILDA@@@@"
	db JIGGLYPUFF, MR_MIME,    TRADE_DIALOGSET_CASUAL,    "BART@@@@@@@"
	db BUTTERFREE, BEEDRILL,   TRADE_DIALOGSET_HAPPY,     "STINGER@@@@" ; unused
	db GROWLITHE,  KRABBY,     TRADE_DIALOGSET_CASUAL,    "CLANCY@@@@@"
	db PIDGEY,     FARFETCHD,  TRADE_DIALOGSET_HAPPY,     "MARTY@@@@@@"
	db PERSIAN,    TAUROS,     TRADE_DIALOGSET_CASUAL,    "ANGUS@@@@@@"
	db MACHOKE,    HAUNTER,    TRADE_DIALOGSET_EVOLUTION, "EGON@@@@@@@"
	db KADABRA,    GRAVELER,   TRADE_DIALOGSET_EVOLUTION, "PEBBLES@@@@"
	db SEEL,       SLOWPOKE,   TRADE_DIALOGSET_HAPPY,     "OSCAR@@@@@@"
	db RATTATA,    POLIWAG,    TRADE_DIALOGSET_HAPPY,     "POLLY@@@@@@"
	;db DONPHAN,	   AIPOM,	   TRADE_DIALOGSET_CASUAL,    "DEXTER@@@@@"
	assert_table_length NUM_NPC_TRADES

TradeMonOTs:
; OT name, OT ID
	db "TURNER@@@@@", $35, $45 ; 13637
	db "REYLEY@@@@@", $07, $c1 ; 01985
	db "TONY@@@@@@@", $34, $43 ; 13379
	db "GARETT@@@@@", $26, $7d ; 09853
	db "ELYSSA@@@@@", $22, $6a ; 08810
	db "HADEN@@@@@@", $04, $d7 ; 01239
	db "DONTAE@@@@@", $8f, $78 ; 36728
	db "CLIFTON@@@@", $c4, $7a ; 50298
	db "NORMA@@@@@@", $ea, $8a ; 60042
	db "SAIGE@@@@@@", $f6, $d0 ; 63184
	;db "EDGAR@@@@@@", $ff, $27 ; 65319
	
TradeMonIVs:
; IVs, Gen 2 Item
	db $77, $66, $53 ; KANGASKHAN: BITTER BERRY, Female
	db $96, $66, $53 ; MR. MIME: BITTER BERRY, Male
	db $96, $66, $51 ; BEEDRILL: POISON BARB, Male
	db $98, $88, $CC ; KRABBY: TM13, Male
	db $96, $86, $69 ; FARFETCH'D: STICK, Male
	db $96, $66, $53 ; TAUROS: BITTER BERRY, Male
	db $96, $66, $53 ; HAUNTER: BITTER BERRY, Male
	db $96, $66, $53 ; GRAVELER: BITTER BERRY, Male
	db $96, $66, $83 ; SLOWPOKE: STARDUST, Male
	db $37, $66, $AD ; POLIWAG: BERRY, Female
	;db $96, $66, $84 ; AIPOM: STAR PIECE, Male

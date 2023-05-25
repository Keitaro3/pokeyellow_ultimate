MACRO rating
; count, sfx, text
	dbww \1, \2, \3
ENDM

DisplayDexRating:
	ld hl, DexCompletionText
	call PrintText
	call Rate
	call PlaySFX ; sfx loaded by previous Rate function call
	call WaitForTextScrollButtonPress
	call WaitSFX
	ret	
	
ProfOaksPCRating:
	call Rate
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	pop de
	call PlaySFX
	call WaitForTextScrollButtonPress
	call WaitSFX
	ret	
	
Rate:
; calculate Seen/Owned
	ld hl, wPokedexSeen
	ld b, wPokedexSeenEnd - wPokedexSeen
	call CountSetBits
	ld a, [wNumSetBits]
	ld [hDexRatingNumMonsSeen], a
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	ld [hDexRatingNumMonsOwned], a

; print appropriate rating
	ld hl, DexNumSeenOwned
	call PrintText
	call WaitForTextScrollButtonPress
	ld hl, OakRatings
	ld a, [wStatusFlags]
	bit STATUSFLAGS_NATIONAL_DEX_F, a
	jr z, .gotDexType
	ld hl, OakRatingsNational
.gotDexType
	ld a, [hDexRatingNumMonsOwned]
	call FindOakRating
	push de
	call PrintText
	pop de
	ret
	
FindOakRating:
; return sound effect in de
; return text pointer in hl
	nop
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr nc, .match
rept 4
	inc hl
endr
	jr .loop

.match
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

DexCompletionText:
	text_far _DexCompletionText
	text_end
	
DexNumSeenOwned:
	text_far _DexNumSeenOwned
	text_end

OakRatings:
; if you caught at most this many, play this sound, load this text  
	rating   9, SFX_DEX_FANFARE_LESS_THAN_20, DexRatingText_Own0To9
	rating  19, SFX_DEX_FANFARE_LESS_THAN_20, DexRatingText_Own10To19
	rating  29, SFX_POKEDEX_RATING, 		  DexRatingText_Own20To29
	rating  39, SFX_POKEDEX_RATING, 		  DexRatingText_Own30To39
	rating  49, SFX_POKEDEX_RATING, 		  DexRatingText_Own40To49
	rating  59, SFX_GET_KEY_ITEM, 	  	  	  DexRatingText_Own50To59
	rating  69, SFX_GET_KEY_ITEM, 	  		  DexRatingText_Own60To69
	rating  79, SFX_DEX_FANFARE_140_169, 	  DexRatingText_Own70To79
	rating  89, SFX_DEX_FANFARE_140_169, 	  DexRatingText_Own80To89
	rating  99, SFX_DEX_FANFARE_140_169, 	  DexRatingText_Own90To99
	rating 109, SFX_DEX_FANFARE_170_199, 	  DexRatingText_Own100To109
	rating 119, SFX_DEX_FANFARE_170_199, 	  DexRatingText_Own110To119
	rating 129, SFX_DEX_FANFARE_170_199, 	  DexRatingText_Own120To129
	rating 139, SFX_DEX_FANFARE_200_229, 	  DexRatingText_Own130To139
	rating 149, SFX_DEX_FANFARE_200_229, 	  DexRatingText_Own140To149
	rating 255, SFX_DEX_FANFARE_230_PLUS, 	  DexRatingText_Own150To151
	
OakRatingsNational:
; if you caught at most this many, play this sound, load this text
	rating   9, SFX_DEX_FANFARE_LESS_THAN_20, DexRatingText_Own0To9
	rating  19, SFX_DEX_FANFARE_LESS_THAN_20, OakRating02
	rating  34, SFX_POKEDEX_RATING,        	  OakRating03
	rating  49, SFX_POKEDEX_RATING,        	  DexRatingText_Own20To29
	rating  64, SFX_GET_ITEM_1,        		  OakRating05
	rating  79, SFX_GET_ITEM_1,        		  OakRating06
	rating  94, SFX_GET_KEY_ITEM,       	  DexRatingText_Own70To79
	rating 109, SFX_GET_KEY_ITEM,       	  DexRatingText_Own80To89
	rating 124, SFX_GET_ITEM_2,               DexRatingText_Own90To99
	rating 139, SFX_GET_ITEM_2,               OakRating10
	rating 154, SFX_DEX_FANFARE_140_169,      DexRatingText_Own110To119
	rating 169, SFX_DEX_FANFARE_140_169,      DexRatingText_Own60To69
	rating 184, SFX_DEX_FANFARE_170_199,      DexRatingText_Own130To139
	rating 199, SFX_DEX_FANFARE_170_199,      DexRatingText_Own120To129
	rating 214, SFX_DEX_FANFARE_200_229,      OakRating15
	rating 229, SFX_DEX_FANFARE_200_229,      OakRating16
	rating 239, SFX_DEX_FANFARE_230_PLUS,     OakRating17
	rating 248, SFX_DEX_FANFARE_230_PLUS,     OakRating18
	rating 255, SFX_DEX_FANFARE_230_PLUS,     OakRating19

DexRatingText_Own0To9:
	text_far _DexRatingText_Own0To9
	text_end

DexRatingText_Own10To19:
	text_far _DexRatingText_Own10To19
	text_end

DexRatingText_Own20To29:
	text_far _DexRatingText_Own20To29
	text_end

DexRatingText_Own30To39:
	text_far _DexRatingText_Own30To39
	text_end

DexRatingText_Own40To49:
	text_far _DexRatingText_Own40To49
	text_end

DexRatingText_Own50To59:
	text_far _DexRatingText_Own50To59
	text_end

DexRatingText_Own60To69:
	text_far _DexRatingText_Own60To69
	text_end

DexRatingText_Own70To79:
	text_far _DexRatingText_Own70To79
	text_end

DexRatingText_Own80To89:
	text_far _DexRatingText_Own80To89
	text_end

DexRatingText_Own90To99:
	text_far _DexRatingText_Own90To99
	text_end

DexRatingText_Own100To109:
	text_far _DexRatingText_Own100To109
	text_end

DexRatingText_Own110To119:
	text_far _DexRatingText_Own110To119
	text_end

DexRatingText_Own120To129:
	text_far _DexRatingText_Own120To129
	text_end

DexRatingText_Own130To139:
	text_far _DexRatingText_Own130To139
	text_end

DexRatingText_Own140To149:
	text_far _DexRatingText_Own140To149
	text_end

DexRatingText_Own150To151:
	text_far _DexRatingText_Own150To151
	text_end
	
OakRating02:
	text_far _OakRating02
	text_end
	
OakRating03:
	text_far _OakRating03
	text_end
	
OakRating05:
	text_far _OakRating05
	text_end

OakRating06:
	text_far _OakRating06
	text_end

OakRating10:
	text_far _OakRating10
	text_end

OakRating15:
	text_far _OakRating15
	text_end

OakRating16:
	text_far _OakRating16
	text_end

OakRating17:
	text_far _OakRating17
	text_end

OakRating18:
	text_far _OakRating18
	text_end

OakRating19:
	text_far _OakRating19
	text_end

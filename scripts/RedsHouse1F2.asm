Func_f1b73::
	ld a, [wd72e]
	bit 3, a ; received a Pokémon from Oak?
	jp nz, MomHealPokemon
	ld hl, MomWakeUpText
	call PrintText
	ret

MomWakeUpText:
	text_far _MomWakeUpText
	text_end

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	farcall FadeBlackQuickly
	call ReloadSpritesNoPalettes
	call ReloadMapData
	predef HealParty
	ld de, MUSIC_PKMN_HEALED
	call PlayMusic
.next
	ld a, [wChannel1MusicID]
	cp MUSIC_PKMN_HEALED
	jr z, .next
	call RestartMapMusic 
	farcall FadeInQuickly
	ld hl, MomHealText2
	call PrintText
	ret

MomHealText1:
	text_far _MomHealText1
	text_end
MomHealText2:
	text_far _MomHealText2
	text_end

Func_f1bc4::
	ld hl, TVWrongSideText
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	jp nz, .got_text
	ld hl, StandByMeText
.got_text
	call PrintText
	ret

StandByMeText:
	text_far _StandByMeText
	text_end

TVWrongSideText:
	text_far _TVWrongSideText
	text_end

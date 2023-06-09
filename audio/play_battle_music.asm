PlayBattleMusic::
	push hl
	push de
	push bc

	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	ld de, MUSIC_GYM_LEADER_BATTLE
	call IsGymLeader
	jr c, .done
	
.notGymLeaderBattle
	ld a, [wIsTrainerBattle]
	and a
	jr z, .wildBattle
	ld a, [wCurOpponent]
	
	ld de, MUSIC_FINAL_BATTLE
	cp RIVAL3
	jr z, .done
	cp RIVAL4
	jr z, .done

	ld de, MUSIC_ROCKET_BATTLE
	cp BOSS
	jr z, .done
	cp ROCKET
	jr z, .done
	cp EXECUTIVE_M
	jr z, .done
	cp EXECUTIVE_F
	jr z, .done
	cp GRUNT_F
	jr z, .done

.normalTrainerBattle
	ld de, MUSIC_TRAINER_BATTLE
	jr .done
	
.wildBattle
	ld a, [wEnemyMonSpecies2]
	
	ld de, MUSIC_SUICUNE_BATTLE	
	cp RAIKOU
	jr z, .done
	cp ENTEI
	jr z, .done
	cp SUICUNE
	jr z, .done
	
	ld de, MUSIC_JOHTO_WILD_BATTLE_NIGHT
	cp LUGIA
	jr z, .done
	
	ld de, MUSIC_JOHTO_WILD_BATTLE
	cp HO_OH
	jr z, .done
	cp CELEBI
	jr z, .done

.normalWildBattle
	ld de, MUSIC_WILD_BATTLE

.done
	call PlayMusic

	pop bc
	pop de
	pop hl
	ret
	
IsGymLeader:
	ld hl, GymLeaders
	push de
	ld a, [wCurOpponent]
	ld de, 1
	call IsInArray
	pop de
	ret	
	
GymLeaders:
	db BROCK
	db MISTY
	db LT_SURGE
	db ERIKA
	db KOGA
	db SABRINA
	db BLAINE
	db GIOVANNI
	db LORELEI
	db BRUNO
	db AGATHA
	db LANCE
	db -1
	
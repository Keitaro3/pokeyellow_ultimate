_RemovePokemon::
	ld hl, wPartyCount
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyCount
	ld hl, wBoxCount
.usePartyCount
	ld a, [hl]  ; number of entries (max 20 or 6)
	dec a       ; 6 - 1 = 5
	ld [hli], a ; party count reduced, hl = species list
	ld a, [wWhichPokemon] ; which entry, -1 (so first is 0, etc)
	ld c, a ; c = entry index
	ld b, $0 ; bc = 05
	add hl, bc ; hl = species of that index
	ld e, l
	ld d, h
	inc de ; de = hl + 1
.shiftMonSpeciesLoop
	ld a, [de]
	inc de
	ld [hli], a
	inc a ; reached terminator?
	jr nz, .shiftMonSpeciesLoop ; if not, continue shifting species
	ld hl, wPartyMonOT
	ld d, PARTY_LENGTH - 1 ; max number of pokemon to shift
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyMonOTs
	ld hl, wBoxMonOT
	ld d, MONS_PER_BOX - 1
.usePartyMonOTs
	ld a, [wWhichPokemon]
	call SkipFixedLengthTextEntries
	ld a, [wWhichPokemon]
	cp d ; are we removing the last pokemon?
	jr nz, .notRemovingLastMon ; if not, shift the pokemon below
	ld [hl], $ff ; else, write the terminator and return
	ld hl, wPartyMonHappinessEnd - 1
	ld a, [wRemoveMonFromBox]
	and a
	ld a, $00
	jr z, .wasPartyMon
	ld hl, wBoxDataEnd - 1
	ld a, $FF
.wasPartyMon	
	ld [hl], a ; blank out and return	
	ret
.notRemovingLastMon
	ld d, h
	ld e, l
	ld bc, NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicks
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyMonNicks
	ld bc, wBoxMonNicks
.usePartyMonNicks
	call CopyDataUntil
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyMonStructs
	ld hl, wBoxMons
	ld bc, wBoxMon2 - wBoxMon1
.usePartyMonStructs
	ld a, [wWhichPokemon]
	call AddNTimes ; get address of the pokemon removed
	ld d, h ; store in de for CopyDataUntil
	ld e, l
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .copyUntilPartyMonOTs
	ld bc, wBoxMon2 - wBoxMon1
	add hl, bc ; get address of pokemon after the pokemon removed
	ld bc, wBoxMonOT ; address of when to stop copying
	jr .continue
.copyUntilPartyMonOTs
	ld bc, wPartyMon2 - wPartyMon1
	add hl, bc ; get address of pokemon after the pokemon removed
	ld bc, wPartyMonOT ; address of when to stop copying
.continue
	call CopyDataUntil ; shift all pokemon data after the removed mon to the removed mon's location
	ld hl, wPartyMonNicks
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyMonNicks2
	ld hl, wBoxMonNicks
.usePartyMonNicks2
	ld bc, NAME_LENGTH
	ld a, [wWhichPokemon]
	call AddNTimes
	ld d, h
	ld e, l
	ld bc, NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicksEnd
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .copyUntilPartyMonNicksEnd
	ld bc, wBoxMonNicksEnd
.copyUntilPartyMonNicksEnd
	call CopyDataUntil
	ld hl, wPartyMonHappiness
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .usePartyMonHappiness
	ld hl, wBoxMonHappiness
.usePartyMonHappiness
	ld b, 0
	ld c, 1
	ld a, [wWhichPokemon]
	call AddNTimes
	ld d, h
	ld e, l
	inc hl
	ld bc, wPartyMonHappinessEnd
	ld a, [wRemoveMonFromBox]
	and a
	jr z, .copyUntilPartyMonHappinessEnd
	ld bc, wBoxDataEnd
.copyUntilPartyMonHappinessEnd
	call CopyDataUntil
	
	ld hl, wPartyMonHappinessEnd - 1
	ld a, [wRemoveMonFromBox]
	and a
	ld a, $00
	jr z, .gotPartyData	
	ld hl, wBoxDataEnd - 1
	ld a, $FF
.gotPartyData	
	ld [hl], a
	ret
	
; Copies [hl, bc) to [de, de + bc - hl).
; In other words, the source data is from hl up to but not including bc,
; and the destination is de.
CopyDataUntil::
	ld a, [hli]
	ld [de], a
	inc de
	ld a, h
	cp b
	jr nz, CopyDataUntil
	ld a, l
	cp c
	jr nz, CopyDataUntil
	ret

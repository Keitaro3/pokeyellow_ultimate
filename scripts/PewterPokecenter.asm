PewterPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ret

PewterPokecenter_TextPointers:
	dw PewterHealNurseText
	dw PewterPokecenterText2
	dw PewterJigglypuffText
	dw PewterTradeNurseText
	dw PewterPokecenterText5

PewterHealNurseText:
	script_pokecenter_nurse

PewterPokecenterText2:
	text_far _PewterPokecenterText2
	text_end

PewterJigglypuffText:
	text_asm
	farcall PewterJigglypuff
	jp TextScriptEnd

PewterTradeNurseText:
	script_cable_club_receptionist

PewterPokecenterText5:
	text_asm
	farcall Func_f1d98
	jp TextScriptEnd

FindItemInBallScript::
	call .TryReceiveItem
	ld a, [wScriptVar]
	and a
	jp z, .no_room
	

.TryReceiveItem
	xor a
	ld [wScriptVar], a
	ld a, [wItemBallItemID]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	
	ld a, [wItemBallItemID] ; item ID
	ld [wcf91], a ; wCurItem
	ld a, [wItemBallQuantity] ; num items
	ld [wItemQuantityChange], a
	ld hl, wNumBagItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [wScriptVar], a
	ret





;uturn
	call ForceEnemySwitch	;in engine/battle/core.asm
	call ForcePlayerSwitch	;after attacking ofc
ldh a, [hBattleTurn]
	and a
	
CheckType:
	ld de, wBattleMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .typecheck	;check if handling playermon
	ld de, wEnemyMonType1
.typecheck:	
	ld a, [de]
	cp bc ;  (TYPE) ex WATER this jumps to .next if usermon is that type
	jr z, .next
	inc de
	ld a, [de]
	cp bc ; WATER
	jr z, .next
	
	;to use this, load the type you wanna check into bc, 
	
	
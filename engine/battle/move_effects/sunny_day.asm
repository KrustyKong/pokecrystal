BattleCommand_StartSun:
; always raise grass types speed
	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .typecheck
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels 
.typecheck	
	ld a, [de]
	cp GRASS
	jr nz, .startsun
	inc de
	ld a, [de]
	cp GRASS
	jr nz, .startsun
;sun check
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr nz, .startsun
.statcheck
;check type of user. skip to startsun if not grass
;raise speed (if water) and end turn
;skip speedboost if max
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr z, .startsun
;;raise non-waters only if its already raining
.speedup
	call ResetMiss
	call BattleCommand_SpeedUp2
	call BattleCommand_StatUpMessage
.startsun
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox

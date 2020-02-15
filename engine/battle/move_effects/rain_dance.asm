BattleCommand_StartRain:
; always raise water types speed
	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .typecheck
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels 
.typecheck	
	ld a, [de]
	cp WATER
	jr z, .statcheck
	inc de
	ld a, [de]
	cp WATER
	jr z, .statcheck
;rain check
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jr nz, .startrain
.statcheck
;check type of user. skip to raincheck if not water
;raise speed (if water) and end turn
;skip speedboost if max
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr z, .startrain
;;raise non-waters only if its already raining
.speedup
	call ResetMiss
	call BattleCommand_SpeedUp
	call BattleCommand_StatUpMessage
.startrain
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextbox
	
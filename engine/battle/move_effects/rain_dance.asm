BattleCommand_StartRain:
; startrain
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jr z, .go
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, DownpourText
	call StdBattleTextbox
;stat boosts
;check type of user. skip to raincheck if not water
;raise speed (if water) and end turn
	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels
.go
;skip speedboost if max
	ld a, [bc]
	cp MAX_STAT_LEVEL
	ret z
; always raise water types speed
	ld a, [de]
	cp WATER
	jr z, .speedup
	inc de
	ld a, [de]
	cp WATER
	jr z, .speedup
;;raise non-waters only if its already raining
;	ld a, [wBattleWeather]
;	cp WEATHER_RAIN
;	ret nz	;if its Not raining, return
.speedup
	call ResetMiss
	call BattleCommand_SpeedUp
	jp BattleCommand_StatUpMessage
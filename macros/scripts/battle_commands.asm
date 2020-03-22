command: MACRO
	enum \1_command
\1 EQUS "db \1_command"
ENDM

; BattleCommandPointers indexes (see data/battle/effect_command_pointers.asm)
	enum_start 1
	command checkturn               ; 01
	command checkobedience          ; 02
	command usedmovetext            ; 03
	command doturn                  ; 04
	command critical                ; 05
	command damagestats             ; 06
	command stab                    ; 07
	command damagevariation         ; 08
	command checkhit                ; 09
	command lowersub                ; 0a
	command moveanimnosub           ; 0b
	command raisesub                ; 0c
	command failuretext             ; 0d
	command applydamage             ; 0e
	command criticaltext            ; 0f			15
	command supereffectivetext      ; 10			16
	command checkfaint              ; 11
	command buildopponentrage       ; 12
	command poisontarget            ; 13	PSN			19
	command sleeptarget             ; 14	SLP
	command draintarget             ; 15
	command eatdream                ; 16
	command burntarget              ; 17	BRN	;23
	command freezetarget            ; 18	FRZ	;
	command paralyzetarget          ; 19	PRZ
	command selfdestruct            ; 1a
	command mirrormove              ; 1b
	command statup                  ; 1c
	command statdown                ; 1d
	command payday                  ; 1e
	command conversion              ; 1f
	command resetstats              ; 20
	command storeenergy             ; 21
	command unleashenergy           ; 22
	command forceswitch             ; 23	35	force switch
	command endloop                 ; 24
	command flinchtarget            ; 25		;flinch
	command ohko                    ; 26
	command recoil                  ; 27
	command mist                    ; 28
	command focusenergy             ; 29	focusenergy	41
	command confuse                 ; 2a
	command confusetarget           ; 2b
	command heal                    ; 2c				44
	command transform               ; 2d
	command screen                  ; 2e
	command poison                  ; 2f
	command paralyze                ; 30
	command substitute              ; 31
	command rechargenextturn        ; 32
	command mimic                   ; 33
	command metronome               ; 34
	command leechseed               ; 35	seeds 53
	command splash                  ; 36
	command disable                 ; 37
	command cleartext               ; 38
	command charge                  ; 39
	command checkcharge             ; 3a
	command traptarget              ; 3b
	command extra;effect0x3c              ; 3c
	command rampage                 ; 3d
	command checkrampage            ; 3e
	command constantdamage          ; 3f
	command counter                 ; 40
	command encore                  ; 41	65
	command painsplit               ; 42
	command snore                   ; 43
	command conversion2             ; 44
	command lockon                  ; 45
	command sketch                  ; 46
	command defrostopponent         ; 47
	command sleeptalk               ; 48
	command destinybond             ; 49
	command spite                   ; 4a
	command falseswipe              ; 4b
	command healbell                ; 4c
	command kingsrock               ; 4d
	command triplekick              ; 4e
	command kickcounter             ; 4f
	command thief                   ; 50
	command arenatrap               ; 51
	command nightmare               ; 52
	command defrost                 ; 53		83
	command curse                   ; 54
	command protect                 ; 55
	command spikes                  ; 56
	command foresight               ; 57
	command perishsong              ; 58
	command startsandstorm          ; 59
	command endure                  ; 5a
	command checkcurl               ; 5b
	command rolloutpower            ; 5c
	command effect0x5d              ; 5d
	command furycutter              ; 5e
	command attract                 ; 5f
	command happinesspower          ; 60
	command present                 ; 61
	command damagecalc              ; 62
	command frustrationpower        ; 63
	command safeguard               ; 64	;100
	command checksafeguard          ; 65
	command getmagnitude            ; 66
	command batonpass               ; 67	bPass		103
	command pursuit                 ; 68
	command clearhazards            ; 69
	command healmorn                ; 6a
	command healday                 ; 6b
	command healnite                ; 6c
	command hiddenpower             ; 6d
	command startrain               ; 6e	rain		110	
	command startsun                ; 6f	sun			111
	command attackup                ; 70	atk+1 		112
	command defenseup               ; 71
	command speedup                 ; 72	speed+1		114
	command specialattackup         ; 73
	command specialdefenseup        ; 74	spdef+1		116
	command accuracyup              ; 75	accup		117
	command evasionup               ; 76
	command attackup2               ; 77	atk+2		119
	command defenseup2              ; 78
	command speedup2                ; 79	speed+2
	command specialattackup2        ; 7a
	command specialdefenseup2       ; 7b
	command accuracyup2             ; 7c
	command evasionup2              ; 7d
	command attackdown              ; 7e
	command defensedown             ; 7f	127		def-1
	command speeddown               ; 80	speed-1	128
	command specialattackdown       ; 81
	command specialdefensedown      ; 82	130		spdef-1
	command accuracydown            ; 83
	command evasiondown             ; 84	eva-1	132
	command attackdown2             ; 85	133		atk-2
	command defensedown2            ; 86	134		def-2
	command speeddown2              ; 87	speed-2		135
	command specialattackdown2      ; 88
	command specialdefensedown2     ; 89
	command accuracydown2           ; 8a
	command evasiondown2            ; 8b
	command statupmessage           ; 8c
	command statdownmessage         ; 8d
	command statupfailtext          ; 8e
	command statdownfailtext        ; 8f
	command effectchance            ; 90
	command statdownanim            ; 91
	command statupanim              ; 92
	command switchturn              ; 93
	command fakeout                 ; 94
	command bellydrum               ; 95
	command psychup                 ; 96
	command rage                    ; 97
	command doubleflyingdamage      ; 98
	command doubleundergrounddamage ; 99
	command mirrorcoat              ; 9a
	command checkfuturesight        ; 9b
	command futuresight             ; 9c
	command doubleminimizedamage    ; 9d
	command skipsuncharge           ; 9e	double sun 158
	command thunderaccuracy         ; 9f
	command teleport                ; a0
	command beatup                  ; a1
	command ragedamage              ; a2
	command resettypematchup        ; a3
	command allstatsup              ; a4
	command bidefailtext            ; a5
	command raisesubnoanim          ; a6
	command lowersubnoanim          ; a7
	command beatupfailtext          ; a8
	command clearmissdamage         ; a9
	command movedelay               ; aa
	command moveanim                ; ab
	command tristatuschance         ; ac
	command supereffectivelooptext  ; ad
	command startloop               ; ae
	command curl                    ; af

	enum_start $fe
	command endturn                 ; fe
	command endmove                 ; ff

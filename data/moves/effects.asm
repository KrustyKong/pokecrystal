INCLUDE "data/moves/effects_pointers.asm"

MoveEffects: ; used only for BANK(MoveEffects)

NormalHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

DoSleep:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	sleeptarget
	endmove

PoisonHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	poisontarget
	endmove

LeechHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	draintarget
	checkfaint
	buildopponentrage
	kingsrock
	endmove

BurnHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	extra		;before eff chance, so only things like defrost or double sun pow
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	burntarget
	endmove

FreezeHit:	;normal, extra hit w effectchance
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	extra
	endmove

ParalyzeHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	paralyzetarget
	endmove

Selfdestruct:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	selfdestruct
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

DreamEater:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	eatdream
	checkfaint
	buildopponentrage
	endmove

MirrorMove:
	checkobedience
	usedmovetext
	doturn
	mirrormove
	endmove

AttackUp:
	checkobedience
	usedmovetext
	doturn
	extra; was attackup. can use this for anything since sharpen uses acc up now
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp:		;new: bulk up
	checkobedience
	usedmovetext
	doturn
	attackup		;was def
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	defenseup		;
	statupmessage	;
	statupfailtext	;
	endmove

SpeedUp:		;dragon dance time
	checkobedience
	usedmovetext
	doturn
	attackup	;
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	speedup
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp:	;work up | growth can be its own thing tbh
	checkobedience
	usedmovetext
	doturn
	attackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	specialattackup	;workup
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp:	;no move does this on its own, so its unused
	checkobedience
	usedmovetext
	doturn
	specialattackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	specialdefenseup	;calm mind
	statupmessage
	statupfailtext
	endmove

AccuracyUp:
	checkobedience
	usedmovetext
	doturn
	accuracyup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
;	attackup		;hone claws
;	speedup		;this could be cool. kinda an alt DD
;	statupmessage
;	statupfailtext
	focusenergy		;
	endmove

SpecialAttackUpHit:	;EvasionUp:	;CHARGE beam, fiery dance
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	specialattackup
	statupmessage
	endmove

AttackUp2:		;SD
	checkobedience
	usedmovetext
	doturn
	attackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp2:		;acid armor
	checkobedience
	usedmovetext
	doturn
	defenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpeedUp2:		;agility
	checkobedience
	usedmovetext
	doturn
	speedup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp2:	;unused, nasty plot
	checkobedience
	usedmovetext
	doturn
	specialattackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp2:	;amnesia
	checkobedience
	usedmovetext
	doturn
	specialdefenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AccuracyUp2:		;unused ofc. coil
	checkobedience
	usedmovetext
	doturn
	attackup
	defenseup		;
	accuracyup		;
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

EvasionUp2:			;hell no. could do the mini mario thing instead (+1spe,-defenses)
	checkobedience
	usedmovetext
	doturn
	evasionup2		;made this cotton guard in battle/effect_commands
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown:	;was string shot, but they buffed that 
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown:		;quiver dance instead
	checkobedience
	usedmovetext
	doturn
;	checkhit
;	accuracydown
	speedup				;
	lowersub
	statupanim			;was down
	raisesub
	statupmessage		;was down
	statupfailtext
	specialattackup		;quiver dance
	statupmessage
	statupfailtext
	specialdefenseup	;
	statupmessage
	statupfailtext		;was down
	endmove

EvasionDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	extra			;+1 spee for double team, +2 for sweet scent
	statupmessage
	statupfailtext
	endmove

AttackDown2:		;CHARM
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown2:		;SCREECH
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown2:		;SCARY FACE
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown2:		;FREE
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown2:		;gen5 smokescreen hack. FLASH, SMOKESCREEN
	checkobedience
	usedmovetext
	doturn
	checkhit
	failuretext
	extra;	accuracydown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	attackdown
	statdownmessage
	statdownfailtext
	specialattackdown
	statdownmessage
	statdownfailtext
	endmove

EvasionDown2:	;NEW KINESIS
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AttackDownHit:	;AURORABEAM, PLAY ROUGH
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	attackdown
	statdownmessage
	extra			;AAbeam/tbolt can lower speed also, drill peck lowers def 
	statdownmessage	;
	endmove

DefenseDownHit:		;iron tail, liquidation
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
;	effectchance ; bug: duplicate effectchance shouldn't be here
	defensedown
	statdownmessage
	endmove

SpeedDownHit:	;icy wind, bulldoze
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	speeddown
	statdownmessage
	endmove

SpecialAttackDownHit:	;moonblast
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	specialattackdown
	statdownmessage
	endmove

SpecialDefenseDownHit:	;acid spray (x2) , new PSYBEAM
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	specialdefensedown
	statdownmessage
	endmove

AccuracyDownHit:	;new: actually raises user acc. for swift, aerial ace, etc
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	accuracyup
	statupmessage
	endmove

EvasionDownHit:		;new: psychic? since the spdef drop is kinda wack
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	evasiondown
	statdownmessage
	extra			;speeddown for constrict/mudslap
	statdownmessage
	endmove

DefenseUpHit:		;steel wing
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	defenseup
	statupmessage
	endmove

AttackUpHit:		;metal claw
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	attackup
	;accuracyup
	statupmessage
	endmove

AllUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	allstatsup
	endmove

PayDay:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	payday
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Conversion:
	checkobedience
	usedmovetext
	doturn
	conversion
	endmove

ResetStats:
	checkobedience
	usedmovetext
	doturn
	resetstats
	endmove

Bide:
	storeenergy
	checkobedience
	doturn
	usedmovetext
	unleashenergy
	resettypematchup
	checkhit
	moveanim
	bidefailtext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Rampage:
	checkrampage
	checkobedience
	doturn
	rampage
	usedmovetext
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

ForceSwitch:
	checkobedience
	usedmovetext
	doturn
	checkhit
	forceswitch
	endmove

MultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	endloop
	raisesub
	kingsrock
	endmove

PoisonMultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	effectchance
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	endloop
	raisesub
	kingsrock
	poisontarget
	endmove

FlinchHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

OHKOHit:	;flinchhitExtra
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	extra			;for status shit
	endmove

RecoilHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	recoil
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Mist:
	checkobedience
	usedmovetext
	doturn
	mist
	endmove

FocusEnergy:
	checkobedience
	usedmovetext
	doturn
	focusenergy
	endmove

DoConfuse:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	confuse
	endmove

ConfuseHit:			;confusion, dizzy punch
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	confusetarget
	endmove

Heal:
	checkobedience
	usedmovetext
	doturn
	heal
	endmove

Transform:
	checkobedience
	usedmovetext
	doturn
	transform
	endmove

LightScreen:
Reflect:
	checkobedience
	usedmovetext
	doturn
	screen
	endmove

TriAttack:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	tristatuschance
	endmove

Toxic:
DoPoison:
	checkobedience
	usedmovetext
	doturn
	checkhit
	stab
	checksafeguard
	poison
	endmove

DoParalyze:
	checkobedience
	usedmovetext
	doturn
	stab
	checkhit
	checksafeguard
	paralyze
	endmove

SkyAttack:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	kingsrock
	endmove

Substitute:
	checkobedience
	usedmovetext
	doturn
	substitute
	endmove

HyperBeam:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint		;switched this w the below to see if it works like gen 1?
	rechargenextturn
	buildopponentrage
	endmove

Rage:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	ragedamage
	damagevariation
	moveanim
	failuretext
	rage
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Mimic:
	checkobedience
	usedmovetext
	doturn
	checkhit
	mimic
	endmove

Metronome:
	checkobedience
	usedmovetext
	doturn
	metronome
	endmove

LeechSeed:
	checkobedience
	usedmovetext
	doturn
	checkhit
	leechseed
	endmove

Splash:
	checkobedience
	usedmovetext
	doturn
	splash
	endmove

Disable:
	checkobedience
	usedmovetext
	doturn
	checkhit
	disable
	endmove

RazorWind:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Fly:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanimnosub
	raisesub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	speedup		;works :)
	statupmessage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

TrapTarget:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	traptarget
	effectchance	;see if we can add burn chance to fire spin
	extra			;
	endmove

SuperFang:
Psywave:
StaticDamage:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	checkhit
	resettypematchup
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Reversal:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	stab
	checkhit
	moveanim
	failuretext
	applydamage
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Counter:
	checkobedience
	usedmovetext
	doturn
	counter
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Encore:
	checkobedience
	usedmovetext
	doturn
	checkhit
	encore
	endmove

PainSplit:
	checkobedience
	usedmovetext
	doturn
	checkhit
	painsplit
	endmove

Snore:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	snore
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	kingsrock
	endmove

Conversion2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	conversion2
	endmove

LockOn:
	checkobedience
	usedmovetext
	doturn
	checkhit
	lockon
	endmove

Sketch:
	checkobedience
	usedmovetext
	doturn
	sketch
	endmove

DefrostOpponent:
	checkobedience
	usedmovetext
	doturn
	defrostopponent
	endmove

SleepTalk:
	checkobedience
	usedmovetext
	doturn
	sleeptalk
	endmove

DestinyBond:
	checkobedience
	usedmovetext
	doturn
	destinybond
	endmove

Spite:
	checkobedience
	usedmovetext
	doturn
	checkhit
	spite
	endmove

FalseSwipe:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	falseswipe
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

HealBell:
	checkobedience
	usedmovetext
	doturn
	healbell
	endmove

TripleKick:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	critical
	damagestats
	damagecalc
	triplekick
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	kickcounter
	endloop
	raisesub
	kingsrock
	endmove

Thief:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	thief
	checkfaint
	buildopponentrage
	kingsrock
	endmove

MeanLook:
	checkobedience
	usedmovetext
	doturn
	arenatrap
	endmove

Nightmare:
	checkobedience
	usedmovetext
	doturn
	nightmare
	endmove

FlameWheel:	;(sacredfire dupe)
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	speedup			;flame charge
	statupmessage
	effectchance
	checkfaint
	buildopponentrage
	extra			;Putting this in and removing burn chance makes this use the effect chance instead
	;burntarget		;sacred fire is in here too anyway
	endmove
	
Extra:		;need this or it wont build in effects_pointers.asm
	extra
	endmove

Curse:
	checkobedience
	usedmovetext
	doturn
	curse
	endmove

Protect:
	checkobedience
	usedmovetext
	doturn
	protect
	endmove

Spikes:
	checkobedience
	usedmovetext
	doturn
	spikes
	endmove

Foresight:
	checkobedience
	usedmovetext
	doturn
	checkhit
	foresight
	endmove

PerishSong:
	checkobedience
	usedmovetext
	doturn
	perishsong
	endmove

Sandstorm:
	checkobedience
	usedmovetext
	doturn
	startsandstorm
	endmove

Endure:
	checkobedience
	usedmovetext
	doturn
	endure
	endmove

Rollout:
	checkcurl
	checkobedience
	doturn
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	checkhit
	rolloutpower
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Swagger:
	checkobedience
	usedmovetext
	doturn
	checkhit
	switchturn
	attackup2
	switchturn
	lowersub
	statupanim
	raisesub
	failuretext
	switchturn
	statupmessage
	switchturn
	confusetarget
	endmove

FuryCutter:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	furycutter
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Attract:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attract
	endmove

Return:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	happinesspower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Present:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	present
	damagecalc
	stab
	damagevariation
	clearmissdamage
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Frustration:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	frustrationpower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Safeguard:
	checkobedience
	usedmovetext
	doturn
	safeguard
	endmove

SacredFire:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	extra		;putting up sun before they die
	checkfaint
	buildopponentrage
	;burntarget
	endmove

Magnitude:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	getmagnitude
	damagecalc
	stab
	damagevariation
	checkhit
	doubleundergrounddamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

BatonPass:
	checkobedience
	usedmovetext
	doturn
	batonpass
	endmove

Pursuit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	pursuit
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

RapidSpin:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	speedup			;gen 8
	clearhazards
	checkfaint
	buildopponentrage
	kingsrock
	endmove

MorningSun:
	checkobedience
	usedmovetext
	doturn
	healmorn
	endmove

Synthesis:
	checkobedience
	usedmovetext
	doturn
	healday
	endmove

Moonlight:
	checkobedience
	usedmovetext
	doturn
	healnite
	endmove

HiddenPower:
	checkobedience
	usedmovetext
	doturn
	critical
	hiddenpower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endmove

RainDance:
	checkobedience
	usedmovetext
	doturn
	startrain
	endmove

SunnyDay:
	checkobedience
	usedmovetext
	doturn
	specialdefenseup
	statupmessage
	statupfailtext
	startsun
	endmove

FakeOut:
	checkobedience
	usedmovetext
	doturn
	checkhit
	fakeout
	moveanim
	failuretext
	endmove

BellyDrum:
	checkobedience
	usedmovetext
	doturn
	bellydrum
	endmove

PsychUp:
	checkobedience
	usedmovetext
	doturn
	psychup
	endmove

MirrorCoat:
	checkobedience
	usedmovetext
	doturn
	mirrorcoat
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

SkullBash:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	endturn
	defenseup
	statupmessage
	attackup		;added in attack up buff
	statupmessage	;
	endmove

Twister:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

Earthquake:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleundergrounddamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	endmove

FutureSight:
	checkfuturesight
	checkobedience
	usedmovetext
	doturn
	damagestats
	damagecalc
	futuresight
	damagevariation ; skip here if last turn
	checkhit
	moveanimnosub
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	endmove

Gust:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	endmove

Stomp:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleminimizedamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

Solarbeam:
;	checkcharge
	checkobedience
	doturn
;	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	skipsuncharge	;now sun deals double damage instead
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	effectchance	;speedup
	speedup
	statupmessage
	checkfaint
	buildopponentrage
	kingsrock
	endmove

Thunder:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	thunderaccuracy
	checkhit
	effectchance
	stab
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	;paralyzetarget
	defenseup		;thunder armor bitches (also hurricane now like uses featherdance :D)
	statupmessage
	extra		;para for thunder, switch for hurricane
	endmove

Teleport:
	checkobedience
	usedmovetext
	doturn
	teleport
	endmove

BeatUp:
	checkobedience
	usedmovetext
	movedelay
	doturn
	startloop
	lowersub
	checkhit
	critical
	beatup
	damagecalc
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivetext
	checkfaint
	buildopponentrage
	endloop
	beatupfailtext
	raisesub
	kingsrock
	endmove

DefenseCurl:
	checkobedience
	usedmovetext
	doturn
	defenseup
	curl
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	specialdefenseup	;now better cosmic power
	statupmessage
	statupfailtext
	endmove

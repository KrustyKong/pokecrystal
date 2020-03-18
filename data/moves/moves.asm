; Characteristics of each move.

move: MACRO
	db \1 ; animation
	db \2 ; effect
	db \3 ; power
;	db \4 ; type
;	db \5 percent ; accuracy
;	db \6 ; pp
;	db \7 percent ; effect chance	;PSS
	db \4 | \5 ; type
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
	db \9 ;extrabit. can use extra effect, if you configure it in effects.asm
ENDM

Moves: ; 41afb
; entries correspond to constants/move_constants.asm
	move POUND,        EFFECT_PARALYZE_HIT,       40, NORMAL,   PHYSICAL, 100, 35,   0, 0
	move KARATE_CHOP,  EFFECT_NORMAL_HIT,         50, FIGHTING, PHYSICAL, 100, 25,   0, 0
	move DOUBLESLAP,   EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,  85, 10,   0, 0
	move COMET_PUNCH,  EFFECT_PRIORITY_HIT,       60, STEEL,    PHYSICAL, 100, 40,   0, 0		;bullet punch
	move MEGA_PUNCH,   EFFECT_FREEZE_HIT,         80, FIGHTING, PHYSICAL, 100, 20, 30,41		;attackup>crit up
;tried to make it enact focus energy, but it may only take decimal values? 
	move PAY_DAY,      EFFECT_PAY_DAY,            40, NORMAL,   PHYSICAL, 100, 20,   0, 0
	move FIRE_PUNCH,   EFFECT_SP_ATK_DOWN_HIT,    85, FIRE,     PHYSICAL, 100, 15,  35, 0	;drops spatk
	move ICE_PUNCH,    EFFECT_FLINCH_HIT,         80, ICE,      PHYSICAL, 100, 15,  35, 0	;flinch
	move THUNDERPUNCH, EFFECT_FREEZE_HIT,         75, ELECTRIC, PHYSICAL, 100, 15,  35,114	;speedup, hi crit
	move SCRATCH,      EFFECT_NORMAL_HIT,         40, NORMAL,   PHYSICAL, 100, 35,   0, 0
	move VICEGRIP,     EFFECT_FLINCH_HIT,         70, FLYING,    SPECIAL, 100, 35,  20, 0	;air slash
   	move GUILLOTINE,   EFFECT_OHKO,                0, NORMAL,   PHYSICAL,  30,  5,   0, 0
	move RAZOR_WIND,   EFFECT_RAZOR_WIND,         80, NORMAL,   SPECIAL,   75, 10,   0, 0
	move SWORDS_DANCE, EFFECT_ATTACK_UP_2,         0, NORMAL,   STATUS,   100, 30,   0, 0
	move CUT,          EFFECT_NORMAL_HIT,         70, BUG,      PHYSICAL,  95, 30,   0, 0	;xscissor
	move GUST,         EFFECT_ALL_UP_HIT,         70, BUG,       SPECIAL, 100,  7,   25, 0		;silver wind
	move WING_ATTACK,  EFFECT_ACCURACY_DOWN_HIT,  60, FLYING,   PHYSICAL, 100, 10,  30, 0 ;Aerial Ace
	move WHIRLWIND,    EFFECT_FORCE_SWITCH,        0, FLYING,     STATUS, 100, 20,   0, 0
	move FLY,          EFFECT_FLY,                70, FLYING,   PHYSICAL, 100, 15, 100, 0
	move BIND,         EFFECT_TRAP_TARGET,        35, NORMAL,   PHYSICAL,  85, 20,  15,134 ;def-2
	move SLAM,         EFFECT_NORMAL_HIT,         80, NORMAL,   PHYSICAL,  75, 20,   0, 0
	move VINE_WHIP,    EFFECT_PARALYZE_HIT,       55, GRASS,    PHYSICAL, 100, 10,  33, 0
	move STOMP,        EFFECT_STOMP,              65, NORMAL,   PHYSICAL, 100, 20,  30, 0
	move DOUBLE_KICK,  EFFECT_DOUBLE_HIT,         30, FIGHTING, PHYSICAL, 100, 30,   0, 0
	move MEGA_KICK,    EFFECT_FREEZE_HIT,        120, NORMAL,   PHYSICAL,  75,  5,  40,41 ;focuseng
	move JUMP_KICK,    EFFECT_JUMP_KICK,         100, FIGHTING, PHYSICAL,  95, 25,   0, 0
	move ROLLING_KICK, EFFECT_ROLLOUT,            30, FIGHTING, PHYSICAL,  85, 15,  30, 0
	move SAND_ATTACK,  EFFECT_FLINCH_HIT,         20, GROUND,   PHYSICAL, 100, 15,  50, 0
	move HEADBUTT,     EFFECT_FLINCH_HIT,         70, NORMAL,   PHYSICAL, 100, 15,  30, 0
	move HORN_ATTACK,  EFFECT_DEFENSE_DOWN_HIT,   75, NORMAL,   PHYSICAL, 100, 25,  50, 0
	move FURY_ATTACK,  EFFECT_MULTI_HIT,          15, NORMAL,   PHYSICAL,  85, 20,   0, 0
	move HORN_DRILL,   EFFECT_NORMAL_HIT,         80, GROUND,   PHYSICAL, 100, 15,  50, 0		;drill run
	move TACKLE,       EFFECT_NORMAL_HIT,         35, NORMAL,   PHYSICAL,  95, 35,   0, 0
	move BODY_SLAM,    EFFECT_PARALYZE_HIT,       85, NORMAL,   PHYSICAL, 100, 15,  30, 0
	move WRAP,         EFFECT_TRAP_TARGET,        55, NORMAL,   PHYSICAL,  90, 20,  70,112	;atkup. 
	move TAKE_DOWN,    EFFECT_RECOIL_HIT,         90, NORMAL,   PHYSICAL,  85, 20,   0, 0
	move THRASH,       EFFECT_RAMPAGE,           120, NORMAL,   PHYSICAL, 100, 20,   0, 0
	move DOUBLE_EDGE,  EFFECT_RECOIL_HIT,        120, NORMAL,   PHYSICAL, 100, 15,   0, 0
	move TAIL_WHIP,    EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,   100, 30,   0, 0
	move POISON_STING, EFFECT_POISON_HIT,         90, POISON,   SPECIAL,  100, 10,  30, 0		;special slude bomb
	move TWINEEDLE,    EFFECT_POISON_MULTI_HIT,   40, BUG,      PHYSICAL, 100, 20,  40, 0
	move PIN_MISSILE,  EFFECT_MULTI_HIT,          14, BUG,      PHYSICAL,  85, 20,   0, 0
	move LEER,         EFFECT_DEFENSE_DOWN,        0, NORMAL,   STATUS,   100, 30,   0, 0
	move BITE,         EFFECT_FLINCH_HIT,         60, DARK,     PHYSICAL, 100, 25,  30, 0
	move GROWL,        EFFECT_SP_ATK_DOWN_HIT,    55, DARK,     SPECIAL,  100, 15, 100, 0	;SNARL
	move ROAR,         EFFECT_FORCE_SWITCH,        0, NORMAL,   STATUS,   100, 20,   0, 0
	move SING,         EFFECT_SLEEP,               0, NORMAL,   STATUS,    55, 15,   0, 0
	move SUPERSONIC,   EFFECT_CONFUSE,             0, NORMAL,   STATUS,    55, 20,   0, 0
	move SONICBOOM,    EFFECT_STATIC_DAMAGE,      20, NORMAL,   SPECIAL,   90, 20,   0, 0
	move DISABLE,      EFFECT_DISABLE,             0, NORMAL,   STATUS,   100, 20,   0, 0
	move ACID,         EFFECT_SP_DEF_DOWN_HIT,    65, POISON,   SPECIAL,  100, 30, 100, 0
	move EMBER,        EFFECT_BURN_HIT,           10, FIRE,     SPECIAL,   85, 15, 100,83	;defrost
	move FLAMETHROWER, EFFECT_SPEED_DOWN_HIT,     95, FIRE,     SPECIAL,  100, 15,  35, 0
	move MIST,         EFFECT_MIST,                0, ICE,      STATUS,   100, 30,   0, 0
	move WATER_GUN,    EFFECT_PRIORITY_HIT,         40, WATER,  PHYSICAL,  100, 25,   0, 0
	move HYDRO_PUMP,   EFFECT_RECOIL_HIT,        110, WATER,    SPECIAL,  100,  8,   0, 0
	move SURF,         EFFECT_NORMAL_HIT,         95, WATER,    SPECIAL,  100, 15,   0, 0
	move ICE_BEAM,     EFFECT_FLINCH_HIT,         70, ICE,      SPECIAL,  100, 10,  10, 0
	move BLIZZARD,     EFFECT_FREEZE_HIT,        110, ICE,      SPECIAL,   70,  5,  20,24	;frz, [I] Accuracy
	move PSYBEAM,      EFFECT_SP_DEF_DOWN_HIT,    65, PSYCHIC,  SPECIAL,  100, 20,  66, 0
	move BUBBLEBEAM,   EFFECT_SPEED_DOWN_HIT,     65, WATER,    SPECIAL,  100, 20,  30,132 ;eva-1
	move AURORA_BEAM,  EFFECT_ATTACK_DOWN_HIT,    65, ICE,      SPECIAL,  100, 20,  30,128 ;speed-1
	move HYPER_BEAM,   EFFECT_HYPER_BEAM,        150, NORMAL,   PHYSICAL,  90,  5,   0, 0		;no charge if ko
	move PECK,         EFFECT_FREEZE_HIT,         40, BUG,      PHYSICAL, 100, 20, 100,103	;uturn, bpass
	move DRILL_PECK,   EFFECT_ATTACK_DOWN_HIT,    80, FLYING,   PHYSICAL, 100, 20,  33,127	;def-1
	move SUBMISSION,   EFFECT_NORMAL_HIT,         85, FAIRY,    PHYSICAL, 100, 10,   0, 0		;Play Rough
	move LOW_KICK,     EFFECT_FLINCH_HIT,         50, FIGHTING, PHYSICAL, 90,  20,  30, 0
	move COUNTER,      EFFECT_COUNTER,             1, FIGHTING, PHYSICAL, 100, 20,   0, 0
	move SEISMIC_TOSS, EFFECT_STATIC_DAMAGE,     100, FIGHTING, PHYSICAL, 100, 20,   0, 0
	move STRENGTH,     EFFECT_FREEZE_HIT,         80, NORMAL,   PHYSICAL, 100, 15,  50,35	;oh my god it forces em out just like the boulders
	move ABSORB,       EFFECT_ACCURACY_DOWN,       0, BUG,      STATUS,   100, 20,   0, 0	;quiver dance
	move MEGA_DRAIN,   EFFECT_FREEZE_HIT,         75, GRASS,    PHYSICAL, 100, 15,   0, 53	;seeds horn leech
	move LEECH_SEED,   EFFECT_LEECH_SEED,          0, GRASS,    STATUS,    90, 10,   0, 0
	move GROWTH,       EFFECT_SP_ATK_UP,           0, NORMAL,   STATUS,   100, 40,   0, 0	;work up
	move RAZOR_LEAF,   EFFECT_NORMAL_HIT,         55, GRASS,    PHYSICAL,  95, 25,   0, 0
	move SOLARBEAM,    EFFECT_SOLARBEAM,         70, GRASS,     SPECIAL,  100, 10,  30, 0	;they buffed it to 200 in LG. if you have a miracle seed it becomes grass hyper beam. also 30% speedup cuz no chloro
	move POISONPOWDER, EFFECT_NORMAL_HIT,          70, GRASS,   PHYSICAL,    100, 15,   0, 0	;leaf blade
	move STUN_SPORE,   EFFECT_PARALYZE,            0, GRASS,    STATUS,   75, 30,   0, 0
	move SLEEP_POWDER, EFFECT_SLEEP,               0, GRASS,    STATUS,    75, 15,   0, 0
	move PETAL_DANCE,  EFFECT_RAMPAGE,           120, GRASS,    SPECIAL,  100, 10,   0, 0
	move STRING_SHOT,  EFFECT_SPEED_DOWN_2,        0, BUG,      STATUS,    95, 40,   0, 0
	move DRAGON_RAGE,  EFFECT_NORMAL_HIT,         80, DRAGON,   PHYSICAL, 100, 20,   0, 0			;Dragon Claw
	move FIRE_SPIN,    EFFECT_TRAP_TARGET,    	  55, FIRE,     SPECIAL,  100, 15, 30,23		;burn
	move THUNDERSHOCK, EFFECT_FREEZE_HIT,         40, ELECTRIC, SPECIAL,  100, 20,100,103	;VOLT SWITCH bpass
	move THUNDERBOLT,  EFFECT_ATTACK_DOWN_HIT,    95, ELECTRIC, SPECIAL,  100, 15,  15,128	;speed-1.def up was broken. collective 30% chance to reverse dd
	move THUNDER_WAVE, EFFECT_PARALYZE,            0, ELECTRIC, STATUS,   75, 20,   0, 0		;old Glare accuracy
	move THUNDER,      EFFECT_THUNDER,            60, ELECTRIC, SPECIAL,  100, 10,  30, 25	;x2 in rain, para
	move ROCK_THROW,   EFFECT_OHKO,         60, ROCK,     PHYSICAL,  95, 15,  30,128	;flinch/30% speed-1
	move EARTHQUAKE,   EFFECT_EARTHQUAKE,        100, GROUND,   PHYSICAL, 100, 10,   0, 0
	move FISSURE,      EFFECT_SP_DEF_DOWN_HIT,    80, GROUND,   SPECIAL,  100,  10,   20, 0		;Earth Power
	move DIG,          EFFECT_FLY,                80, GROUND,   PHYSICAL, 100, 10,   0, 0
	move TOXIC,        EFFECT_TOXIC,               0, POISON,   STATUS,    85, 10,   0, 0
	move CONFUSION,    EFFECT_CONFUSE_HIT,        50, PSYCHIC,  SPECIAL,  100, 25,  50, 0
	move PSYCHIC_M,    EFFECT_OHKO,               80, PSYCHIC, SPECIAL,   100, 10,  10,130	;flnich/spdef-1
	move HYPNOSIS,     EFFECT_SLEEP,               0, PSYCHIC,  STATUS,   60, 20,   0, 0
	move MEDITATE,     EFFECT_SP_DEF_UP,           0, PSYCHIC,  STATUS,   100, 40,   0, 0	;CALM MIND
	move AGILITY,      EFFECT_SPEED_UP_2,          0, PSYCHIC,  STATUS,   100, 30,   0, 0
	move QUICK_ATTACK, EFFECT_PRIORITY_HIT,       40, NORMAL,   PHYSICAL, 100, 30,   0, 0
	move RAGE,         EFFECT_RAGE,               20, NORMAL,   PHYSICAL, 100, 20,   0, 0
	move TELEPORT,     EFFECT_TELEPORT,            0, PSYCHIC,  STATUS,   100, 20,   0, 0
	move NIGHT_SHADE,  EFFECT_LEVEL_DAMAGE,        1, GHOST,    SPECIAL,  100, 15,   0, 0
	move MIMIC,        EFFECT_MIMIC,               0, NORMAL,   STATUS,  100, 10,   0, 0
	move SCREECH,      EFFECT_DEFENSE_DOWN_2,      0, NORMAL,   STATUS,    85, 40,   0, 0
	move DOUBLE_TEAM,  EFFECT_EVASION_DOWN,        0, NORMAL, STATUS,     100, 15,   0,114;speedup
	move RECOVER,      EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 20,   0, 0
	move HARDEN,       EFFECT_DEFENSE_UP,          0, NORMAL,   STATUS,   100, 30,   0, 0
	move MINIMIZE,     EFFECT_EVASION_UP_2,        0, NORMAL,   STATUS,   100, 20,   0, 0
	move SMOKESCREEN,  EFFECT_ACCURACY_DOWN_2,     0, NORMAL,   STATUS,   100, 20,   0,128	;sp/atk,speed down
	move CONFUSE_RAY,  EFFECT_CONFUSE,             0, GHOST,    STATUS,   100, 10,   0, 0
	move WITHDRAW,     EFFECT_DEFENSE_UP_HIT,     40, WATER,    PHYSICAL, 100, 40,  50, 0
	move DEFENSE_CURL, EFFECT_DEFENSE_CURL,        0, NORMAL,   STATUS,   100, 40,   0, 0
	move BARRIER,      EFFECT_DEFENSE_UP_2,        0, PSYCHIC,  STATUS,   100, 30,   0, 0
	move LIGHT_SCREEN, EFFECT_LIGHT_SCREEN,        0, PSYCHIC,  STATUS,   100, 30,   0, 0
	move HAZE,         EFFECT_RESET_STATS,         0, ICE,      STATUS,   100, 30,   0, 0
	move REFLECT,      EFFECT_REFLECT,             0, PSYCHIC,  STATUS,   100, 20,   0, 0
	move FOCUS_ENERGY, EFFECT_FOCUS_ENERGY,        0, NORMAL,   STATUS,   100, 30,   0, 0
	move BIDE,         EFFECT_BIDE,                0, NORMAL,   STATUS, 100, 10,   0, 0
	move METRONOME,    EFFECT_METRONOME,           0, NORMAL,   STATUS,   100, 10,   0, 0
	move MIRROR_MOVE,  EFFECT_SPEED_UP,            0, DRAGON,   STATUS,   100, 15,   0, 0		;dd
	move SELFDESTRUCT, EFFECT_SELFDESTRUCT,      200, NORMAL,   PHYSICAL, 100,  5,   0, 0
	move EGG_BOMB,     EFFECT_DEFENSE_DOWN_HIT,  100, NORMAL,   PHYSICAL, 100, 10,  40, 0
	move LICK,         EFFECT_PARALYZE_HIT,       20, GHOST,    PHYSICAL, 100, 30,  30, 0
	move SMOG,         EFFECT_POISON_HIT,         20, POISON,   SPECIAL,   70, 20,  40, 0
	move SLUDGE,       EFFECT_POISON_HIT,         80, POISON,   SPECIAL,  100, 20,  30, 0
	move BONE_CLUB,    EFFECT_LEECH_HIT,          75, ROCK,     SPECIAL,  100, 10,   0, 0			;Power Gem
	move FIRE_BLAST,   EFFECT_BURN_HIT,          110, FIRE,     SPECIAL,   85,  5,  30,83	;defrost	
	move WATERFALL,    EFFECT_FLINCH_HIT,         80, WATER,    PHYSICAL, 100, 15,  20, 0
	move CLAMP,        EFFECT_DEFENSE_DOWN_HIT,   85, WATER,    PHYSICAL, 100, 15,  20, 0		;lIQUIDATION
	move SWIFT,        EFFECT_ACCURACY_DOWN_HIT,  60, NORMAL,   SPECIAL,  100, 20,  50, 0	;focusenergy
	move SKULL_BASH,   EFFECT_SKULL_BASH,        80, NORMAL,   PHYSICAL, 100, 10,   0, 0	;ppnerf cuz atk boost
	move SPIKE_CANNON, EFFECT_MULTI_HIT,          20, NORMAL,   PHYSICAL, 100, 15,   0, 0
	move CONSTRICT,    EFFECT_EVASION_DOWN_HIT,   60, NORMAL,   PHYSICAL, 100, 35, 100,128
	move AMNESIA,      EFFECT_SP_DEF_UP_2,         0, PSYCHIC,  STATUS,   100, 20,   0, 0
	move KINESIS,      EFFECT_EVASION_DOWN_2,      0, PSYCHIC,  STATUS,   100, 15,   0, 0		;telekines, no levitate
	move SOFTBOILED,   EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0, 0
	move HI_JUMP_KICK, EFFECT_JUMP_KICK,         120, FIGHTING, PHYSICAL,  90, 20,   0, 0
	move GLARE,        EFFECT_PARALYZE,            0, NORMAL,   STATUS,    90, 30,   0	, 0		;glare
	move DREAM_EATER,  EFFECT_DREAM_EATER,       120, PSYCHIC,  SPECIAL,  100, 15,   0, 0
	move POISON_GAS,   EFFECT_POISON,              0, POISON,   STATUS,    55, 40,   0, 0
	move BARRAGE,      EFFECT_MULTI_HIT,          27, STEEL,    SPECIAL, 100, 10,   0	, 0		;FLASH CANNON
	move LEECH_LIFE,   EFFECT_LEECH_HIT,          80, BUG,      PHYSICAL, 100, 15,   0, 0
	move LOVELY_KISS,  EFFECT_SLEEP,               0, NORMAL,   STATUS,    75, 10,   0, 0
	move SKY_ATTACK,   EFFECT_RECOIL_HIT,        120, FLYING,   PHYSICAL, 100, 15,   0, 0
	move TRANSFORM,    EFFECT_TRANSFORM,           0, NORMAL,   STATUS,   100, 10,   0, 0
	move BUBBLE,       EFFECT_BURN_HIT,           80, WATER,    SPECIAL,  100, 15,  30,158 ;SCALD.normal in sun
	move DIZZY_PUNCH,  EFFECT_CONFUSE_HIT,        70, NORMAL,   PHYSICAL, 100, 10,  20, 0
	move SPORE,        EFFECT_SLEEP,               0, GRASS,    STATUS,   100, 15,   0, 0
	move FLASH,        EFFECT_ACCURACY_DOWN_2,     0, NORMAL,   STATUS,    70, 20,   0,132	;sp/atk,eva down
	move PSYWAVE,      EFFECT_NORMAL_HIT,         80, FAIRY,    SPECIAL,  100, 10,   0, 0	;DAZZLING GLEAM
	move SPLASH,       EFFECT_SPLASH,              0, NORMAL,   STATUS,   100, 40,   0, 0
	move ACID_ARMOR,   EFFECT_DEFENSE_UP_2,        0, POISON,   STATUS,   100, 40,   0, 0
	move CRABHAMMER,   EFFECT_NORMAL_HIT,         90, WATER,    PHYSICAL, 100, 10,   0, 0
	move EXPLOSION,    EFFECT_SELFDESTRUCT,      250, NORMAL,   PHYSICAL, 100,  5,   0, 0
	move FURY_SWIPES,  EFFECT_MULTI_HIT,          20, DARK,     PHYSICAL,100, 15,   0, 0
	move BONEMERANG,   EFFECT_DOUBLE_HIT,         50, GROUND,   PHYSICAL,  90, 10,   0, 0
	move REST,         EFFECT_HEAL,                0, PSYCHIC,  STATUS,   100, 10,   0, 0
	move ROCK_SLIDE,   EFFECT_FLINCH_HIT,         75, ROCK,     PHYSICAL, 100, 10,  25, 0	;Acc up, flinch down
	move HYPER_FANG,   EFFECT_OHKO,         80, NORMAL,   PHYSICAL,  90, 15,  40,19 ;flinch/PSN
	move SHARPEN,      EFFECT_ACCURACY_UP,         0, DARK,     STATUS,   100, 30,   0	, 0		;HONE CLAWS
	move CONVERSION,   EFFECT_CONVERSION,          0, NORMAL,   STATUS,   100, 30,   0, 0
	move TRI_ATTACK,   EFFECT_TRI_ATTACK,         80, NORMAL,   SPECIAL,  100, 10,  45, 0
	move SUPER_FANG,   EFFECT_SUPER_FANG,          1, NORMAL,   PHYSICAL,  90, 10,   0, 0
	move SLASH,        EFFECT_NORMAL_HIT,         70, NORMAL,   PHYSICAL, 100, 20,   0, 0
	move SUBSTITUTE,   EFFECT_SUBSTITUTE,          0, NORMAL,   STATUS,   100, 10,   0, 0
	move STRUGGLE,     EFFECT_RECOIL_HIT,         50, NORMAL,   PHYSICAL, 100,  1,   0, 0
	move SKETCH,       EFFECT_SKETCH,              0, NORMAL,   STATUS,   100,  1,   0, 0
	move TRIPLE_KICK,  EFFECT_TRIPLE_KICK,        15, FIGHTING, PHYSICAL,  90, 10,   0, 0
	move THIEF,        EFFECT_THIEF,              65, DARK,     PHYSICAL,   100, 10, 100, 0
	move SPIDER_WEB,   EFFECT_MEAN_LOOK,           0, BUG,      STATUS,   100, 10,   0, 0
	move MIND_READER,  EFFECT_LOCK_ON,             0, NORMAL,   STATUS,   100,  5,   0, 0
	move NIGHTMARE,    EFFECT_PRIORITY_HIT,       40, GHOST,    PHYSICAL,   100, 15,   0, 0 ;SHADOW SNEAK
	move FLAME_WHEEL,  EFFECT_FLAME_WHEEL,        65, FIRE,     PHYSICAL,  100, 20,  30, 23	;flame charge, burn
	move SNORE,        EFFECT_SNORE,              40, NORMAL,   STATUS,  100, 15,  30, 0
	move CURSE,        EFFECT_CURSE,               0, GHOST,    STATUS,   100, 10,   0, 0
	move FLAIL,        EFFECT_REVERSAL,            1, NORMAL,   PHYSICAL, 100, 15,   0, 0
	move CONVERSION2,  EFFECT_CONVERSION2,         0, NORMAL,   STATUS,   100, 30,   0, 0
	move AEROBLAST,    EFFECT_NORMAL_HIT,        100, FLYING,   SPECIAL,   95,  5,   0, 0
	move COTTON_SPORE, EFFECT_EVASION_UP_2,        0, GRASS,     STATUS, 100, 40,   0, 0
	move REVERSAL,     EFFECT_REVERSAL,            1, FIGHTING, PHYSICAL, 100, 15,   0, 0		;Facade
	move SPITE,        EFFECT_SPITE,               0, GHOST,    STATUS,   100, 10,   0, 0
	move POWDER_SNOW,  EFFECT_PARALYZE_HIT,       80, ELECTRIC, SPECIAL,   100, 15,  30	, 0	;DISCHARGE
	move PROTECT,      EFFECT_PROTECT,             0, NORMAL,   STATUS,   100, 10,   0, 0
	move MACH_PUNCH,   EFFECT_PRIORITY_HIT,       40, FIGHTING, PHYSICAL, 100, 30,   0, 0
	move SCARY_FACE,   EFFECT_SPEED_DOWN_2,        0, NORMAL,   STATUS,    90, 10,   0, 0
	move FAINT_ATTACK, EFFECT_ALWAYS_HIT,         60, DARK,     PHYSICAL, 100, 20,  50, 0
	move SWEET_KISS,   EFFECT_CONFUSE,             0, NORMAL,   STATUS,    75, 10,   0, 0
	move BELLY_DRUM,   EFFECT_BELLY_DRUM,          0, NORMAL,   STATUS,   100, 10,   0, 0
	move SLUDGE_BOMB,  EFFECT_POISON_HIT,         90, POISON,   PHYSICAL,  100, 10,  30, 0
	move MUD_SLAP,     EFFECT_EVASION_DOWN_HIT,   20, GROUND,   SPECIAL,  100, 10, 100,128	;speed-1
	move OCTAZOOKA,    EFFECT_POISON_HIT,         65, WATER,    PHYSICAL,   85, 10, 100, 0	;almost toxic w damage
	move SPIKES,       EFFECT_SPIKES,              0, GROUND,   STATUS,   100, 20,   0, 0
	move ZAP_CANNON,   EFFECT_EVASION_UP,         65, ELECTRIC, SPECIAL,  100, 10,  66, 0		;CHARGE BEAM
	move FORESIGHT,    EFFECT_FORESIGHT,           0, NORMAL,   STATUS,   100, 40,   0, 0
	move DESTINY_BOND, EFFECT_DESTINY_BOND,        0, GHOST,    STATUS,   100,  5,   0, 0
	move PERISH_SONG,  EFFECT_PERISH_SONG,         0, NORMAL,   STATUS,   100,  5,   0, 0
	move ICY_WIND,     EFFECT_SPEED_DOWN_HIT,     55, ICE,      SPECIAL,  100, 15, 100, 0
	move DETECT,       EFFECT_DEFENSE_UP,          0, FIGHTING, STATUS,   100, 20,   0, 0	;BULK UP
	move BONE_RUSH,    EFFECT_MULTI_HIT,          25, GROUND,   PHYSICAL,  80, 10,   0, 0
	move LOCK_ON,      EFFECT_LOCK_ON,             0, NORMAL,   STATUS,   100,  5,   0, 0
	move OUTRAGE,      EFFECT_RAMPAGE,           120, DRAGON,   PHYSICAL, 100, 15,   0, 0
	move SANDSTORM,    EFFECT_SANDSTORM,           0, ROCK,     STATUS,   100, 10,   0, 0
	move GIGA_DRAIN,   EFFECT_LEECH_HIT,          75, GRASS,    SPECIAL,  100, 10,   0, 0
	move ENDURE,       EFFECT_ENDURE,              0, NORMAL,   STATUS,   100, 10,   0, 0
	move CHARM,        EFFECT_ATTACK_DOWN_2,       0, FAIRY,    STATUS,  100, 20,   0, 0
	move ROLLOUT,      EFFECT_ROLLOUT,            30, ROCK,     PHYSICAL,  90, 20,   0, 0
	move FALSE_SWIPE,  EFFECT_FALSE_SWIPE,        40, NORMAL,   PHYSICAL, 100, 40,   0, 0
	move SWAGGER,      EFFECT_SWAGGER,             0, NORMAL,   STATUS,    90, 15, 100, 0
	move MILK_DRINK,   EFFECT_HEAL,                0, NORMAL,   STATUS,   100, 10,   0, 0
	move SPARK,        EFFECT_FLAME_WHEEL,        70, ELECTRIC, PHYSICAL, 100, 15,  30,25	;prz. speedup
	move FURY_CUTTER,  EFFECT_FURY_CUTTER,        40, BUG,      PHYSICAL,  95, 20,   0, 0
	move STEEL_WING,   EFFECT_DEFENSE_UP_HIT,     70, STEEL,    PHYSICAL, 100, 25,  40, 0
	move MEAN_LOOK,    EFFECT_MEAN_LOOK,           0, NORMAL,   STATUS,   100,  5,   0, 0
	move ATTRACT,      EFFECT_ATTRACT,             0, NORMAL,   STATUS,   100, 15,   0, 0	;free
	move SLEEP_TALK,   EFFECT_SLEEP_TALK,          0, NORMAL,   STATUS,   100, 10,   0, 0
	move HEAL_BELL,    EFFECT_HEAL_BELL,           0, NORMAL,   STATUS,   100,  8,   0, 0
	move RETURN,       EFFECT_RETURN,              1, NORMAL,   PHYSICAL,   100, 20,   0, 0
	move PRESENT,      EFFECT_PRESENT,             1, NORMAL,   PHYSICAL,  90, 15,   0, 0
	move FRUSTRATION,  EFFECT_FRUSTRATION,         1, NORMAL,   PHYSICAL, 100, 20,   0, 0
	move SAFEGUARD,    EFFECT_SAFEGUARD,           0, NORMAL,   STATUS,   100, 25,   0, 0
	move PAIN_SPLIT,   EFFECT_PAIN_SPLIT,          0, NORMAL,   STATUS,   100, 20,   0, 0
	move SACRED_FIRE,  EFFECT_SACRED_FIRE,       100, FIRE,     PHYSICAL,  95,  5,  55,111	;sun chance
	move MAGNITUDE,    EFFECT_SPEED_DOWN_HIT,     60, GROUND,   PHYSICAL, 100, 20,   0, 0		;BULLDOZE
	move DYNAMICPUNCH, EFFECT_LEECH_HIT,          75, FIGHTING, PHYSICAL, 100, 10,   0	, 0	;DRAIN PUNCH
	move MEGAHORN,     EFFECT_RECOIL_HIT,        120, BUG,      PHYSICAL, 100, 10,   0, 0
	move DRAGONBREATH, EFFECT_PARALYZE_HIT,       80, DRAGON,   SPECIAL,  100, 20,  30, 0
	move BATON_PASS,   EFFECT_BATON_PASS,          0, NORMAL,   STATUS,   100, 40,   0, 0
	move ENCORE,       EFFECT_ENCORE,              0, NORMAL,   STATUS,   100,  5,   0, 0
	move PURSUIT,      EFFECT_PURSUIT,            40, DARK,     PHYSICAL, 100, 20,   0, 0
	move RAPID_SPIN,   EFFECT_RAPID_SPIN,         50, NORMAL,   PHYSICAL, 100, 40,   0, 0
	move SWEET_SCENT,  EFFECT_EVASION_DOWN,        0, NORMAL,   STATUS,   100, 20,   0,121	;speed+2
	move IRON_TAIL,    EFFECT_DEFENSE_DOWN_HIT,	  85, STEEL,    PHYSICAL, 100, 15,  20, 0
	move METAL_CLAW,   EFFECT_ATTACK_UP_HIT,      65, STEEL,    PHYSICAL, 100, 15,  50, 0
	move VITAL_THROW,  EFFECT_ACCURACY_DOWN_HIT,  80, FIGHTING, PHYSICAL, 100, 10,  50,35	;accup, switch
	move MORNING_SUN,  EFFECT_MORNING_SUN,         0, NORMAL,   STATUS,   100,  5,   0, 0
	move SYNTHESIS,    EFFECT_SYNTHESIS,           0, GRASS,    STATUS,   100,  5,   0, 0
	move MOONLIGHT,    EFFECT_SP_ATK_DOWN_HIT,    95, FAIRY,    SPECIAL,  100, 15,  30, 0		;MOONBLAST
	move HIDDEN_POWER, EFFECT_SP_ATK_UP_2,        0, DARK,   STATUS,  100, 15,   0, 0	;NASTY PLOT
	move CROSS_CHOP,   EFFECT_RECOIL_HIT,        100, FIGHTING, PHYSICAL, 100,  5,   0, 0
	move TWISTER,      EFFECT_THUNDER,            60, FLYING,   SPECIAL,  100, 15,  30, 35	;hurricane, switch
	move RAIN_DANCE,   EFFECT_RAIN_DANCE,          0, WATER,    STATUS,    90, 7,   0, 0
	move SUNNY_DAY,    EFFECT_SUNNY_DAY,           0, FIRE,     STATUS,    90, 7,   0, 0
	move CRUNCH,       EFFECT_DEFENSE_DOWN_HIT,   80, DARK,     PHYSICAL,  100, 15,  20, 0
	move MIRROR_COAT,  EFFECT_MIRROR_COAT,         1, PSYCHIC,  SPECIAL,  100, 20,   0, 0
	move PSYCH_UP,     EFFECT_PSYCH_UP,            0, NORMAL,   STATUS,   100, 10,   0, 0
	move EXTREMESPEED, EFFECT_PRIORITY_HIT,       80, NORMAL,   PHYSICAL, 100, 5,   0, 0
	move ANCIENTPOWER, EFFECT_ALL_UP_HIT,         60, ROCK,     SPECIAL,  100,  5,  20, 0
	move SHADOW_BALL,  EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,    SPECIAL,  100, 15,  20, 0
	move FUTURE_SIGHT, EFFECT_FLINCH_HIT,         80, PSYCHIC,  PHYSICAL,  100, 15,  20, 0		;zen headbutt
	move ROCK_SMASH,   EFFECT_ATTACK_UP_HIT,      40, FIGHTING, PHYSICAL, 100, 15, 100, 0	;Power-up punch
	move WHIRLPOOL,    EFFECT_TRAP_TARGET,        55, WATER,    SPECIAL,   85, 15,  30,110	;startrain
	move BEAT_UP,      EFFECT_FLINCH_HIT,         80, DARK,     SPECIAL,  100, 15, 20, 0		;Dark pulse

MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	assert \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, NORMAL,       100, 25
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 10
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        85, 15
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        80, NORMAL,        85, 20
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,       100, 20
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           75, FIRE,         100, 15
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          75, ICE,          100, 15
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 15
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, NORMAL,       100, 30
	move GUILLOTINE,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move RAZOR_WIND,   CHARGE_EFFECT,               80, NORMAL,        75, 10
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30
	move CUT,          NO_ADDITIONAL_EFFECT,        50, NORMAL,        95, 30
	move GUST,         NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move WHIRLWIND,    SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,        85, 20
	move FLY,          FLY_EFFECT,                  70, FLYING,        95, 15
	move BIND,         TRAPPING_EFFECT,             15, NORMAL,        75, 20
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, NORMAL,        75, 20
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        35, GRASS,        100, 10
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       120, NORMAL,        75,  5
	move JUMP_KICK,    JUMP_KICK_EFFECT,            70, FIGHTING,      95, 25
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         60, FIGHTING,      85, 15
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 15
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 25
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20
	move HORN_DRILL,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 15
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,        85, 20
	move TAKE_DOWN,    RECOIL_EFFECT,               90, NORMAL,        85, 20
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,   90, NORMAL,       100, 20
	move DOUBLE_EDGE,  RECOIL_EFFECT,              100, NORMAL,       100, 15
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         15, POISON,       100, 35
	move TWINEEDLE,    TWINEEDLE_EFFECT,            25, BUG,          100, 20
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  14, BUG,           85, 20
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move BITE,         FLINCH_SIDE_EFFECT1,         60, NORMAL,       100, 25
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 40
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,       100, 20
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        55, 15
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        55, 20
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,        90, 20
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        55, 20
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    40, POISON,       100, 30
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           95, FIRE,         100, 15
	move MIST,         MIST_EFFECT,                  0, ICE,          100, 30
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       120, WATER,         80,  5
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          95, ICE,          100, 10
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         120, ICE,           90,  5
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 20
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, NORMAL,        90,  5
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        80, FLYING,       100, 20
	move SUBMISSION,   RECOIL_EFFECT,               80, FIGHTING,      80, 25
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING,      90, 20
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 20
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 15
	move ABSORB,       DRAIN_HP_EFFECT,             20, GRASS,        100, 20
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             40, GRASS,        100, 10
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 40
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25
	move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10
	move POISONPOWDER, POISON_EFFECT,                0, POISON,        75, 35
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 30
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         75, 15
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,   70, GRASS,        100, 20
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,           95, 40
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 10
	move FIRE_SPIN,    TRAPPING_EFFECT,             15, FIRE,          70, 15
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 15
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      PARALYZE_SIDE_EFFECT1,      120, ELECTRIC,      70, 10
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        50, ROCK,          65, 15
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 10
	move FISSURE,      OHKO_EFFECT,                  1, GROUND,        30,  5
	move DIG,          CHARGE_EFFECT,              100, GROUND,       100, 10
	move TOXIC,        POISON_EFFECT,                0, POISON,        85, 10
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 25
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 10
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  60, 20
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40
	move AGILITY,      SPEED_UP2_EFFECT,             0, PSYCHIC_TYPE, 100, 30
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30
	move RAGE,         RAGE_EFFECT,                 20, NORMAL,       100, 20
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 15
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        85, 40
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 20
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 10
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, WATER,        100, 40
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30
	move HAZE,         HAZE_EFFECT,                  0, ICE,          100, 30
	move REFLECT,      REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, NORMAL,       100, 30
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 10
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 10
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20
	move SELFDESTRUCT, EXPLODE_EFFECT,             130, NORMAL,       100,  5
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       100, NORMAL,        75, 10
	move LICK,         PARALYZE_SIDE_EFFECT2,       20, GHOST,        100, 30
	move SMOG,         POISON_SIDE_EFFECT2,         20, POISON,        70, 20
	move SLUDGE,       POISON_SIDE_EFFECT2,         65, POISON,       100, 20
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         65, GROUND,        85, 20
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          85,  5
	move WATERFALL,    NO_ADDITIONAL_EFFECT,        80, WATER,        100, 15
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,         75, 10
	move SWIFT,        SWIFT_EFFECT,                60, NORMAL,       100, 20
	move SKULL_BASH,   CHARGE_EFFECT,              100, NORMAL,       100, 15
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,       100, 15
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      10, NORMAL,       100, 35
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20
	move KINESIS,      ACCURACY_DOWN1_EFFECT,        0, PSYCHIC_TYPE,  80, 15
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,            85, FIGHTING,      90, 20
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,        75, 30
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        55, 40
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             20, BUG,          100, 15
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        75, 10
	move SKY_ATTACK,   CHARGE_EFFECT,              140, FLYING,        90,  5
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30
	move DIZZY_PUNCH,  NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 10
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,        100, 15
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,        70, 20
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE,  80, 15
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, POISON,       100, 40
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,        90, WATER,         85, 10
	move EXPLOSION,    EXPLODE_EFFECT,             170, NORMAL,       100,  5
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        80, 15
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10
	move REST,         HEAL_EFFECT,                  0, PSYCHIC_TYPE, 100, 10
	move ROCK_SLIDE,   NO_ADDITIONAL_EFFECT,        75, ROCK,          90, 10
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,       100, 30
	move TRI_ATTACK,   NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 10
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 10
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move STRUGGLE,     RECOIL_EFFECT,               50, NORMAL,       100, 10
	move METRONOME,    SPLASH_EFFECT,                0, NORMAL,       100,  1  ; Sketch
	move ROLLING_KICK, SPLASH_EFFECT,               10, FIGHTING,      90, 10  ; Triple Kick
	move TACKLE,       NO_ADDITIONAL_EFFECT,        40, DARK,         100, 10  ; Thief
	move STRING_SHOT,  SPLASH_EFFECT,                0, BUG,          100, 10  ; Spider Web
	move FLASH,  	   SPLASH_EFFECT,             	 0, NORMAL,       100,  5  ; Mind Reader
	move DREAM_EATER,  SPLASH_EFFECT,           	 0, GHOST,        100, 15  ; Nightmare
	move FIRE_SPIN,    SPLASH_EFFECT,        		60, FIRE,         100, 25  ; Flame Wheel
	move REST,         SPLASH_EFFECT,               40, NORMAL,       100, 15  ; Snore
	move AMNESIA,      SPLASH_EFFECT,                0, CURSE,        100, 10  ; Curse
	move THRASH,       SPLASH_EFFECT,            	 1, NORMAL,       100, 15  ; Flail
	move CONVERSION,   SPLASH_EFFECT,         		 0, NORMAL,       100, 30  ; Conversion 2
	move HYPER_BEAM,   NO_ADDITIONAL_EFFECT,       100, FLYING,        95,  5  ; Aeroblast
	move SPORE, 	   SPEED_DOWN2_EFFECT,      	 0, GRASS,         85, 40  ; Cotton Spore
	move STRENGTH,     SPLASH_EFFECT,            	 1, FIGHTING,     100, 15  ; Reversal
	move LEER,         SPLASH_EFFECT,                0, GHOST,        100, 10  ; Spite
	move BLIZZARD,     SPLASH_EFFECT,         		40, ICE,          100, 25  ; Powder Snow
	move DEFENSE_CURL, SPLASH_EFFECT,                0, NORMAL,       100, 10  ; Protect
	move COMET_PUNCH,  NO_ADDITIONAL_EFFECT,       	40, FIGHTING,     100, 30  ; Mach Punch
	move LEER,   	   SPEED_DOWN2_EFFECT,           0, NORMAL,        90, 10  ; Scary Face
	move QUICK_ATTACK, SWIFT_EFFECT,         		60, DARK,         100, 20  ; Faint Attack
	move LOVELY_KISS,  CONFUSION_EFFECT,             0, NORMAL,        75, 10  ; Sweet Kiss
	move SHARPEN,      SPLASH_EFFECT,          		 0, NORMAL,       100, 10  ; Belly Drum
	move SLUDGE,  	   POISON_SIDE_EFFECT2,         90, POISON,       100, 10  ; Sludge Bomb
	move SLUDGE,       SPLASH_EFFECT,  				20, GROUND,       100, 10  ; Mud Slap
	move BARRAGE,      SPLASH_EFFECT,  				65, WATER,         85, 10  ; Octazooka
	move SPIKE_CANNON, SPLASH_EFFECT,              	 0, GROUND,       100, 20  ; Spikes
	move THUNDERBOLT,  SPLASH_EFFECT,      		   100, ELECTRIC,      50,  5  ; Zap Cannon
	move LEER,         SPLASH_EFFECT,           	 0, NORMAL,       100, 40  ; Foresight
	move AMNESIA, 	   SPLASH_EFFECT,        		 0, GHOST,        100,  5  ; Destiny Bond
	move SING,  	   SPLASH_EFFECT,         		 0, NORMAL,       100,  5  ; Perish Song
	move BLIZZARD,     SPLASH_EFFECT,     			55, ICE,          95,  15  ; Icy Wind
	move LEER,         SPLASH_EFFECT,             	 0, FIGHTING,     100,  5  ; Detect
	move BONE_CLUB,    SPLASH_EFFECT,          		25, GROUND,        80, 10  ; Bone Rush
	move GLARE,        SPLASH_EFFECT,             	 0, NORMAL,       100,  5  ; Lock On
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,   90, DRAGON,       100, 15  ; Outrage
	move HAZE,         SPLASH_EFFECT,           	 0, ROCK,         100, 10  ; Sandstorm
	move MEGA_DRAIN,   SPLASH_EFFECT,          		60, GRASS,        100,  5  ; Giga Drain
	move DEFENSE_CURL, SPLASH_EFFECT,              	 0, NORMAL,       100, 10  ; Endure
	move LOVELY_KISS,  ATTACK_DOWN2_EFFECT,       	 0, NORMAL,       100, 20  ; Charm
	move BARRAGE,      SPLASH_EFFECT,            	30, ROCK,          90, 20  ; Rollout
	move SLASH,  	   SPLASH_EFFECT,        		40, NORMAL,       100, 40  ; False Swipe
	move FOCUS_ENERGY, SPLASH_EFFECT,             	 0, NORMAL,        90, 15  ; Swagger
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10  ; Milk Drink
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT2,       65, ELECTRIC,     100, 20  ; Spark
	move CUT,		   SPLASH_EFFECT,        		10, BUG,           95, 20  ; Fury Cutter
	move WING_ATTACK,  SPLASH_EFFECT,     			70, STEEL,         90, 25  ; Steel Wing
	move GLARE,        SPLASH_EFFECT,           	 0, NORMAL,       100,  5  ; Mean Look
	move LOVELY_KISS,  SPLASH_EFFECT,             	 0, NORMAL,       100, 15  ; Attract
	move REST,   	   SPLASH_EFFECT,          		 0, NORMAL,       100, 10  ; Sleep Talk
	move RECOVER,      SPLASH_EFFECT,           	 0, NORMAL,       100,  5  ; Heal Bell
	move STRENGTH,     SPLASH_EFFECT,              	 1, NORMAL,       100, 20  ; Return
	move EGG_BOMB,     SPLASH_EFFECT,             	 1, NORMAL,        90, 15  ; Present
	move STRUGGLE,     SPLASH_EFFECT,         		 1, NORMAL,       100, 20  ; Frustration
	move REFLECT,      SPLASH_EFFECT,           	 0, NORMAL,       100, 25  ; Safeguard
	move AMNESIA,      SPLASH_EFFECT,          		 0, NORMAL,       100, 20  ; Pain Split
	move FIRE_BLAST,   SPLASH_EFFECT,       	   100, FIRE,          95,  5  ; Sacred Fire
	move EARTHQUAKE,   SPLASH_EFFECT,           	 1, GROUND,       100, 30  ; Magnitude
	move MEGA_PUNCH,   SPLASH_EFFECT,       	   100, FIGHTING,      50,  5  ; Dynamic Punch
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,       120, BUG,           85, 10  ; Megahorn
	move DRAGON_RAGE,  PARALYZE_SIDE_EFFECT2,       60, DRAGON,       100, 20  ; Dragonbreath
	move SPLASH,   	   SPLASH_EFFECT,          		 0, NORMAL,       100, 40  ; Baton Pass
	move SPLASH,       SPLASH_EFFECT,              	 0, NORMAL,       100,  5  ; Encore
	move SCRATCH,      SPLASH_EFFECT,            	40, DARK,         100, 20  ; Pursuit
	move SONICBOOM,    SPLASH_EFFECT,         		20, NORMAL,       100, 40  ; Rapid Spin
	move RAZOR_LEAF,   SPLASH_EFFECT,        		 0, NORMAL,       100, 20  ; Sweet Scent
	move SLAM,         DEFENSE_DOWN_SIDE_EFFECT,   100, STEEL,         75, 15  ; Iron Tail
	move SLASH,   	   SPLASH_EFFECT,      			50, STEEL,         95, 35  ; Metal Claw
	move SEISMIC_TOSS, SWIFT_EFFECT,        		70, FIGHTING,     100, 10  ; Vital Throw
	move RECOVER,  	   SPLASH_EFFECT,         		 0, NORMAL,       100,  5  ; Morning Sun
	move RECOVER,      SPLASH_EFFECT,           	 0, GRASS,        100,  5  ; Synthesis
	move RECOVER,      SPLASH_EFFECT,           	 0, NORMAL,       100,  5  ; Moonlight
	move PSYWAVE, 	   SPLASH_EFFECT,        		 1, NORMAL,       100, 15  ; Hidden Power
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,       100, FIGHTING,      80,  5  ; Cross Chop
	move GUST,         SPLASH_EFFECT,            	40, DRAGON,       100, 20  ; Twister
	move MIST,   	   SPLASH_EFFECT,          		 0, WATER,         90,  5  ; Rain Dance
	move FLASH,        SPLASH_EFFECT,           	 0, FIRE,          90,  5  ; Sunny Day
	move BITE,	       SPLASH_EFFECT,    			80, DARK,         100, 15  ; Crunch
	move COUNTER,      SPLASH_EFFECT,         		 1, PSYCHIC_TYPE, 100, 20  ; Mirror Coat
	move FOCUS_ENERGY, SPLASH_EFFECT,            	 0, NORMAL,       100, 10  ; Psych Up
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,       	80, NORMAL,       100,  5  ; Extremespeed
	move ROCK_SLIDE,   SPLASH_EFFECT,         		60, ROCK,         100,  5  ; Ancientpower
	move EGG_BOMB,     SPLASH_EFFECT,    			80, GHOST,        100, 15  ; Shadow Ball
	move LEER,  	   SPLASH_EFFECT,       		80, PSYCHIC_TYPE, 90, 15  ; Future Sight
	move KARATE_CHOP,  SPLASH_EFFECT,   			20, FIGHTING,     100, 15  ; Rock Smash
	move GUST,         SPLASH_EFFECT,        		15, WATER,         70, 15  ; Whirlpool
	move STRENGTH,     SPLASH_EFFECT,            	10, DARK,         100, 10  ; Beat Up
	move FIRE_BLAST,   HYPER_BEAM_EFFECT,          150, FIRE,          90,  5  ; Blast Burn
	move HYDRO_PUMP,   HYPER_BEAM_EFFECT,          150, WATER,         90,  5  ; Hydro Cannon
	move PETAL_DANCE,  HYPER_BEAM_EFFECT,          150, GRASS,         90,  5  ; Frenzy Plant
	move TAKE_DOWN,    SPLASH_EFFECT,              120, ELECTRIC,     100, 15  ; Volt Tackle
	assert_table_length NUM_ATTACKS

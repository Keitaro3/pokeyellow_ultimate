; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Kanto landmarks
	const LANDMARK_SPECIAL           ; 00
	const LANDMARK_PALLET_TOWN       ; 01
	const LANDMARK_ROUTE_1           ; 02
	const LANDMARK_VIRIDIAN_CITY     ; 03
	const LANDMARK_ROUTE_2           ; 04
	const LANDMARK_VIRIDIAN_FOREST	 ; 05
	const LANDMARK_PEWTER_CITY       ; 06
	const LANDMARK_ROUTE_3           ; 07
	const LANDMARK_MT_MOON           ; 08
	const LANDMARK_ROUTE_4           ; 09
	const LANDMARK_CERULEAN_CITY     ; 0a
	const LANDMARK_CERULEAN_CAVE	 ; 0b
	const LANDMARK_ROUTE_24          ; 0c
	const LANDMARK_ROUTE_25          ; 0d
	const LANDMARK_SEA_COTTAGE		 ; 0e
	const LANDMARK_ROUTE_5           ; 0f
	const LANDMARK_UNDERGROUND_PATH  ; 10
	const LANDMARK_ROUTE_6           ; 11
	const LANDMARK_VERMILION_CITY    ; 12
	const LANDMARK_DIGLETTS_CAVE     ; 13
	const LANDMARK_ROUTE_7           ; 14
	const LANDMARK_ROUTE_8           ; 15
	const LANDMARK_ROUTE_9           ; 16
	const LANDMARK_ROUTE_10          ; 17
	const LANDMARK_ROCK_TUNNEL       ; 18
	const LANDMARK_POWER_PLANT       ; 19
	const LANDMARK_LAVENDER_TOWN     ; 1a
	const LANDMARK_POKEMON_TOWER     ; 1b
	const LANDMARK_CELADON_CITY      ; 1c
	const LANDMARK_ROCKET_HQ		 ; 1d
	const LANDMARK_SAFFRON_CITY      ; 1e
	const LANDMARK_SILPH_CO			 ; 1f
	const LANDMARK_ROUTE_11          ; 20
	const LANDMARK_ROUTE_12          ; 21
	const LANDMARK_ROUTE_13          ; 22
	const LANDMARK_ROUTE_14          ; 23
	const LANDMARK_ROUTE_15          ; 24
	const LANDMARK_ROUTE_16          ; 25
	const LANDMARK_ROUTE_17          ; 26
	const LANDMARK_ROUTE_18          ; 27
	const LANDMARK_FUCHSIA_CITY      ; 28
	const LANDMARK_SAFARI_ZONE		 ; 29
	const LANDMARK_ROUTE_19          ; 2a
	const LANDMARK_ROUTE_20          ; 2b
	const LANDMARK_SEAFOAM_ISLANDS   ; 2c
	const LANDMARK_CINNABAR_ISLAND   ; 2d
	const LANDMARK_POKEMON_MANSION	 ; 2e
	const LANDMARK_ROUTE_21          ; 2f
	const LANDMARK_ROUTE_22          ; 30
	const LANDMARK_ROUTE_23          ; 31
	const LANDMARK_VICTORY_ROAD      ; 32
	const LANDMARK_INDIGO_PLATEAU    ; 33
	const LANDMARK_POKEMON_LEAGUE	 ; 34
	const LANDMARK_SS_ANNE         	 ; 35
	
SEVII_123_LANDMARK EQU const_value
	const LANDMARK_ONE_ISLAND		 ; 36
	const LANDMARK_TREASURE_BEACH	 ; 37
	const LANDMARK_KINDLE_ROAD		 ; 38
	const LANDMARK_EMBER_SPA		 ; 39
	const LANDMARK_MT_EMBER			 ; 3a

; Regions
	const_def
	const KANTO_REGION ; 0
	const SEVII_ISLES_123 ; 1
	const SEVII_ISLES_45 ; 2
	const SEVII_ISLES_67 ; 3
NUM_REGIONS EQU const_value

; Kanto fly flags
	const_def
	const SPAWN_PALLET     ; 00
	const SPAWN_VIRIDIAN   ; 01
	const SPAWN_PEWTER     ; 02
	const SPAWN_ROUTE_4    ; 03
	const SPAWN_CERULEAN   ; 04
	const SPAWN_ROUTE_10   ; 05
	const SPAWN_LAVENDER   ; 06
	const SPAWN_VERMILION  ; 07
	const SPAWN_CELADON    ; 08
	const SPAWN_FUCHSIA    ; 09
	const SPAWN_CINNABAR   ; 0a
	const SPAWN_INDIGO     ; 0b
	const SPAWN_SAFFRON    ; 0c

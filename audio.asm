SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "audio/play_battle_music.asm"
INCLUDE "data/trainers/encounter_music.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/rocketbattle.asm"
INCLUDE "audio/music/darkcave.asm"
INCLUDE "audio/music/championbattle.asm"
INCLUDE "audio/music/ssanne.asm"
INCLUDE "audio/music/ceruleancity.asm"
INCLUDE "audio/music/vermilioncity.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/ruinsofalphinterior.asm"
INCLUDE "audio/music/trainervictory.asm"
INCLUDE "audio/music/route1.asm"
INCLUDE "audio/music/route3.asm"
INCLUDE "audio/music/route12.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/kantogymbattle.asm"
INCLUDE "audio/music/kantotrainerbattle.asm"
INCLUDE "audio/music/kantowildbattle.asm"
INCLUDE "audio/music/pokemoncenter.asm"
INCLUDE "audio/music/looklass.asm"
INCLUDE "audio/music/lookyoungster.asm"
INCLUDE "audio/music/viridianforest.asm"
INCLUDE "audio/music/mtmoon.asm"
INCLUDE "audio/music/showmearound.asm"
INCLUDE "audio/music/gamecorner.asm"
INCLUDE "audio/music/bicycle.asm"
INCLUDE "audio/music/looksage.asm"
INCLUDE "audio/music/lighthouse.asm"
INCLUDE "audio/music/lakeofrage.asm"
INCLUDE "audio/music/indigoplateau.asm"
INCLUDE "audio/music/rockethideout.asm"
INCLUDE "audio/music/cinnabar.asm"
INCLUDE "audio/music/jigglypuffsong.asm"
INCLUDE "audio/music/lavendertown.asm"
INCLUDE "audio/music/route24.asm"
INCLUDE "audio/music/violetcity.asm"
INCLUDE "audio/music/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/evolution.asm"
INCLUDE "audio/music/printer.asm"
INCLUDE "audio/music/viridiancity.asm"
INCLUDE "audio/music/slowcity.asm"
INCLUDE "audio/music/celadoncity.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/wildpokemonvictory.asm"
INCLUDE "audio/music/successfulcapture.asm"
assert BANK(Music_WildPokemonVictory) == BANK(Music_SuccessfulCapture)

INCLUDE "audio/music/gymleadervictory.asm"
INCLUDE "audio/music/gym.asm"
INCLUDE "audio/music/pallettown.asm"
INCLUDE "audio/music/oakslab.asm"
INCLUDE "audio/music/profoak.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/meetrival.asm"
INCLUDE "audio/music/meetrival2.asm"
INCLUDE "audio/music/aftertherivalfight.asm"
INCLUDE "audio/music/aftertherivalfight2.asm"
assert BANK(Music_MeetRival) == BANK(Music_AfterTheRivalFight)

INCLUDE "audio/music/surf.asm"
INCLUDE "audio/music/azaleatown.asm"
INCLUDE "audio/music/cherrygrovecity.asm"
INCLUDE "audio/music/unioncave.asm"
INCLUDE "audio/music/johtowildbattle.asm"
INCLUDE "audio/music/johtowildbattlenight.asm"
assert BANK(Music_JohtoWildBattle) == BANK(Music_JohtoWildBattleNight)

INCLUDE "audio/music/pokemontower.asm"
INCLUDE "audio/music/pokemonmansion.asm"
INCLUDE "audio/music/victoryroad.asm"
INCLUDE "audio/music/introbattle.asm"
INCLUDE "audio/music/lookevil.asm"
INCLUDE "audio/music/lookrocket.asm"
INCLUDE "audio/music/silphco.asm"
INCLUDE "audio/music/lookkimonogirl.asm"
INCLUDE "audio/music/surfingpikachu.asm"
INCLUDE "audio/music/yellowunusedsong.asm"
INCLUDE "audio/music/battletowertheme.asm"


SECTION "Songs 5", ROMX

INCLUDE "audio/music/suicunebattle.asm"
INCLUDE "audio/music/battletowerlobby.asm"
INCLUDE "audio/music/mobilecenter.asm"
INCLUDE "audio/music/credits.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

INCLUDE "audio/cries.asm"

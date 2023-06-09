Music_PokemonMansion:
	channel_count 4
	channel 1, Music_PokemonMansion_Ch1
	channel 2, Music_PokemonMansion_Ch2
	channel 3, Music_PokemonMansion_Ch3
	channel 4, Music_PokemonMansion_Ch4

Music_PokemonMansion_Ch1::
	tempo 144
	volume 7, 7
	vibrato 11, 2, 5
	duty_cycle 2
.mainloop:
.loop1:
	stereo_panning TRUE, FALSE
	note_type 12, 6, 2
	octave 5
	note E_, 1
	note E_, 1
	stereo_panning TRUE, TRUE
	octave 4
	note B_, 1
	note B_, 1
	stereo_panning FALSE, TRUE
	note C_, 1
	rest 2
	octave 5
	note B_, 2
	stereo_panning TRUE, TRUE
	note E_, 2
	stereo_panning TRUE, FALSE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	note B_, 2
	stereo_panning FALSE, TRUE
	note E_, 2
	note C_, 1
	octave 5
	note B_, 1
	rest 2
	sound_loop 14, .loop1
	note_type 12, 10, 5
	rest 16
	rest 16
	rest 15
	stereo_panning TRUE, FALSE
	octave 4
	note C_, 1
	stereo_panning TRUE, TRUE
	octave 5
	note B_, 1
	note B_, 2
	sound_loop 0, .mainloop

Music_PokemonMansion_Ch2::
	duty_cycle 2
	pitch_offset 1
	vibrato 10, 2, 4
	note_type 12, 12, 2
.introloop:
	rest 16
	rest 16
	sound_loop 4, .introloop
.mainloop:
	note_type 12, 12, 2
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	octave 3
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note G_, 4
	stereo_panning FALSE, TRUE
	note G#, 4
	rest 4
	note A#, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note G_, 4
	stereo_panning FALSE, TRUE
	note G#, 4
	stereo_panning TRUE, FALSE
	note G_, 4
	stereo_panning FALSE, TRUE
	note D#, 4
	sound_loop 0, .mainloop

.sub1:
	octave 3
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note G_, 4
	stereo_panning FALSE, TRUE
	note G#, 4
	stereo_panning TRUE, FALSE
	note A_, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note D#, 4
	stereo_panning TRUE, FALSE
	note B_, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note G_, 4
	stereo_panning FALSE, TRUE
	note G#, 4
	rest 4
	note A#, 4
	sound_ret

Music_PokemonMansion_Ch3::
	note_type 12, 1, 1
.mainloop:
.loop1:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	sound_loop 8, .loop1
	note E_, 16
	note D#, 16
	note G_, 16
	note G#, 8
	note D#, 8
	sound_loop 0, .mainloop

Music_PokemonMansion_Ch4::
	toggle_legacy_drums
	toggle_noise 1
	drum_speed 6
	rest 16
	rest 16
	rest 16
	rest 16
	stereo_panning TRUE, TRUE
.mainloop:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 7, 4
	drum_note 5, 2
	drum_note 5, 2
	rest 2
	rest 10
	rest 8
	drum_note 7, 8
	sound_loop 0, .mainloop

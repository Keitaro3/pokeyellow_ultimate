Music_ViridianForest:
	channel_count 4
	channel 1, Music_ViridianForest_Ch1
	channel 2, Music_ViridianForest_Ch2
	channel 3, Music_ViridianForest_Ch3
	channel 4, Music_ViridianForest_Ch4

Music_ViridianForest_Ch1::
	tempo 144
	volume 7, 7
	stereo_panning FALSE, TRUE
	duty_cycle 3
	pitch_offset 1
	vibrato 10, 1, 4
.mainloop:
.loop1:
	note_type 12, 11, 2
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	octave 5
	note C#, 4
	note C#, 4
	note C#, 4
	note C#, 4
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	octave 2
	note G_, 2
	note A#, 4
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A#, 2
	note B_, 2
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A_, 4
	note F#, 2
	sound_loop 2, .loop1
	note_type 12, 1, -7
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainloop

Music_ViridianForest_Ch2::
	stereo_panning TRUE, TRUE
	vibrato 11, 1, 5
.mainloop:
.loop1:
	duty_cycle 3
	note_type 12, 12, 2
	octave 3
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	octave 4
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note F#, 4
	sound_loop 2, .loop1
	octave 3
	note E_, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note E_, 2
	octave 5
	note E_, 2
	rest 2
	note D#, 2
	rest 2
	note D_, 2
	rest 2
	note C#, 2
	note C_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note A#, 2
	note C#, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note G_, 2
	octave 5
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note F_, 2
	rest 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 12, 7
	duty_cycle 1
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note D_, 16
	sound_loop 0, .mainloop

Music_ViridianForest_Ch3::
	stereo_panning TRUE, FALSE
	note_type 12, 1, 3
	vibrato 8, 2, 6
.mainloop:
.loop1:
	sound_call .sub2
	sound_loop 16, .loop1
	note E_, 4
	rest 4
	rest 4
	note E_, 4
	note C_, 4
	rest 4
	rest 4
	note C_, 4
	note D_, 4
	rest 4
	rest 4
	note D_, 4
	octave 3
	note A#, 4
	rest 4
	rest 4
	note A#, 4
.loop2:
	octave 5
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note A#, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 5
	note G#, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note A#, 2
	rest 2
	note E_, 2
	rest 2
	note D#, 2
	rest 2
	note A_, 2
	rest 2
	note G#, 2
	rest 2
	note E_, 2
	rest 2
	note F#, 2
	rest 2
	note D#, 2
	rest 2
	sound_loop 3, .loop2
	octave 4
	note E_, 4
	note B_, 4
	note A#, 4
	octave 5
	note D_, 4
	note C#, 4
	octave 4
	note G#, 4
	note G_, 4
	note B_, 4
	note A#, 4
	note E_, 4
	note D#, 4
	note A_, 4
	note G#, 4
	note E_, 4
	note F#, 4
	note D#, 4
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	octave 3
	note E_, 16
	note F_, 16
	note G_, 16
	octave 3
	note B_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_loop 0, .mainloop

.sub1: ; unreferenced
	octave 2
	note G_, 2
	note A#, 4
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A_, 2
	note A#, 2
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A#, 2
	note G_, 2
	rest 2
	sound_ret

.sub2:
	octave 4
	note E_, 2
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	octave 4
	note F#, 4
	sound_ret

Music_ViridianForest_Ch4::
	toggle_legacy_drums
	toggle_noise 1
	drum_speed 12
.mainloop:
	drum_note 5, 4
	drum_note 6, 4
	drum_note 5, 4
	drum_note 3, 4
	drum_note 5, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 2, 4
	sound_loop 0, .mainloop

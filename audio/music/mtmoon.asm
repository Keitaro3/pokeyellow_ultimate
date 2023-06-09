Music_MtMoon:
	channel_count 4
	channel 1, Music_MtMoon_Ch1
	channel 2, Music_MtMoon_Ch2
	channel 3, Music_MtMoon_Ch3
	channel 4, Music_MtMoon_Ch4

Music_MtMoon_Ch1::
	tempo 160
	volume 7, 7
	duty_cycle 3
	pitch_offset 1
	vibrato 8, 1, 4
.mainloop:
	stereo_panning FALSE, TRUE
	note_type 12, 12, 3
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	note D#, 2
	note E_, 2
.loop2:
	sound_call .sub2
	sound_loop 4, .loop2
.loop3:
	sound_call .sub1
	sound_loop 4, .loop3
	octave 4
	note F_, 2
	note F_, 2
	rest 2
	note F_, 2
	note E_, 2
	note E_, 2
	note D#, 2
	note D#, 2
	rest 2
	note D#, 2
	note D_, 2
	note D_, 2
	sound_call .sub7
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	note D_, 2
	rest 2
	note D_, 2
	note D#, 2
	note D#, 2
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	note F_, 2
	note F_, 2
.loop4:
	sound_call .sub3
	sound_loop 4, .loop4
.loop5:
	sound_call .sub4
	sound_loop 3, .loop5
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note F_, 2
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	sound_call .sub5
	sound_call .sub5
	octave 3
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	rest 16
	rest 8
	sound_call .sub6
	sound_call .sub6
	sound_call .sub6
	sound_call .sub6
	note D#, 2
	rest 16
	rest 16
	sound_loop 0, .mainloop

.sub1:
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_ret

.sub2:
	note E_, 2
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G#, 2
	sound_ret

.sub3:
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	sound_ret

.sub4:
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	sound_ret

.sub5:
	octave 3
	note G#, 2
	note E_, 2
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note G#, 2
	note E_, 2
	octave 4
	note C_, 2
	sound_ret

.sub6:
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	sound_ret

.sub7:
	tempo 168
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	tempo 176
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	tempo 184
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	tempo 192
	octave 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	tempo 200
	octave 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	tempo 208
	octave 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	tempo 216
	octave 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	tempo 224
	octave 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	tempo 160
	sound_ret

Music_MtMoon_Ch2::
	vibrato 11, 1, 5
	duty_cycle 3
.mainloop:
	stereo_panning TRUE, TRUE
	note_type 12, 13, 3
	octave 4
	note D#, 6
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	note A#, 2
	note B_, 6
	octave 4
	note C#, 8
	rest 2
	note G#, 6
	note F#, 6
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note E_, 2
	note D#, 2
	note E_, 6
	note F#, 6
	note E_, 4
	note D#, 6
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	note A#, 2
	note B_, 6
	octave 4
	note C#, 8
	rest 2
	note G#, 2
	note G#, 2
	rest 2
	note G#, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	rest 2
	note A#, 2
	note B_, 2
	note B_, 2
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	rest 8
	octave 4
	note B_, 2
	note B_, 2
	rest 2
	note B_, 2
	note A#, 2
	note A#, 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	note G#, 2
	note G#, 2
	note C#, 8
	rest 2
	octave 3
	note B_, 6
	note A#, 2
	note B_, 2
	octave 4
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 6
	note G_, 6
	octave 3
	note G_, 8
	rest 2
	note F_, 6
	note E_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note G_, 6
	note F_, 2
	note G_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note G_, 6
	note A_, 6
	octave 4
	note C#, 6
	note G_, 8
	rest 2
	note F_, 6
	note E_, 2
	note F_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note G_, 6
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note G_, 6
	note A_, 6
	octave 5
	note C#, 6
	octave 4
	note F#, 8
	rest 2
	note E_, 6
	note D#, 2
	note E_, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note G#, 6
	octave 5
	note C_, 6
	octave 3
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 2
	note E_, 2
	note G#, 2
	octave 3
	note C_, 2
	note E_, 2
	note G#, 2
	octave 4
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_loop 0, .mainloop

Music_MtMoon_Ch3::
.mainloop:
	note_type 12, 1, 2
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 12
	stereo_panning TRUE, FALSE
	note_type 6, 1, 0
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	rest 2
	stereo_panning FALSE, TRUE
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	rest 16
	rest 16
	rest 10
	stereo_panning FALSE, TRUE
	octave 5
	note E_, 8
	stereo_panning TRUE, FALSE
	octave 4
	note B_, 8
	stereo_panning FALSE, TRUE
	octave 5
	note D#, 8
	stereo_panning TRUE, FALSE
	octave 4
	note A#, 8
	stereo_panning FALSE, TRUE
	octave 5
	note D_, 8
	stereo_panning TRUE, FALSE
	octave 4
	note A_, 8
	stereo_panning FALSE, TRUE
	octave 5
	note C#, 8
	stereo_panning TRUE, FALSE
	octave 4
	note G#, 8
	stereo_panning FALSE, TRUE
	octave 5
	note C_, 8
	stereo_panning TRUE, FALSE
	octave 4
	note G_, 8
	stereo_panning FALSE, TRUE
	note B_, 8
	stereo_panning TRUE, FALSE
	note F#, 8
	stereo_panning FALSE, TRUE
	note A#, 8
	stereo_panning TRUE, FALSE
	note F_, 8
	stereo_panning FALSE, TRUE
	note A_, 8
	stereo_panning TRUE, FALSE
	note E_, 8
	rest 16
	rest 16
	rest 8
	stereo_panning FALSE, TRUE
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	rest 2
	stereo_panning TRUE, FALSE
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	rest 10
	rest 16
	note_type 12, 1, 0
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	sound_loop 0, .mainloop

Music_MtMoon_Ch4::
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	sound_ret

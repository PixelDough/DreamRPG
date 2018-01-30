///@param sound_id
///@param sound_variation
///@param loop

var _sound = audio_play_sound(argument0, 100, argument2);
audio_sound_pitch(_sound, 1 + argument1 - (argument1/2));
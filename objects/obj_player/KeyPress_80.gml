audio_play_sound(sou_click,0,0)
if audio_group_get_gain(audiogroup_background) == 1{
	audio_group_set_gain(audiogroup_background,0,1)
	image_index = 1}
else if audio_group_get_gain(audiogroup_background) == 0{
	audio_group_set_gain(audiogroup_background,1,1)
	image_index = 0}
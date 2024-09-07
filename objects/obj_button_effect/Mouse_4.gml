audio_play_sound(sou_click,0,0)
if audio_group_get_gain(audiogroup_soundefffect) == 1{
	audio_group_set_gain(audiogroup_soundefffect,0,1000)
	image_index = 1}
else if audio_group_get_gain(audiogroup_soundefffect) == 0{
	audio_group_set_gain(audiogroup_soundefffect,1,1000)
	image_index = 0}
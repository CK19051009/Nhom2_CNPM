if global.kick == 1 and count == 0{
	global.kick = 0
	alarm[0] = 1
	count = 1
	audio_play_sound(sou_chest_1, 0, 0, 1.0, undefined, 1.0);
	y-=20
}
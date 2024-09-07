if global.coin >= Price{
	global.coin -=Price
	global.hp += 50
	audio_play_sound(sou_heal,0,false)
}
else
	audio_play_sound(sou_wobble,0,false)
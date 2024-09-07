if global.coin >= Price{
	global.coin -=Price
	global.lives += 1
	audio_play_sound(sou_key,0,false)
}
else
	audio_play_sound(sou_wobble,0,false)
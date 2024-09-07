if global.coin >= Price{
	global.coin -=Price
	audio_play_sound(sou_add_bullet,0,false)
	if global.weapon_gun = "gun"
		global.bullet += 10
	else if global.weapon_gun = "machine_gun"
		global.machine_bullet += 100
}
else
	audio_play_sound(sou_wobble,0,false)
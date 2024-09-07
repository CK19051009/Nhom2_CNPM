if count_fire < 360{
	var bullet = instance_create_layer(x,y - 400,"Instances",obj_boss_fire)
	bullet.direction = count_fire
	bullet.image_angle  = count_fire
	count_fire += 18
	alarm[0] = 5
	if !audio_is_playing(sou_fire)
			audio_play_sound(sou_fire,0,true)		
	}
else audio_stop_sound(sou_fire)
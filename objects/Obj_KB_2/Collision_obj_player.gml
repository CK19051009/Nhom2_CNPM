if global.kick == 1 and count ==0 and global.key_2 >= 1 {
	sprite_index = spr_KhoBau_2_Open
	audio_play_sound(sou_chest_2, 0, 0, 1.0, undefined, 1.0);
	count+=1
	instance_create_layer(x-20,y-10,"Instances_up",obj_random_2)
	global.key_2 -= 1
	alarm[0] = 30
}
else if global.kick == 1 and kick ==0 and global.key_2 == 0
{
	audio_play_sound(sou_kick, 0, 0, 1.0, undefined, 1.0);
	kick+=1
	alarm[1] = 30
}
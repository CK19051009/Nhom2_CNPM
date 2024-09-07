global.level = "boss"
key = 0
alarm[0] = 30
global.gun = instance_create_layer(x,y,"Instances",obj_gun)
global.sword = instance_create_layer(x,y,"Instances",obj_sword)
audio_play_sound(sou_boss_music,0,true)
audio_stop_sound(sou_background_music)
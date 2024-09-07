global.lives = 3
global.coin = 0
global.weapon = 0
global.kick = 0
global.weapon_gun = 0
global.weapon_sword = 0
global.hp= 100
global.energy = 100
global.bullet = 20
global.machine_bullet = 100
global.key_1 = 0
global.key_2 = 0
global.kill_enemy = 0
global.level = 0
text = ""
global.gun = instance_create_layer(x,y,"Instances",obj_gun)
global.sword = instance_create_layer(x,y,"Instances",obj_sword)
audio_play_sound(sou_tutorial,0,0)
audio_stop_sound(sou_background_music)
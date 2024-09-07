// SCRIPT
player_camera()

if shop != 0{
	hspeed = 0
	vspeed = 0
}
else {
	player_movex()
	player_movey()
}
	
// MULTI KILL
if global.kill_enemy >= 5 and check_alarm == false{
	alarm[0] = 15
	check_alarm = true
}
if global.kill_enemy == 1 and check_alarm_loop == false{
	alarm[1] = 600
	check_alarm_loop = true
	}
	
// SOUND MULTI KILL
switch(global.kill_enemy){
	case 1: 
		audio_stop_sound(sou_double_kill)
		audio_stop_sound(sou_triple_kill)
		audio_stop_sound(sou_quarda_kill)
		audio_stop_sound(sou_penta_kill)
	break
	case 2:
		audio_stop_sound(sou_triple_kill)
		audio_stop_sound(sou_quarda_kill)
		audio_stop_sound(sou_penta_kill)
		if !audio_is_playing(sou_double_kill) and sou_kill == false{
			audio_play_sound(sou_double_kill,0,false)
			sou_kill = true}
	break
	case 3:
		audio_stop_sound(sou_double_kill)
		audio_stop_sound(sou_quarda_kill)
		audio_stop_sound(sou_penta_kill)
		if !audio_is_playing(sou_triple_kill)  and sou_kill == false{
			audio_play_sound(sou_triple_kill,0,false)
			sou_kill = true}
	break
	case 4:
		audio_stop_sound(sou_double_kill)
		audio_stop_sound(sou_triple_kill)
		audio_stop_sound(sou_penta_kill)
		if !audio_is_playing(sou_quarda_kill) and sou_kill == false{
			audio_play_sound(sou_quarda_kill,0,false)
			sou_kill = true}
	break
	case 5:
		audio_stop_sound(sou_double_kill)
		audio_stop_sound(sou_triple_kill)
		audio_stop_sound(sou_quarda_kill)
		if !audio_is_playing(sou_penta_kill)  and sou_kill == false{
			audio_play_sound(sou_penta_kill,0,false)
			sou_kill = true}
	break
}

//CHECK DIE
if y > room_height 
	player_die()
if global.hp <= 0{
	sprite_index = spr_player_dead
	i+=1
	if i >= 20
		player_die()
}
		
// CREATE WEAPON		
if global.weapon == "gun" and (global.weapon_gun == "gun" or global.weapon_gun == "machine_gun")
	gun_handle()
else 
	global.gun.image_alpha = 0
if global.weapon = "sword" and global.weapon_sword == "sword"
	sword_handle()
else 
	global.sword.image_alpha = 0
	
//KICK
if sprite_index == spr_player_kick
	global.kick = 1
else 
	global.kick = 0
	
// MOVE SPEED	
if global.energy <=5 
	spd = 0
else if global.energy <= 10
	spd = 2
else if global.energy <=30
	spd = 7
else spd = 10
function input(){
	_left = keyboard_check(ord("A"))
	 _right = keyboard_check(ord("D"))
	_up = keyboard_check(ord("W"))
	press_space =  keyboard_check_pressed(vk_space)
	_space = keyboard_check(vk_space)
	_down = keyboard_check(ord("S"))
}
function plus_energy(){
	if global.energy == 100 add_energy = 0
	else	add_energy += 1
	if add_energy mod 3 == 0	global.energy += 1
}

function lost_energy(){
	if global.energy <= 0 minus_energy = 0
	else	minus_energy -= 1
	if minus_energy mod 5 == 0	global.energy -= 1
}
function player_movex (){
	input()
	var count_attack = 0 
	hspeed = _right - _left
	if global.energy > 5 hspeed *= spd 
	else hspeed = 0
	if x < 0 x =0
	if x > room_width x = room_width
	if place_meeting(x+hspeed,y,tile_wall){
		while(not place_meeting(x+sign(hspeed),y,tile_wall)){
			x += sign(hspeed)	
		}
		hspeed = 0
	}
	
	//animation
	if hspeed ==0 {
		sprite_index = spr_player_idle	
		if global.energy < 100 plus_energy()
		audio_stop_sound(sou_run)
	}
	else{
		lost_energy()
		sprite_index = spr_player_run	
			if !audio_is_playing(sou_run) and place_meeting(x,y+1,tile_wall)
				audio_play_sound(sou_run,0,false)
		
	}
	
	//left right animate
	if hspeed > 0 image_xscale = 1
	if hspeed < 0 image_xscale = -1
}


function player_movey(){
	input()
	gra = 1
	if _up and vspeed > 0 gra = 0.06
	
	vspeed += gra
	
	//jump function
	if place_meeting(x,y+1,tile_wall)
		if _up and global.energy > 20{
			vspeed = -27
			audio_play_sound(sou_jump, 0, 0, 1.0, undefined, 1.0);
			global.energy -=10}
	global.gun.image_alpha = 1

	
	
	//collision handle
	if place_meeting(x,y+vspeed,tile_wall){
		while(not place_meeting(x,y+sign(vspeed),tile_wall)){
			y+= sign(vspeed)	
		}
		vspeed = 0	
		if _down sprite_index = spr_player_kick
	}
	else{
		if vspeed < 0 sprite_index = spr_player_jump
	}
}
function sword_handle(){
	
	global.sword.x = x 
	global.sword.y = y - 35
	global.sword.image_xscale = image_xscale
	global.sword.depth = -1
	if global.sword.image_alpha != 0 and press_space{
		global.sword.image_speed = 4
		global.sword.count = 0
		if !audio_is_playing(sou_slash)
				audio_play_sound(sou_slash, 0, 0, 1.0, undefined, 1.0);
		audio_play_sound(sou_slash, 0, 0, 1.0, undefined, 1.0);
		var _slash = instance_create_layer(global.sword.x + image_xscale*40,global.sword.y+5,"Instances",obj_slash)
		with(_slash) {
			image_xscale = other.image_xscale
			if other.image_xscale = 1 direction = 0
			else  direction = 180}
			
			
	}
	
}
function gun_handle(){
	global.gun.x = x
	global.gun.y = y + offsetY
	global.gun.image_xscale = image_xscale
	global.gun.depth = -1
	
	// gun
	if global.gun.image_alpha != 0 and press_space and global.bullet >= 1 and global.weapon_gun = "gun"{
		audio_play_sound(sou_shoot, 0, 0, 1.0, undefined, 1.0);
		var _bullet = instance_create_layer(global.gun.x + image_xscale*50,global.gun.y+5,"Instances",obj_bullet)
		global.bullet -= 1
			with(_bullet){
				speed = 30
				depth = -2
				image_xscale = other.image_xscale
				if other.image_xscale = 1 direction = 0
				else  direction = 180
			}
		}
	else if global.gun.image_alpha != 0 and _space and global.machine_bullet >= 1 and global.weapon_gun = "machine_gun"{
			if !audio_is_playing(sou_machine_gun_shoot)
				audio_play_sound(sou_machine_gun_shoot,0,false)
			machine_gun_count += 1
			var machine_gun_bullet = 0
			if machine_gun_count mod 3 == 0{
				machine_gun_bullet = instance_create_layer(x + image_xscale*50,y-45,"Instances",obj_bullet)
				global.machine_bullet -=1
				with(machine_gun_bullet){
					speed = 30
					depth = -2
					image_xscale = other.image_xscale
					if other.image_xscale = 1 direction = 0 + irandom_range(-3,3)
					else  direction = 180  + irandom_range(-3,3)
				}
			}
		}	
	
	
	
}

function player_camera(){
	xto = obj_player.x - cam_w/2
	yto = obj_player.y - cam_h/2
	
	xcam += (xto - xcam) / 25
	ycam += (yto - ycam) / 25
	
	xcam = clamp(xcam,0,room_width-cam_w)
	ycam = clamp(ycam,0,room_height-cam_h)
	if global.level == 1
		camera_set_view_pos(view_camera[0],xcam+obj_door.shake_x
	,ycam+obj_door.shake_y)
	else if global.level == "boss"
		camera_set_view_pos(view_camera[0],xcam+obj_boss.shake_x
	,ycam+obj_boss.shake_y)
	else 
		camera_set_view_pos(view_camera[0],xcam,ycam)

}

function player_die(){
	if global.lives > 1{
		sprite_index = spr_player_dead
		if !audio_is_playing(sou_die) 
				audio_play_sound(sou_die,0,false)
		if sprite_index >= sprite_get_number(spr_player_dead) - 1 {
			instance_destroy()
			instance_create_layer(192,84,"Instances",obj_player)
			global.lives -= 1
		}
	}
	else 
		if global.level == 1
			room_goto(r_lv1_lose)
		else if global.level == 2
			room_goto(r_lv2_lose)
		else if global.level == "boss"
			room_goto(r_boss_lose)
}
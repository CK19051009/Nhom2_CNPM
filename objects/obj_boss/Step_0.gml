if hp >= 750
	countdown_attack = 600
else if hp >= 500
	countdown_attack = 540
else if hp >= 250
	countdown_attack = 420
else if hp >= 0
	countdown_attack = 300
else state = "dead"

if time_shake > 0{
	time_shake -=1
	shake_x = random_range(-6,6)
	shake_y = random_range(-6,6)
}
else {
	shake_x = 0
	shake_y = 0
}

switch state {

	case "idle": //Dung im
		// dieu chinh sprite
		sprite_index = spr_boss_idle
		mask_index = spr_boss_idle
		hspeed = 0
		count_light = 0
		skill_light = false
		count_fire = 0
		skill_fire = false
		change_0_to_1 +=1
		if change_0_to_1 >= 60{
			state = "walk"
			change_0_to_1 = 0
		}
		boss_hurt()
	break
	
	case "walk": //Walk

		sprite_index = spr_boss_walk
		mask_index = spr_boss_walk
		hspeed = walk_speed
		if x < 300
			walk_speed = 5
		else if x > 1600
			walk_speed = -5
		
		if walk_speed > 0 
				image_xscale = 1
			else 
				image_xscale = -1
		i+= 1
		if i == countdown_attack{
			if hp >= 750
				state = "slash"
			else if hp >= 500
				if irandom(9) mod 2 == 1
					state = "fire"
				else 
					state = "slash"
			else if hp >= 250
				if irandom(9) mod 2 == 1
					state = "fire"
				else 
					state = "light"
			else if hp >= 0{
				var rd = irandom(9)
				if  rd mod 3 == 1
					state = "fire"
				else if rd mod 3 == 2
					state = "light"
				else {
					state = "slash"
					audio_play_sound(sou_boss_sword,0,0)}}
			i = 0
		}

		boss_hurt()
	break
	
	case "slash":  
		alarm[3] = 1
		sprite_index = spr_boss_atk
		hspeed = 0	
		mask_index = spr_boss_atk
		i += 1
		if i  == 90{
			state = "idle"
			i = 0}
		boss_hurt()
	break
	
	case "fire":  
		alarm[3] = 1
		sprite_index = spr_boss_fire
		hspeed = 0	
		mask_index = spr_boss_fire
		if skill_fire == false{
			alarm[0] = 1
			skill_fire = true}
		i += 1
		if i  == 180{
			state = "idle"
			i = 0}
		boss_hurt()
	break
	
	case "light":  
		alarm[3] = 1
		sprite_index = spr_boss_light
		hspeed = 0	
		mask_index = spr_boss_light
		if skill_light == false{
			alarm[1] = 1
			skill_light = true}
		i += 1
		if i  == 180{
			state = "idle"
			i = 0}
		boss_hurt()
	break
	
	case "dead":
		sprite_index = spr_enemy_dead // đổi sprite
		hspeed = 0
		vspeed = 0
		instance_destroy()	

	break


	

}

boss_movement()

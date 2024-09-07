
switch state {

	case 0: //Dung im
		// dieu chinh sprite
		sprite_index = sprite_idle
		hspeed = 0

		change_0_to_1 += 1
		if change_0_to_1 >= 60{
			state = 1
			change_0_to_1 = 0
		}


		
	break
	
	case 1: //Walk
		
		sprite_index = sprite_walk
		hspeed = walk_speed
		change_direction+=1
		count_create += 1
		if walk_speed > 0 
				image_xscale = 1
			else 
				image_xscale = -1
		if count_create >= 90{ 
			instance_create_layer(x,y,"Instances",bullet)
			count_create = 0
		}
		if change_direction >= 180{
			walk_speed *= -1
			change_direction = 0
		}
		hurt()
	break
	
	case 2:
		sprite_index = spr_enemy_dead // đổi sprite
		// cho kẻ địch ngừng di chuyển
		hspeed = 0
		vspeed = 0
		
		// bắt đầu bộ đếm thời gian
		step += 1
		if step == 30{
			instance_destroy()	
		}		
	break
	
}

movement()

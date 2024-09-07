
switch state {

	case 0: //Dung im
		// dieu chinh sprite
		sprite_index = sprite_idle
		hspeed = 0
		change_0_to_1 +=1
				time_to_attack += 1
		if time_to_attack >= 300{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 3
			time_to_attack = 0
		}
		else if change_0_to_1 >= 60{
			state = 1
			change_0_to_1 = 0
		}
		
	break
	
	case 1: //Walk
		change_direction+=1
		time_to_attack += 1
		sprite_index = sprite_walk
		hspeed = walk_speed
		if walk_speed > 0 
				image_xscale = 1
			else 
				image_xscale = -1
		if time_to_attack >= 300{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 3
			time_to_attack = 0
		}
		else if change_direction >= 120{
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

	case 3:  //Attack
		// dieu chinh sprite
		count_attack += 1
		sprite_index = sprite_atk//sprite_index = spr_ene1_atk 
		hspeed = 0	
		var _x = camera_get_view_x(view_camera[0])
		var _y = camera_get_view_y(view_camera[0])
		if count_attack >= 180{
			count_attack = 0
			state = 1}
		else
			if count_attack mod 5 ==0 and (x >= _x and x<=_x + camera_get_view_width(view_camera[0]))and (y>= _y and y <= _y + camera_get_view_height(view_camera[0]))
				instance_create_layer(random_range(_x,_x+ camera_get_view_width(view_camera[0])),_y,"Instances_up",bullet)
		hurt()
	break
	
}

movement()

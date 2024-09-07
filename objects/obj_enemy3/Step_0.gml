
switch state {

	case 0: //Dung im
		// dieu chinh sprite
		sprite_index = sprite_idle
		hspeed = 0
		change_0_to_1 +=1
		
		if distance_to_object(obj_player) <= attack_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 3
		}
		else if distance_to_object(obj_player) <= find_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 4
			if !audio_is_playing(sou_enemy_spotted) and snd_spotted == false{
				audio_play_sound(sou_enemy_spotted,0,false)	
				snd_spotted = true
				}
		}
		else if change_0_to_1 >= 60{
			state = 1
			change_0_to_1 = 0
		}
		
	break
	
	case 1: //Walk
		change_direction+=1
		sprite_index = sprite_walk
		hspeed = walk_speed
		if walk_speed > 0 
				image_xscale = 1
			else 
				image_xscale = -1
		if distance_to_object(obj_player) <= attack_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 3
		}
		else if distance_to_object(obj_player) <= find_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 4
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
		sprite_index = sprite_atk//sprite_index = spr_ene1_atk 
		hspeed = 0	
		// huong toi nguoi choi
		var _dir = point_direction(x,y,obj_player.x, obj_player.y)
		// xoay huong ve nguoi choi
		if _dir >=90 and _dir <= 270
			image_xscale = -1	
		else
			image_xscale = 1	
		i += 1
		if i mod 5 == 0 
			global.hp -= 1
		if distance_to_object(obj_player) > find_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 1
		}
		else if distance_to_object(obj_player) > attack_dis{ //Duoi theo nhan vat
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 4
		}
		hurt()
	break
	
	case 4: //Run
		sprite_index = sprite_run
		i = 0
		var _dir = point_direction(x,y,obj_player.x, obj_player.y)
		// xoay huong ve nguoi choi
		if _dir >=90 and _dir <= 270
			image_xscale = -1	
		else
			image_xscale = 1	
		hspeed = 5*image_xscale
		if distance_to_object(obj_player) <= attack_dis{ 
			image_index = 0 
			state = 3
		} else if distance_to_object(obj_player) > find_dis{
			image_index = 0 
			state = 1
		}
		hurt()
	break
}

movement()

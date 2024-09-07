
switch state {

	case 0: 
		// dieu chinh sprite
		sprite_index = sprite_idle//sprite_index = spr_ene1_idle
		hspeed = 0
		// dieu kien chuyen sang trang thai 1
		if distance_to_object(obj_player) <= find_dis{
			image_index = 0 // 	đưa về khung hình hình ảnh 0, nhằm bắt đầu hình ảnh tiếp theo sẽ bắt đầu lại thao tác tấn công // có thể bỏ thử đoạn code này
			state = 1
		if !audio_is_playing(sou_enemy_spotted) and snd_spotted == false{
				audio_play_sound(sou_enemy_spotted,0,false)	
				snd_spotted = true
				}
		}
		// take bullet
		hurt()
	break
	
	case 1:
		// dieu chinh sprite
		sprite_index = sprite_atk//sprite_index = spr_ene1_atk 
		
		// huong toi nguoi choi
		var _dir = point_direction(x,y,obj_player.x, obj_player.y)
		// xoay huong ve nguoi choi
		if _dir >=90 and _dir <= 270 {
			image_xscale = -1	
			hspeed = -2
		}
		else{
			image_xscale = 1	
			hspeed = 2
		}
		
		// tại khung hình cuối cùng, tạo đạn và bắn ngay lập tức
		
		if image_index >= sprite_get_number(sprite_index) - 1 {
			// Tạo đạn và lưu vào biến _bullet
			var _bullet = instance_create_layer(x,y-50,"Instances",obj_enebullet)
			_bullet.depth = -1
			// lập trình với từ khóa with, như là lập trình trong sự kiện create của obj_enebullet
			with _bullet{
				sprite_index = other.sprite_bullet
				speed = 20
				direction = point_direction(x,y,obj_player.x,obj_player.y-45)
				image_angle = direction
			}
			state = 0
		
		}
		if distance_to_object(obj_player) > find_dis{
			snd_spotted = false
			audio_stop_sound(sou_enemy_spotted)}
		
		// take bullet
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

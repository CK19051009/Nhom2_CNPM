
function boss_hurt(){
	if place_meeting(x,y,obj_bullet){ // nếu đang trúng đạn
	var _bullet = instance_place(x,y,obj_bullet) // tìm viên đạn đó
	instance_destroy(_bullet) // xóa đạn đó đi
	hp -= 1
	}
	else if place_meeting(x,y,obj_slash) 
		hp -= 1
}


function boss_movement() {
	//áp dung trọng lực theo chiều dọc
	vspeed = vspeed + gra



	// xử lý va chạm chiều dọc
	if place_meeting(x,y+vspeed,tile_wall){
		while(not place_meeting(x,y+sign(vspeed),tile_wall)){
			y+=sign(vspeed)
		}
		vspeed = 0
	}

}


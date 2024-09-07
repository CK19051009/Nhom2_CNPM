gra = 1
vspeed += gra
	
//collision handle
if place_meeting(x,y+vspeed,tile_wall){
	while(not place_meeting(x,y+sign(vspeed),tile_wall)){
		y+= sign(vspeed)	
	}
	vspeed = 0	
}
if image_index > image_number - 1{
	image_speed = 0
	if lose_check == false{
		lose_check = true
		instance_create_layer(683,178,"Instances",obj_youwin)
	}
}
	
	

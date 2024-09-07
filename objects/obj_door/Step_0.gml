
if (place_meeting(x,y,obj_player)){
	if global.coin >= 50 and open == false {
		image_index = 1
		alarm[1] = 30
		open = true
	}
	else if global.coin < 50
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "You haven't earned 50 gold yet. Earn enough gold and then return to the gate"
	}
}
else{
	if myTextBox!= 0
		instance_destroy(myTextBox)
	myTextBox = 0
}

switch rd{
	case 0:
		x = 5088
		y = 1888
	break
	case 1:
		x = 5792
		y = 192
	break
	case 2:
		x = 96
		y = 2816
	break
	case 3:
		x = 64
		y = 1632
	break
	case 4:
		x= 5728
		y= 2816
	break
}


if time_shake > 0{
	time_shake -=1
	shake_x = random_range(-6,6)
	shake_y = random_range(-6,6)
}
else {
	shake_x = 0
	shake_y = 0
}
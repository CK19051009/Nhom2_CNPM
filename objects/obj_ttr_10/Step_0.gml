if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "If you run out of health or fall into the abyss, you will lose 1 life. Up to 4 lives can be reserved. If you run out of 4 lives, you will lose."
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
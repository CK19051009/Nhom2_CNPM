if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "Press the E button to pick up the gun. Press number 1 to use the gun. Press number 1 again to switch back and forth between normal gun and machine gun types. Press SPACEBAR to shoot"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
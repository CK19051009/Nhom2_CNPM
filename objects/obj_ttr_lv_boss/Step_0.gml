if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "At boss levels, your energy will always be full. Let's try to win"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
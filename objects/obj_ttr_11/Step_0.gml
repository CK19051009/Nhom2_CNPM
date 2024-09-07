if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "You can press the V key to open the shop. Use the gold you have earned to buy items."
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
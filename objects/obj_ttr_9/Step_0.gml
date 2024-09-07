if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "The second type is ranged combat with 2 levels of monsters. This form will fire bullets if standing within its attack range. Each shot will take 5 health. Should shoot far to destroy. Don't come close!"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
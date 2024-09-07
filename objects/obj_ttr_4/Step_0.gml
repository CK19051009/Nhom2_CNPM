if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "The small chest will have 1 of 3 items (HP: + 20 health; Ammo: + 10 ammo and +100 ammo if it is a machine gun or a gold coin)"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
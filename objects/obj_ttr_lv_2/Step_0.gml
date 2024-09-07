if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "In this level, there are many new types of powerful monsters. And there will be more stores for you. Your task is to find all 3 key pieces to open the door"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
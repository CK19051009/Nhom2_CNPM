if (place_meeting(x,y,obj_player)){
	if(myTextBox == 0){
		myTextBox = instance_create_layer(x,y,"Instances",obj_textbox)
		myTextBox.text = "Press the S button to kick and open the chest. But you must have a key to open the chest. There are 2 types of keys corresponding to 2 types of chests. Can hold up to 5 keys of each type"
}
}
	else{
		if myTextBox!= 0
			instance_destroy(myTextBox)
			myTextBox = 0
	}
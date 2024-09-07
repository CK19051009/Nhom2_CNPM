image_xscale = 1.2
image_yscale = 1.2
if(myTextBox == 0){
	myTextBox = instance_create_layer(x,y,"Instances",obj_textbox_button_sound)
	myTextBox.image_xscale = -1
	myTextBox.image_yscale = -1
	
	myTextBox.text = "Click to turn on/off background music. \nEnter the game and use the P key to turn it on/off."
}

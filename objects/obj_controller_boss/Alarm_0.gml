var rd = irandom(4)
if  rd == 0 {
	x = random_range(700,1100)
	y = 300
	instance_create_layer(x,y,"Instances",obj_random)}
else if  rd == 1 {
	x = random_range(1400,1900)
	y = 100
	instance_create_layer(x,y,"Instances",obj_random)}
else if  rd == 2 {
	x = random_range(36,300)
	y = 600
	instance_create_layer(x,y,"Instances",obj_random)}
else if  rd == 3 {
	x = random_range(1500,1900)
	y = 400
	instance_create_layer(x,y,"Instances",obj_random)}
else if  rd == 4 {
	x = random_range(600,1100)
	y = 600
	instance_create_layer(x,y,"Instances",obj_random)}

if obj_boss.hp >= 750
	alarm[0] = 360
else if obj_boss.hp >= 500
	alarm[0] = 300
else if obj_boss.hp >= 250
	alarm[0] = 240
else if obj_boss.hp >= 0
	alarm[0] = 180
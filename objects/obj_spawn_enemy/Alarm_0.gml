var rd = irandom(4)
if  rd == 0 {
	x = 850
	y = 290
	instance_create_layer(x,y-100,"Instances",obj_enemy4)}
else if  rd == 1 {
	x =1600
	y = 100
	instance_create_layer(x,y-100,"Instances",obj_enemy10)
	instance_create_layer(x,y-100,"Instances",obj_enemy7)}
else if  rd == 2 {
	x =800 
	y = 800
	instance_create_layer(x,y-100,"Instances",obj_enemy8)}
else if  rd == 3 {
	x =1800
	y = 650
	instance_create_layer(x,y-100,"Instances",obj_enemy)}
else if  rd == 4 {
	x = 70
	y = 800
	instance_create_layer(x,y-100,"Instances",obj_enemy2)}

if obj_boss.hp >= 750
	alarm[0] = 780
else if obj_boss.hp >= 500
	alarm[0] = 720
else if obj_boss.hp >= 250
	alarm[0] = 660
else if obj_boss.hp >= 0
	alarm[0] = 600
instance_create_layer(1500,550,"Instances",obj_enemy9)
if obj_boss.hp >= 750
	alarm[1] = 780
else if obj_boss.hp >= 500
	alarm[1] = 720
else if obj_boss.hp >= 250
	alarm[1] = 660
else if obj_boss.hp >= 0
	alarm[1] = 600
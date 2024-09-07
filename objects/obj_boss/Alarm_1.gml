if count_light < 180{
	var light = instance_create_layer(random_range(0,2000),random_range(0,1000),"Instances",obj_boss_danger)
	count_light += 9
	alarm[1] = 5
	}
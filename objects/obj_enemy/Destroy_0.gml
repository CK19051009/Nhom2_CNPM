global.kill_enemy += 1
obj_player.sou_kill = false
if coin == 2{
	instance_create_layer(x-30,y-70,"Instances",Obj_coin)
	instance_create_layer(x+30,y-70,"Instances",Obj_coin)
}
else if coin == 3{
	instance_create_layer(x-60,y-70,"Instances",Obj_coin)
	instance_create_layer(x+60,y-70,"Instances",Obj_coin)
	instance_create_layer(x,y-70,"Instances",Obj_coin)
}
if sprite_index == spr_coin
	instance_create_layer(x,y,"Instances",Obj_coin)
else if sprite_index == spr_hp
	instance_create_layer(x,y,"Instances",obj_hp)
else if sprite_index == spr_ammo
	instance_create_layer(x,y,"Instances",obj_ammo)
else if sprite_index == spr_life
	instance_create_layer(x,y,"Instances",Obj_life)
else if sprite_index == spr_gold
	instance_create_layer(x,y,"Instances",obj_gold)
instance_destroy()
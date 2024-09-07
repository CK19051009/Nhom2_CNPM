if(shop == 0)
	shop = instance_create_layer(x,y,"Instances_up",obj_shop_box)
else if shop!= 0
	instance_destroy(shop)
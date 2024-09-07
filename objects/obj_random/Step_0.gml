/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00E75A9F
/// @DnDArgument : "code" "if place_meeting(x,y+vspeed,tile_wall){$(13_10)		vspeed = 0$(13_10)		gra = 0$(13_10)	}$(13_10)vspeed = vspeed + gra$(13_10)"
if place_meeting(x,y+vspeed,tile_wall){
		vspeed = 0
		gra = 0
	}
vspeed = vspeed + gra
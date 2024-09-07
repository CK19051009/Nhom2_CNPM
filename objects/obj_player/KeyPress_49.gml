/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18E517C6
/// @DnDArgument : "code" "if global.weapon_gun == 0 $(13_10)	global.weapon = "gun" $(13_10)else if  global.weapon != "gun" {$(13_10)	global.weapon_gun = "gun" $(13_10)	global.weapon = "gun"$(13_10)	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0)}$(13_10)else if global.weapon == "gun"{$(13_10)	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0)$(13_10)	if global.weapon_gun == "gun"$(13_10)		global.weapon_gun = "machine_gun"$(13_10)	else if global.weapon_gun == "machine_gun"$(13_10)		 global.weapon_gun = "gun"$(13_10)}$(13_10)	"
if global.weapon_gun == 0 
	global.weapon = "gun" 
else if  global.weapon != "gun" {
	global.weapon_gun = "gun" 
	global.weapon = "gun"
	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0)}
else if global.weapon == "gun"{
	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0)
	if global.weapon_gun == "gun"
		global.weapon_gun = "machine_gun"
	else if global.weapon_gun == "machine_gun"
		 global.weapon_gun = "gun"
}
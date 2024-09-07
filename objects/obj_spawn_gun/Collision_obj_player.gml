/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DFBD749
/// @DnDArgument : "code" "_e = keyboard_check_pressed(ord("E"))$(13_10)if _e{$(13_10)	instance_destroy()$(13_10)	global.weapon_gun = "gun"$(13_10)	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0);$(13_10)}"
_e = keyboard_check_pressed(ord("E"))
if _e{
	instance_destroy()
	global.weapon_gun = "gun"
	audio_play_sound(sou_gun, 0, 0, 1.0, undefined, 1.0);
}
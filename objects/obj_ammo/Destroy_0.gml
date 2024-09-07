/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 551FDB44
/// @DnDArgument : "soundid" "sou_add_bullet"
/// @DnDSaveInfo : "soundid" "sou_add_bullet"
audio_play_sound(sou_add_bullet, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66B1D975
/// @DnDArgument : "code" "if global.weapon_gun = "gun"$(13_10)	global.bullet += 10$(13_10)else if global.weapon_gun = "machine_gun"$(13_10)	global.machine_bullet += 100"
if global.weapon_gun = "gun"
	global.bullet += 10
else if global.weapon_gun = "machine_gun"
	global.machine_bullet += 100
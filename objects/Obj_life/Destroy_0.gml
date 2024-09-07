/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27A0E878
/// @DnDArgument : "code" "global.lives += 1"
global.lives += 1

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0B2193C9
/// @DnDArgument : "soundid" "sou_key"
/// @DnDSaveInfo : "soundid" "sou_key"
audio_play_sound(sou_key, 0, 0, 1.0, undefined, 1.0);
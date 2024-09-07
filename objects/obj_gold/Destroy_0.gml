/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7822861C
/// @DnDArgument : "code" "global.coin += irandom_range(10,50)"
global.coin += irandom_range(10,50)

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 609CD120
/// @DnDArgument : "soundid" "sou_coin"
/// @DnDSaveInfo : "soundid" "sou_coin"
audio_play_sound(sou_coin, 0, 0, 1.0, undefined, 1.0);
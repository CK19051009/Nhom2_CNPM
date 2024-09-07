/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 72161223
/// @DnDArgument : "x1" "400"
/// @DnDArgument : "y1" "700"
/// @DnDArgument : "x2" "1300"
/// @DnDArgument : "y2" "750"
/// @DnDArgument : "value" "hp/hp_max*100"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(400, 700, 1300, 750, hp/hp_max*100, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF000000>>24) != 0));
if obj_GE_player_lose.stt == 0{
	draw_sprite(GE_Player,1,96,800)
	draw_sprite(GE_Boss,0,928,1088)
	}
else if obj_GE_player_lose.stt == 1{
	draw_sprite(GE_Player,0,96,800)
	draw_sprite(GE_Boss,1,928,1088)
	}
else if obj_GE_player_lose.stt == 2{
	draw_sprite(GE_Player,1,96,800)
	draw_sprite(GE_Boss,0,928,1088)
	}
else if obj_GE_player_lose.stt == 3{
	draw_sprite(GE_Player,0,96,800)
	draw_sprite(GE_Boss,1,928,1088)
	}
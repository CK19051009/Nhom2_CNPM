if keyboard_check_pressed(ord("R")) game_restart()
if global.lives > 4 global.lives = 4
if global.key_1 > 5 global.key_1 = 5
if global.key_2 > 3 global.key_2 = 3
if obj_player.x > 7300 and obj_player.y > 500
	room_goto(r_level1)
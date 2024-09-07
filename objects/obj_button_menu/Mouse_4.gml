if(global.level == 1){
	room_goto(r_level1)
}
else if(global.level == 2 ){
room_goto(r_level2)
}
else if (global.level == "boss") {
	room_goto(r_level_boss)

}
audio_play_sound(sou_click,0,0)
draw_sprite(guide_player, 0, 10, 560);

//Sword
if global.weapon_sword == "sword" and global.weapon == "sword"
	draw_sprite_ext(guide_sword, 1, 85, 740, 0.8, 0.8, 25, $FFFFFF & $ffffff, 1)
else if global.weapon_sword == "sword" and global.weapon != "sword"
	draw_sprite_ext(guide_sword, 0, 85, 740, 0.8, 0.8, 25, $FFFFFF & $ffffff,1)
else if  global.weapon_sword != "sword" and global.weapon != "sword"
	draw_sprite_ext(guide_sword, 0, 85, 740, 0.8, 0.8, 25, $FFFFFF & $ffffff,0)
	
//Gun
if global.weapon_gun = 0
	draw_sprite_ext(guide_gun, 0, 28, 735, 0.8, 0.3, 40, $FFFFFF & $ffffff,0)
else if global.weapon_gun == "gun"{
		if global.weapon == "gun" 
			draw_sprite_ext(guide_gun, 1, 28, 735, 0.8, 0.3, 40, $FFFFFF & $ffffff, 1)
		else 
			draw_sprite_ext(guide_gun, 0, 28, 735, 0.8, 0.3, 40, $FFFFFF & $ffffff, 1)}
else if global.weapon_gun == "machine_gun"{
		if global.weapon == "machine_gun" 
			draw_sprite_ext(guide_gun, 3, 28, 735, 0.8, 0.3, 40, $FFFFFF & $ffffff, 1)
		else 
			draw_sprite_ext(guide_gun, 2, 28, 735, 0.8, 0.3, 40, $FFFFFF & $ffffff, 1)}

draw_sprite(guide_coin, 0, 172, 650);

draw_set_colour($FF000000 & $ffffff);
var l111432BF_0=($FF000000 >> 24);
draw_set_alpha(l111432BF_0 / $ff);

draw_text_transformed(195, 643, string("") + string(global.coin), 1.5, 1.5, 0);

//Lives
var l71ADD934_0 = sprite_get_width(guide_life);
var l71ADD934_1 = 0;
for(var l71ADD934_2 = global.lives; l71ADD934_2 > 0; --l71ADD934_2) {
	draw_sprite(guide_life, 0, 230 + l71ADD934_1, 650);
	l71ADD934_1 += l71ADD934_0;
}

//Key 1
var l6AC759E6_0 = sprite_get_width(guide_key_1);
var l6AC759E6_1 = 0;
for(var l6AC759E6_2 = global.key_1; l6AC759E6_2 > 0; --l6AC759E6_2) {
	draw_sprite(guide_key_1, 0, 170 + l6AC759E6_1, 615);
	l6AC759E6_1 += l6AC759E6_0;
}
//Key 2
var l1F0C98D7_0 = sprite_get_width(guide_key_2);
var l1F0C98D7_1 = 0;
for(var l1F0C98D7_2 = global.key_2; l1F0C98D7_2 > 0; --l1F0C98D7_2) {
	draw_sprite(guide_key_2, 0, 255 + l1F0C98D7_1, 615);
	l1F0C98D7_1 += l1F0C98D7_0;
}

//HP
if global.hp > 100{
	//draw_healthbar(0, 0, 0, 0, 100, $FF3BFF00 & $FFFFFF, $FF7F7F7F & $FFFFFF, $FF7F7F7F & $FFFFFF, 0, (($FF00FF00>>24) != 0), (($FFFFFFFF>>24) != 0));
	draw_healthbar(160, 676, 310, 703, global.hp-100, $FF3BFF00 & $FFFFFF, $FF7F7F7F & $FFFFFF, $FF7F7F7F & $FFFFFF, 0, (($D4FFFFFF>>24) != 0), (($FF000000>>24) != 0));
	draw_text(195, 680, string("Armor:") + string(global.hp-100));}
else {
	draw_healthbar(160, 676, 310, 703, global.hp, $D4FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF3BFF00 & $FFFFFF, 0, (($D4FFFFFF>>24) != 0), (($FF000000>>24) != 0));
	draw_text(195, 680, string("") + string(string(global.hp) + "/100"));}

//Energy
draw_healthbar(160, 712, 310, 739, global.energy, $D4FFFFFF & $FFFFFF, $FFFFFF00 & $FFFFFF, $FFFFEE00 & $FFFFFF, 0, (($D4FFFFFF>>24) != 0), (($FF000000>>24) != 0));
draw_text(195, 716, string("") + string(string(global.energy) + "/100"));

draw_text(35,665,string(global.kill_enemy));

if  global.weapon_gun == "gun"	draw_text(60, 720, string(global.bullet));
else if  global.weapon_gun == "machine_gun"	draw_text(60, 720, string(global.machine_bullet));


if key == 1
	draw_sprite(guide_key_lv2_1, 0, 55, 570);
else if key == 3
	draw_sprite(guide_key_lv2_2, 0, 85, 570);
else if key == 4{
	draw_sprite(guide_key_lv2_1, 0, 55, 570);
	draw_sprite(guide_key_lv2_2, 0, 85, 570);}
else if key == 5
	draw_sprite(guide_key_lv2_3, 0, 115, 570);
else if key == 6{
	draw_sprite(guide_key_lv2_1, 0, 55, 570);
	draw_sprite(guide_key_lv2_3, 0, 115, 570);}
else if key == 8{
	draw_sprite(guide_key_lv2_2, 0, 85, 570);
	draw_sprite(guide_key_lv2_3, 0, 115, 570);}
else if key == 9{
	draw_sprite(guide_key_lv2_1, 0, 55, 570);
	draw_sprite(guide_key_lv2_2, 0, 85, 570);
	draw_sprite(guide_key_lv2_3, 0, 115, 570);}

//Audio
if audio_group_get_gain(audiogroup_soundefffect) == 0
	draw_sprite_ext(s_sound_eff,1,150, 650,0.3,0.3,0,c_grey,1)
else if audio_group_get_gain(audiogroup_soundefffect) == 1
	draw_sprite_ext(s_sound_eff,0,150, 650,0.3,0.3,0,c_white,1)
	
if audio_group_get_gain(audiogroup_background) == 0
	draw_sprite_ext(s_sound_back,1,150, 670,0.3,0.3,0,c_grey,1)
else if audio_group_get_gain(audiogroup_background) == 1
	draw_sprite_ext(s_sound_back,0,150, 670,0.3,0.3,0,c_white,1)
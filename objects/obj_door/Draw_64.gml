draw_set_color(c_white)
if countdown mod 60 < 10
	var le = "0" + string(countdown mod 60)
else 
	var le = string(countdown mod 60)
if countdown >= 60
	draw_text(10,10,"0" + string(countdown div 60) + ":" + le)
else 
	draw_text(10,10,le)
draw_self()

if can!=0 && can<=3 {
	draw_set_color(c_red)
	draw_rectangle(5,room_height/2+30,room_width-5,room_height-5,0)
	draw_set_color(c_black)
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)


if can=1 {	
	draw_text(10,room_height/2+45,"HIII :3 DON'T YOU WANT TO JOIN ME UWU")
}

else if can=2 {
	draw_text(10,room_height/2+45,"NAH")
}

else if can=3 {
	draw_text(10,room_height/2+45,"K GIMME YO SHI BOY")
}


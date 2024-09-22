if place_meeting(x+hsp,y,obj_ground) {
	while !place_meeting(x+sign(hsp),y,obj_ground) {
		x+=sign(hsp)
	}
	hsp=0
}

x+=hsp

//colisao vertical

if place_meeting(x,y+vsp,obj_ground) {
	while !place_meeting(x,y+sign(vsp),obj_ground) {
		y+=sign(vsp)
	}
	vsp=0
}

y+=vsp


if place_meeting(x,y+1,obj_ground) {
} else {
	vsp+=0.3
}

y=round(y)

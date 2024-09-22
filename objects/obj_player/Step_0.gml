depth=-999999

if keyboard_check(ord("R")) {
	room_restart()
}

var move = -keyboard_check(vk_left)+keyboard_check(vk_right)

if hit=0{
	hsp=move*3
}

//colisao horizontal

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

if move!=0 && attack=0 && hit=0 {
	image_xscale=move
	sprite_index=spr_character_walking
}

//pular

if place_meeting(x,y+1,obj_ground) {
	if attack=0 && hit=0 {
		if keyboard_check(ord("Z")){vsp=-7}
	}
} else {
	vsp+=0.3
}

y=round(y)

if keyboard_check_pressed(ord("X")) && attack=0 && hit=0 {
	
	if !keyboard_check(vk_up) {
	attack=1
	var d=instance_create_depth(x,y,depth-1,obj_attack) 
	if hassword=0{d.STR=2 d.sprite_index=spr_punch}
	d.x=x
	d.y=y
	d.image_xscale=image_xscale
	} else {
		
		switch item {
			case "axe": 
			if MP>2{
				var a=instance_create_depth(x,y,depth-1,obj_axe_item)
				a.hspeed=1*image_xscale
				a.vspeed=-6
				MP-=2
			}	
			break;
			case "knife":
			if MP>1{
				a=instance_create_depth(x,y-16,depth-1,obj_knife_item)
				a.hspeed=8*image_xscale
				a.image_xscale=image_xscale
				MP-=1
			}	
			break;
		
		}
	}
}

if hitcool>0 {
	hitcool-=1
}

if hit=0 {
	sprite_index=spr_character
}

var target_x = obj_player.x - (global.view_w / 2);
global.view_x = smooth_approach(global.view_x, target_x, 0.1);
global.view_x = clamp(global.view_x, 0, room_width - global.view_w);

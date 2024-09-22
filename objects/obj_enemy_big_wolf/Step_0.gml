event_inherited();

var spd=1

if hit = 0 {
	if obj_player.x>x {
		x+=spd
		image_xscale=-1.5
	} else {
		x-=spd
		image_xscale=1.5
	}
	sprite_index=spr_big_wolf
}

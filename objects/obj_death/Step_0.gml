

if can=1 {
	obj_player.sprite_index=spr_character_hit
	instance_create_depth(obj_player.x,obj_player.y,depth,obj_sword)
	can=5
	obj_player.hassword=0
	obj_player.hit=1
}

if (can == 10) {
    if (image_xscale > 0) {
		image_xscale -= 0.05;
    }
    if (image_yscale > 0) {
		image_yscale -= 0.05;
	} else {
        instance_destroy();
    }
}

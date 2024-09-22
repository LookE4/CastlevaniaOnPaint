if hit=0 && hitcool=0 {
	hit=1
	sprite_index=spr_character_hit
	alarm[0]=20
	
	vsp=-2
		
	if other.x>x{hsp=-2}else{hsp=2}
	
	hitcool=50
	
	HP-=other.STR
	
	instance_destroy(obj_damage_shown)
	a=instance_create_depth(x,y-60,depth-1,obj_damage_shown)
	a.txt=other.STR
}
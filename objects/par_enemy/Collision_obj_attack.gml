if hit=0 && hitcool=0{
	hit=1 
	hitcool=30
	image_index=0
	
	HP-=other.STR
	alarm[0]=10
	
	instance_destroy(obj_damage_shown)
	a=instance_create_depth(x,y-60,depth-1,obj_damage_shown)
	a.txt=other.STR
	
	if other.type="item"{instance_destroy(other)}
 }
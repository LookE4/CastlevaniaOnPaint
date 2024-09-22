var chance=irandom_range(0,10)

if chance=0 {
	instance_create_depth(x,y,depth-1,obj_axe)
} 

if chance=1 {
	instance_create_depth(x,y,depth-1,obj_knife)
}

if chance>1 {
	instance_create_depth(x,y,depth-1,obj_mp)
}
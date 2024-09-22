move_towards_point(obj_death.x,obj_death.y,1.5)

if (place_meeting(x, y, obj_death)) {
    instance_destroy();
    
    obj_death.can = 10;
}
if keyboard_check_pressed(vk_up) && save=0 {
	save=1
	alarm[0]=50
}

if save=1 {
	image_speed+=0.1
}

if save=2 {
	visible=0
	obj_coffin.visible=1
}

if keyboard_check_pressed(vk_space) && save=2 {
	obj_coffin.visible=0
	save=3
}
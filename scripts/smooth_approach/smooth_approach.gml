// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function smooth_approach(current, target, speed) {
	/*
	* example use (smooth camera movment)
	* view_xview = smooth_approach(view_xview, x-view_wview/2. 0.1);
	*view_yview = smooth_approach(view_yview, y-view_hview/2, 0.1);
	*/
	
 var diff = target - current;
    if (abs(diff) < 0.5) {
        return target;
    } else {
        return current + sign(diff) * abs(diff) * speed;
    }
}
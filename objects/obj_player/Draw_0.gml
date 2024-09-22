draw_self()

var view_x=camera_get_view_x(view_camera[0])
var view_y=camera_get_view_y(view_camera[0])

draw_set_color(c_red)
draw_rectangle(view_x+30,view_y+10,view_x+10+HP,view_y+20,0)

draw_set_color(c_blue)
draw_rectangle(view_x+30,view_y+35,view_x+30+MP,view_y+45,0)
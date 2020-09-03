/// @description Track Mouse and Input
// You can write your code in this editor
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

hover = point_in_rectangle(mouseX, mouseY, x, y, x+width, y+height);

lClick = mouse_check_button_pressed(mb_left);
rClick = mouse_check_button_pressed(mb_right);
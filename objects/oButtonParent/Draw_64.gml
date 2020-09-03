/// @description Draw buttons

// Draw back
draw_set_color(hover ? c_gray : c_black);
draw_set_alpha(0.4);

draw_rectangle(x, y, x+width, y+height, 0);

// Reset alpha and color to default values
draw_set_alpha(1);
draw_set_color(c_white);

// Draw outline
draw_rectangle(x, y, x+width, y+height, 1);

/// @description Apply Juice
juiceDraw(x, y);

// Show key
if(showKey != -1) {
	var scale = 1 + sin(current_time/150) * 0.2;
	
	draw_sprite_ext(showKey, 0, x, y-20, scale, scale, 0, -1, 1);
	
	showKey = -1;
}
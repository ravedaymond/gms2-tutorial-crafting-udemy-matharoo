/// @description Draw pause surface before GUI elements
if(gamePaused && surface_exists(pauseSurface)) {
	draw_surface_ext(pauseSurface, 0, 0, 1, 1, 0, c_gray, 1);
}

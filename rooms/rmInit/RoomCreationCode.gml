// Modify resolution of the game (drawing surface)
surface_resize(application_surface, RES.WIDTH, RES.HEIGHT);

var windowWidth = RES.WIDTH*RES.SCALE;
var windowHeight = RES.HEIGHT*RES.SCALE;

window_set_size(windowWidth, windowHeight);

room_goto_next();
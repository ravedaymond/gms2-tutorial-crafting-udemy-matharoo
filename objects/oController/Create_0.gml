/// @description Insert description here
// You can write your code in this editor
enum RES {
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 4
}

var camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, camera);
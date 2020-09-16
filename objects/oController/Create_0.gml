/// @description Control global game settings
// Resolution
enum RES {
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 4
}

// Create camera
var camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

// Setup view
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, camera);

// Player Inventory
invList = ds_list_create();

// Pause
gamePaused = false;
pauseSurface = -1;

// Chest
chestID = noone;
movingArray = -1;

// Crafting Menu
craftMenuScroll = 0;
craftMenuHeight = 0;

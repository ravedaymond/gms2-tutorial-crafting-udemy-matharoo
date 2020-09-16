/// @description 
// Move held item
if(instance_exists(heldItem)){
	heldItem.x = x - 3 * image_xscale;
	heldItem.y = y + 3;
}

// Placing Mode
if(placingMode && instance_exists(placingInst)) {
	// Move instance
	with(placingInst) {
		x = round(mouse_x/PLACING_GRID_SIZE)*PLACING_GRID_SIZE;
		y = round(mouse_y/PLACING_GRID_SIZE)*PLACING_GRID_SIZE;
	}
	
	// Place
	if(mouse_check_button_pressed(mb_left)) {
		event_user(1);	
	}
}

// Open Chest
var chest = collision_circle(x, y, 12, oChestParent, false, false);

if(instance_exists(chest)) {
	// Show E key
	showKey = sprButtonE;
	
	// Open chest
	if(keyboard_check_pressed(ord("E"))) {
		pauseGame(chest);	
	}
}
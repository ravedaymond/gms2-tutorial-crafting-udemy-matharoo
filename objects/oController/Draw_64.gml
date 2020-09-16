/// @description Draw HUD
// Hearts
var margin = 4;
var startX = margin;
var startY = margin;

var size = sprite_get_height(sprHeart);
var dist = size + margin;

with(oPlayer) {

	for(var i = 0; i < hp; i++) {
		var subImg = 0;
		
		if(hp-i <= 0.5) {
			subImg = 1;	
		}
		
		// Draw heart
		draw_sprite(sprHeart, subImg, startX+dist*i, startY);
	}
}

// 
if(is_array(movingArray)) {
	// Item data
	var item = movingArray[0];
	var spr = global.itemSprite[item];
	
	// Mouse position
	var mouseX = device_mouse_x_to_gui(0);
	var mouseY = device_mouse_y_to_gui(0);
	
	// Draw item
	draw_sprite(spr, 0, mouseX, mouseY);
}
/// @description Draw item in slot

// Inherit the parent event
event_inherited();

// Get array from list
var list = oController.invList;
var arr = list[| slotID];

// Draw item
if(is_array(arr)) {
	var item = arr[0];
	var spr = global.itemSprite[item];
	
	draw_sprite(spr, 0, x+width/2, y+height/2);
	
	// Draw count
	var count = arr[1];
	
	draw_set_font(fGUI);
	draw_text(x+2, y+4, count);
}


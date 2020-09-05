/// @description Draw item
// Inherit the parent event
event_inherited();

// Crafting animation
if(craftAnim > 0) {
	draw_rectangle(x, y, x+width*craftAnim, y+height, 0);	
}

var margin = 4;

// Calculate image size
var sprSize = 8;
var sprScaled = height - margin * 2;
var scale = sprScaled / sprSize;

// Draw item
var spr = global.itemSprite[item];

draw_sprite_ext(spr, 0, x+margin+sprScaled/2, y+margin+sprScaled/2, scale, scale, 0, c_white, 1);

// Draw name
var name = global.itemName[item];

draw_set_font(fGUI);
draw_text(x+margin*2+sprScaled, y+margin+2, name);

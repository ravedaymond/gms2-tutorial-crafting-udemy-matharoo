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
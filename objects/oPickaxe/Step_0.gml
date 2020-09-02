/// @description Insert description here
// You can write your code in this editor

// Rotation
rotation = lerp(rotation, 45, 0.1);
image_angle = rotation*oPlayer.image_xscale;

// Get input
var mousePress = mouse_check_button(mb_left);

// Get breakable instance at mouse position
var breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with(breakable) {
	// Get distance
	var dist = distance_to_object(oPlayer);
	
	// In range?
	if(dist < other.breakDistance) {
		// Set selected
		other.selectorInst = id;
		
		if(other.cooldown == 0 && mousePress) {
			// Reduce hp
			hp--;
			
			// Set rotation
			other.rotation = -80;
			
			// Set cooldown
			other.cooldown = 20;
		}
	}
}

// Cooldown
if(cooldown > 0) {
	cooldown--;	
}
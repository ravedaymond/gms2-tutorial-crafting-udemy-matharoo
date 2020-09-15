/// @description

// Rotation
rotation = lerp(rotation, 45, 0.1);
image_angle = rotation*oPlayer.image_xscale;

// Get input
var mousePress = mouse_check_button(mb_left);

#region Breakables

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
			
			// Juice with Breakable
			juiceApplyScaling(0.7, 1.3, 1, 1);
			juiceApplyFlash(c_white, 1);
		}
	}
}

#endregion
#region Attacking

// Get enemy instance at mouse position
var enemy = instance_position(mouse_x, mouse_y, oEnemyParent);

with(enemy) {
	// Get distance
	var dist = distance_to_object(oPlayer);
	
	// In range?
	if(dist < other.attackDistance) {
		// Set selected
		other.selectorInst = id;
		
		if(other.cooldown == 0 && mousePress) {
			// Set rotation
			other.rotation = -80;
			// Set cooldown
			other.cooldown = 20;
			
			// Attack Enemy
			getAttacked(oPlayer);
		}
	}
}

#endregion

// Cooldown
if(cooldown > 0) {
	cooldown--;		
}

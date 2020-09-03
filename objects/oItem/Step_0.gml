/// @description Allow collecting of item
// Collision with player
if(!collected && place_meeting(x, y, oPlayer)) {
	
	// Collected if added to inventory
	collected = addInventoryItem(type, 1);
}

// If collected: fade away
if(collected) {
	image_alpha -= 0.05;
	y -= 0.5;
	
	// Destroy object
	if(image_alpha < 0.1) {
		instance_destroy();	
	}
}

// Falling item gravity
if(z < 0) {
	zSpd += 0.5;
	z += zSpd;
	
	// "Ground" collision
	if(z >= 0) {
		z = 0;
		zSpd = 0;
	}
}
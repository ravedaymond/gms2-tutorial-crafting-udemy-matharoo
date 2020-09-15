/// @description 
// Roaming
if(!following) {
	moveSpeed = moveSpeedRoam;
	
	// Set roam position
	if(roamTime == 0) {
		var len = random(roamDistance);
		var dir = random(360);
		
		targetX = xstart + lengthdir_x(len, dir);
		targetY = ystart + lengthdir_y(len, dir);
		
		roamTime = 120;
	} else {
		roamTime--;
	}
	
	// Set follow
	if(instance_exists(oPlayer) && distance_to_object(oPlayer) < alertedDistance) {
		following = true;	
	}
} else { // Following
	moveSpeed = moveSpeedFollow;
	
	// Set target
	if(instance_exists(oPlayer) && distance_to_object(oPlayer) < followingDistance) {
		targetX = oPlayer.x;
		targetY = oPlayer.y;
	} else { // Set roaming
		following = false;	
	}
}

// Move
if(point_distance(x, y, targetX, targetY) > moveSpeed) {
	xMove = clamp(targetX-x, -1, 1);
	yMove = clamp(targetY-y, -1, 1);
} else { // Stop
	xMove = 0;
	yMove = 0;
}

// Enemy collision in follow
if(following) {
	var newX = x + xMove*moveSpeed;
	var newY = y + yMove*moveSpeed;
	
	if(place_meeting(newX, newY, oEnemyParent)) {
		xMove = 0;
		yMove = 0;
	}
}

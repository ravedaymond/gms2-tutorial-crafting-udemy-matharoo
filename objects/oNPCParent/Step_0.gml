/// @description Updates every game "step"
// Juice
juiceStep();

// Calculate movement
xSpd = xMove*spd;
ySpd = yMove*spd;

// Boost
xSpd += round(boostX);
ySpd += round(boostY);

boostX = lerp(boostX, 0, 0.1);
boostY = lerp(boostY, 0, 0.1);

// Horizontal move
if(collision(x+xSpd, y)) {
	while(!collision(x+sign(xSpd), y)) {
		x += sign(xSpd);
	}
	xSpd = 0;
}

// Vertical move
if(collision(x, y+ySpd)) {
	while(!collision(x, y+sign(ySpd))) {
		y += sign(ySpd);	
	}
	ySpd = 0;
}

// Move instance
x += xSpd;
y += ySpd;

// Sprite control
if(xSpd != 0 || ySpd != 0){
	sprite_index = spriteMove;
} else {
	sprite_index = spriteIdle;	
}

// Moving direction
var faceDir = sign(xSpd);
if(faceDir != 0) {
	image_xscale = faceDir;	
}

// Animation Speed / Direction
if(xSpd != 0 && sign(xSpd) != faceDir) {
	image_speed = -1;	
} else {
	image_speed = 1;	
}

// Die
if(hp <= 0) {
	instance_destroy();	
}
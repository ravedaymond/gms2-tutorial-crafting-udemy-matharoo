/// @description Updates every game "step"
// Get Input
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));

var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Get Input Directions
var xMove = right - left;
var yMove = down - up;

// Calculate movement
xSpd = xMove*spd;
ySpd = yMove*spd;

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
	sprite_index = sprPlayerRun;
} else {
	sprite_index = sprPlayerIdle;	
}

// Mouse direction
var mouseDir = sign(mouse_x - x);
if(mouseDir != 0) {
	image_xscale = mouseDir;	
}

// Animation Speed
if(xMove != 0 && sign(xMove) != mouseDir) {
	image_speed = -1;	
} else {
	image_speed = 1;	
}

// Die
if(hp <= 0) {
	instance_destroy();	
}
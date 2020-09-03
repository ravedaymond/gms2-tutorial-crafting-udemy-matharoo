/// @description Create inventory interface
// Dimensions
var margin = 10;
var padding = 4;
var cellSize = 24;

// Inventory Items
var cols = 6;
var rows = 2;

// Coordinates
var posX = margin;
var posY = RES.HEIGHT - (margin+padding+(cellSize*rows));

// Create buttons
var xx = 0;
var yy = 0;

for(var i = 0; i < INVENTORY_SIZE; i++) {
	// Button Coordinates
	var buttonX = posX + (padding+cellSize) * xx;
	var buttonY = posY + (padding+cellSize) * yy;
	
	// Create button
	var button = instance_create_depth(buttonX, buttonY, 0, oButtonInv);
	
	// Set button properties
	with(button) {
		slotID = i;
		width = cellSize;
		height = cellSize;
	}
	
	// Move position
	xx++;
	if(xx == cols) {
		xx = 0;
		yy++;
	}
}
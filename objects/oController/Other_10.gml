/// @description Create inventory and crafting interface
#region Dimensions
var margin = 10;
var padding = 4;
var cellSize = 24;
#endregion

#region Inventory
// Inventory Items
var cols = 6;
var rows = 2;

// Coordinates
var xPos = margin;
var yPos = RES.HEIGHT - (margin+padding+(cellSize*rows));

// Create buttons
var xx = 0;
var yy = 0;

for(var i = 0; i < INVENTORY_SIZE; i++) {
	// Button Coordinates
	var buttonX = xPos + (padding+cellSize) * xx;
	var buttonY = yPos + (padding+cellSize) * yy;
	
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
#endregion

#region Crafting
var width = 120;
var height = 26;
var xPos = RES.WIDTH - (width+margin);
var yPos = padding;

var titleHeight = 12;

// Create crafting buttons
var arr = global.craftingMenu;
var size = array_length(arr);

for(var i = 0; i < size; i++) {
	var item = arr[i];
	
	// Title
	if(is_string(item)) {
		// Create button title
		createButtonTitle(xPos, yPos, width, titleHeight, item);
		
		yPos += (titleHeight + padding);
	} else {
		// Crafting button
		createButtonCraft(xPos, yPos, width, height, item);
		yPos += (height + padding);
	}
}

craftMenuHeight = yPos - RES.HEIGHT;

#endregion
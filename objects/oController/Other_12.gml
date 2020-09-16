/// @description Create chest inventory
// Dimensions
var margin = 10;
var padding = 4;
var cellSize = 24;

// Lists to show
var listArray = [chestID.itemList, invList];
var sizeArray = [chestID.maxItemCount, INVENTORY_SIZE];
var listCount = 2;

// Create lists
for(var i = 0; i < listCount; i++) {
	// List ID & inventory size
	var list = listArray[i];
	var invSize = sizeArray[i];
	
	// Size 
	var cols = invSize/2;
	var rows = 2;
	
	// Area size
	var areaWidth = (cellSize + padding) * cols;
	var areaHeight = (cellSize + padding) * rows;
	areaWidth -= padding;
	areaHeight -= padding;
	
	// Area position
	var areaX = (RES.WIDTH/2) - (areaWidth/2);
	var areaY = margin;
	
	if(i == 1) areaY = RES.HEIGHT - (margin+areaHeight);
	
	// Start placing buttons
	var xx = 0;
	var yy = 0;
	
	for(var j = 0; j < invSize; j++) {
		var btnX = areaX + (cellSize+padding)*xx;
		var btnY = areaY + (cellSize+padding)*yy;
		
		createButtonMoveable(btnX, btnY, cellSize, cellSize, list, j);
		
		// Next 
		xx++;
		if(xx == cols) {
			xx = 0;
			yy++;
		}
	}
}

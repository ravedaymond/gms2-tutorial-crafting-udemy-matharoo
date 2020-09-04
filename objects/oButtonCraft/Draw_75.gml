/// @description Draw recipe mouse hover
if(hover) {
	var size = 8;
	var margin = 4;
	var cellSize = size + margin*2;
	
	var xPos = device_mouse_x_to_gui(0)+4;
	var yPos = device_mouse_y_to_gui(0);
	
	// Recipe array
	var recipe = global.itemRecipe[item];
	var recipeSize = array_length(recipe);
	
	// Draw background
	draw_set_color(c_dkgray);
	draw_rectangle( xPos, yPos, xPos + cellSize * recipeSize, yPos + cellSize, 0);
	draw_set_color(c_white);
	
	// Loop and draw items
	for(var i = 0; i < recipeSize; i++) {
		 var itemX = xPos + cellSize * i;
		 var itemY = yPos;
		 
		 // Ingredient data
		 var arr = recipe[i];
		 var ingr = arr[0];
		 var count = arr[1];
		 
		 var spr = global.itemSprite[ingr];
		 
		 // Draw item
		 draw_sprite(spr, 0, itemX + cellSize/2, itemY+cellSize/2);
		 
		 // Draw count
		 draw_set_font(fGUI);
		 draw_text(itemX+cellSize*0.8, itemY+cellSize*0.7, count);
		 
	}
}
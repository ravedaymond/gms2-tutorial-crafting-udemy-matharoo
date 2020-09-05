/// @description Create crafted item
// Get recipe
var recipe = global.itemRecipe[item];
var recipeSize = array_length(recipe);

// Delete ingredients
for(var i = 0; i < recipeSize; i++) {
	// Get ingredient data
	var ingrArr = recipe[i];
	var ingr = ingrArr[0];
	var count = ingrArr[1];
	
	// Get item array
	var arr = getItemArray(ingr);
	
	// Reduce count
	arr[@ 1] -= count;
}

// Add crafted item to inventory
inventoryAddItem(item, 1);
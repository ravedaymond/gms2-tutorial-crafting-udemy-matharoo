/// @description Crafting 
// Mouse input
var held = hover && mouse_check_button(mb_left);

if(held && craftAnim <= 0) {
	// Get recipe
	var recipe = global.itemRecipe[item];
	var recipeSize = array_length(recipe);
	
	// Check ingredients
	var canCraft = true;
	
	for(var i = 0; i < recipeSize; i++) {
		// Get ingredient datas
		var ingrArr = recipe[i];
		var ingr = ingrArr[0];
		var count = ingrArr[1];
		
		// Get item array
		var arr = getItemArray(ingr);
		
		if(!is_array(arr)) {
			canCraft = false;
			break;
		}
		
		// Check count
		var arrCount = arr[1];
		
		if(arrCount < count) {
			canCraft = false;
			break;
		}
	}
	
	// Start crafting animation
	if(canCraft) {
		craftAnim = 0.2;	
	}
}

// Crafting animation
if(held && craftAnim > 0) {
	craftAnim += 0.02;
	
	// Continue crafting
	if(craftAnim >= 1) {
		event_user(0);
		craftAnim = 0;
	}
} else {
	craftAnim = 0;	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function createItem
/// @param	{index}		item	The type of object the item represents.
/// @param	{string}	name	The name of the item.
/// @param	{index}		sprite	The sprite index for the item.
/// @param	{array}		recipe	The array of items required to craft this item.
function createItem(item, name, sprite, recipe){
	global.itemName[item] = name;
	global.itemSprite[item] = sprite;
	global.itemRecipe[item] = recipe;
}

/// @function createPlaceableItem
/// @param	{index}		item	The type of object the item represents.
/// @param	{string}	name	The name of the item.
/// @param	{index}		sprite	The sprite index for the item.
/// @param	{array}		recipe	The array of items required to craft this item.
/// @param	<placeable>	placeable	
function createPlaceableItem(item, name, sprite, recipe, placeable){
	createItem(item, name, sprite, recipe);
	global.itemPlaceable[item] = placeable;
}

/// @function getItemArray
/// @param	{index}		item	The item array we wish to get.
function getItemArray(item){
	// Get list of item arrays
	var list = oController.invList;
	var listSize = ds_list_size(list);
	
	// Get array from list
	for(var i = 0; i < listSize; i++) {
		// Array data
		var arr = list[| i];
		
		if(is_array(arr)) {
			var arrItem = arr[0];
			
			// Check
			if(arrItem == item) {
				return arr;	
			}
		}
	}
	// Not Found
	return -1;
}
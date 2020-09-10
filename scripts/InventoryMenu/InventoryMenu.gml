// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function inventoryAddItem(item, count)
/// @param	{index} item	The item being added.
/// @param	{real}	count	Number to add of item.
function inventoryAddItem(item, count){
	
	var invList = oController.invList;
	// If item already exists in list
	var listSize = ds_list_size(invList);
	
	for(var i = 0; i < listSize; i++) {
		// Get array
		var arr = invList[| i];
		
		// Check item
		if(is_array(arr) && arr[0] == item) {
			arr[@ 1] += count;
			return true;
		} else 
		// Insert into empty slot
		if (!is_array(arr)) {
			invList[| i] = [item, count];
			
			return true;
		}
	}
	
	// Inventory Full
	if(listSize >= INVENTORY_SIZE) {
		return false;
	}

	// Otherwise create new array
	var arr = [item, count];
	ds_list_add(invList, arr);
	return true;
}

/// @function inventoryDropItem(item)
/// @param {index} item		The inventory position of the item to drop the stack of.
function inventoryDropItem(item) {
	var list = oController.invList;
	
	// Remove stack
	list[| item] = -1;
}
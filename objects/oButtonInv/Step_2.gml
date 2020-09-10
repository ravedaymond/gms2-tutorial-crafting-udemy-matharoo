/// @description
// Check count
var arr = oController.invList[| slotID];

if(is_array(arr)) {
	var count = arr[1];
	
	// Remove
	if(count <= 0) {
		inventoryDropItem(slotID);	
	}
}
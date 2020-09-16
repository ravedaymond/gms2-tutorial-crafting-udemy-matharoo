/// @description 

if(hover && lClick) {
	// Already moving an array
	if(is_array(oController.movingArray)) {
		var arr = list[| slotID];
		
		if(!is_array(arr)) {
			list[| slotID] = oController.movingArray;
			oController.movingArray = -1;
		}
	} else { // Not moving anything
		var arr = list[| slotID];
		
		if(is_array(arr)) {
			oController.movingArray = arr;
			list[| slotID] = -1;
		}
			
	}
}
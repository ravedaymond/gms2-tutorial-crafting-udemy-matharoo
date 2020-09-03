// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

if(instance_exists(oController)) {
	var item = argument0;
	var count = argument1;

	var list = oController.invList;
	
	// If item already exists in list
	var listSize = ds_list_size(list);
	
	for(var i = 0; i < listSize; i++) {
		// Get array
		var arr = list[| i];
		
		// Check item
		if(arr[0] == item) {
			arr[@ 1] += count;
			return;
		}
	}

	// Otherwise create new array
	var arr = [item, count];
	ds_list_add(list, arr);	

}

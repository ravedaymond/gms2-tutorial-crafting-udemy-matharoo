/// @description Control item dropping
if(hover && rClick) {
	// Get array
	var arr = oController.invList[| slotID];
	
	if(is_array(arr)) {
		// Re-activate player object
		instance_activate_object(oPlayer);
		
		// Drop items
		var invItem = arr[0];
		var count = arr[1];
		
		repeat(count) {
			// Item drop placement
			var xx = oPlayer.x + irandom_range(12, 20);
			var yy = oPlayer.y + irandom_range(12, 20);
			
			// Create oItem
			var inst = instance_create_layer(xx, yy, "Instances", oItem);
			
			// Set item properties
			with (inst) {
				type = invItem;
				
				sprite_index = global.itemSprite[invItem];
				
				// Set "z-axis" drop position
				z = -20;
			}
		}
		
		// Decativate player & items
		instance_deactivate_object(oPlayer);
		instance_deactivate_object(oItem);
		
		inventoryDropItem(slotID);
	}
}
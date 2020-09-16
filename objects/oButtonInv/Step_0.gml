/// @description Control item dropping and placing
#region Use Item
if(hover && lClick) {
	// Get array
	var arr = oController.invList[| slotID];
	
	if(is_array(arr)) {
		// Vars
		var invItem = arr[0];
		var count = arr[1];
		
		var used = false;
		
		// Effect
		instance_activate_object(oPlayer);
		
		switch(invItem) {
			case ITEM.POTION: 
				with(oPlayer) {
					if(hp < hpMax) {
						hp++;
						used = true;
						
						if(hp > hpMax) { 
							hp = hpMax;	
						}
					}
				}
			break;
			
			case ITEM.APPLE:
				with(oPlayer) {
					if(hp < hpMax) {
						hp+=0.5;
						used = true;
					}
				}
			break;
			
			default:
				if(global.itemPlaceable[invItem] != noone) {
					pauseGame();
					with(oPlayer) {
						placingObj = global.itemPlaceable[invItem];
						event_user(0);
					}
					used = true;
				}
			break;
		}
		
		if(oController.gamePaused) {
			instance_deactivate_object(oPlayer);
		}
		
		// Used
		if(used) {
			arr[@ 1]--;
			show_debug_message("Item used: " + global.itemName[invItem]);
		} else {
			show_debug_message("Item couldn't be used: " + global.itemName[invItem]);
		}
	}
}
#endregion
#region Remove Item
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
#endregion
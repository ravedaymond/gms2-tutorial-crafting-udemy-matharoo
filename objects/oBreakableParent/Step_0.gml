/// @description Destroy instance if no hp
juiceStep();

if(hp <= 0) {
	instance_destroy();
	
	// How many resources to create
	var resCount = choose(1, 1, 1, 1, 2, 2, 3);
	if(self.resCount != -1) {
		resCount =	self.resCount;
	}
	var resMax = array_length(res);
	
	repeat(resCount) {
		// Get random resource
		var resID = irandom(resMax - 1);
		var dropRes = res[resID];
		
		// Item position
		var xx = x + irandom_range(-4, 4);
		var yy = y + irandom_range(-4, 4);
		
		// Create oItem
		var inst = instance_create_layer(xx, yy, "Instances", oItem);
		
		// Set oItem instance properties
		with(inst) {
			type = dropRes;
			sprite_index = global.itemSprite[dropRes];
			
			z = -other.sprite_height/2;
		}
	}
}
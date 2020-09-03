/// @description Draw healthbar
if(instance_exists(oPlayer)) {
	var dist = distance_to_object(oPlayer);
	if(dist < hpDist) {
		if( hp < hpMax) {
			var yy = bbox_bottom+1;
	
			// Draw healthbar fill
			var amount = hp/hpMax;
			// Mask width instead of sprite width as the size can be different, usually with mask being smaller
			var maskWidth = bbox_right - bbox_left;
	
			draw_set_color(hpColor);
			draw_rectangle(bbox_left, yy, bbox_left+maskWidth*amount, yy+hpHeight, 0);
			draw_set_color(-1);
	
			// Draw healthbar border
			draw_rectangle(bbox_left, yy, bbox_right, yy+hpHeight, 1);
		}
	}
}
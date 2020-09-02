/// @description Draw healthbar
if(instance_exists(oPlayer)) {
	var dist = distance_to_object(oPlayer);
	if(dist < hpDist) {
		if( hp < hpMax) {
			var yy = bbox_bottom+1;
	
			// Draw healthbar fill
			var amount = hp/hpMax;
	
			draw_set_color(hpColor);
			draw_rectangle(bbox_left, yy, bbox_left+sprite_width*amount, yy+hpHeight, 0);
			draw_set_color(-1);
	
			// Draw healthbar border
			draw_rectangle(bbox_left, yy, bbox_right, yy+hpHeight, 1);
		}
	}
}
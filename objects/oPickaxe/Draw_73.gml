/// @description Draw selector
if(instance_exists(selectorInst)) {
	// Run code in selected instance
	with(selectorInst) {
		// Draw selector in all four corners
		draw_sprite_ext(sprSelector, other.selectorFrame, bbox_left, bbox_top, 1, 1, 0, -1, 1);
		
		draw_sprite_ext(sprSelector, other.selectorFrame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
		
		draw_sprite_ext(sprSelector, other.selectorFrame, bbox_left, bbox_bottom, 1, 1, 90, -1, 1);
		
		draw_sprite_ext(sprSelector, other.selectorFrame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
	}
	// Animation
	selectorFrame += 0.15;
		
	if(selectorFrame >= selectorFrameNumber) selectorFrame -= selectorFrameNumber;
		
	// Reset selector instance
	selectorInst = noone;
}
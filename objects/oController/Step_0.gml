/// @description Pause/Unpause game
#region Pause game
if(keyboard_check_pressed(vk_escape)) {
	pauseGame();
}
#endregion
#region Crafting Menu Scrolling
	if(gamePaused) {
		var mouseWheel = mouse_wheel_up() - mouse_wheel_down();
		mouseWheel *= 8;
		
		craftMenuScroll += mouseWheel;
		
		craftMenuScroll = clamp(craftMenuScroll, -craftMenuHeight, 0);
		
		// Apply
		with(oButtonCraft) {
			y = ystart + other.craftMenuScroll;
		}
		with(oButtonTitle) {
			y = ystart + other.craftMenuScroll;	
		}
	}
#endregion


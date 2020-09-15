// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pauseGame(){
	with(oPlayer) {
		if(placingMode) {
			event_user(1);	
		}
	}
	with(oController) {
		if(gamePaused) {
			gamePaused = false;
		
			// Activate all
			instance_activate_all();
		
			// Remove surface
			if(surface_exists(pauseSurface)) {
				surface_free(pauseSurface);	
			}
		
			// Remove inventory GUI
			event_user(1);
		} else {
			gamePaused = true;
		
			// Deactivate all 
			// If true, calling instance remains active;
			instance_deactivate_all(true);
		
			// Create surface
			pauseSurface = surface_create(RES.WIDTH, RES.HEIGHT);
		
			// Copy application_surface
			surface_copy(pauseSurface, 0, 0, application_surface);
		
			// Create inventory GUI
			event_user(0);
		}		
	}
}
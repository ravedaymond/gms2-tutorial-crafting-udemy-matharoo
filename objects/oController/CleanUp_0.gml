/// @description Clean up memory items
camera_destroy(view_camera);
ds_list_destroy(invList);

// Remove pause surface
if(surface_exists(pauseSurface)) {
	surface_free(pauseSurface);	
}
/// @description Placing Mode on

// Deactivate Pickaxe
instance_deactivate_object(oPickaxe);

// Enable placing mode
placingMode = true;

// Create placing instance
placingInst = instance_create_layer(mouse_x, mouse_y, "Instances", placingObj);
placingInst.image_alpha = 0.5;

// Clear mouse any mouse input
mouse_clear(mb_left);

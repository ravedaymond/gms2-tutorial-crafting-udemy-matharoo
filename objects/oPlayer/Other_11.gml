/// @description Placing Mode off

// Activate Pickaxe
instance_activate_object(oPickaxe);

// Enable placing mode
placingMode = false;

// Reset placing instance
placingInst.image_alpha = 1;
placingInst = noone;

// Clear mouse any mouse input
mouse_clear(mb_left);

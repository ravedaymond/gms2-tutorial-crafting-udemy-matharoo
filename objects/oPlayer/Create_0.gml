/// @description
// Juice
juiceCreate();

spd = 2;

// Knockback
knockbackSpeed = 4;

xSpd = 0;
ySpd = 0;

boostX = 0;
boostY = 0;

// Create pickaxe
heldItem = instance_create_layer(x, y, "Instances", oPickaxe);

// Health
hp = 3;
hpMax = hp;

// Placing Mode
placingMode = false;
placingObj = noone;
placingInst = noone;
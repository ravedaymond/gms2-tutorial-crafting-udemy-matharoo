/// @description Control instance depth

var playerExists = instance_exists(oPlayer);
var playerHeldItem = noone;

if(playerExists) { playerHeldItem = oPlayer.heldItem; }

with(all) {
	depth = -bbox_bottom;
	if(playerExists && playerHeldItem == id) {
		depth -= 10;	
	}
}
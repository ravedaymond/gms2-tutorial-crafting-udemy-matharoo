// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function getAttacked(attacker) {
	hp--;
	
	// Apply knockback
	var dir = point_direction(attacker.x, attacker.y, x, y);
	boostX = lengthdir_x(knockbackSpeed, dir);
	boostY = lengthdir_y(knockbackSpeed, dir);
	
	// Juice
	juiceApplyScaling(0.5, 1.5, 1, 1);
	if(attacker == oPlayer) {
		juiceApplyFlash(c_white, 1);	
	} else {
		juiceApplyFlash(c_red, 1);	
	}
}
/// @description 

// Inherit the parent event
event_inherited();

// Properties
moveSpeedRoam = 0.5;
moveSpeedFollow = 0.9;

moveSpeed = moveSpeedRoam;

targetX = 0;
targetY = 0;

// Following
following = false;
alertedDistance = 80;
followingDistance = alertedDistance*1.3;


// Roaming
roamDistance = 64;
roamTime = 0;

// Attack
attackCooldown = 0;
attackRadius = 8;
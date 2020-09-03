// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// 
gml_pragma("global", "Init()");

// Items
enum ITEM {
	APPLE,
	ORANGE,
	WOOD,
	STONE,
	IRON
}
	
global.itemSprite[ITEM.APPLE] = sprApple;
global.itemSprite[ITEM.ORANGE] = sprOrange;
global.itemSprite[ITEM.WOOD] = sprWood;
global.itemSprite[ITEM.STONE] = sprStone;
global.itemSprite[ITEM.IRON] = sprIron;

// Inventory
#macro INVENTORY_SIZE 12
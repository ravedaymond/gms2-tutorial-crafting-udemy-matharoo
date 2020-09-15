// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// 
gml_pragma("global", "Init()");

// Placing grid size
#macro PLACING_GRID_SIZE 16

// Items
enum ITEM {
	APPLE,
	ORANGE,
	WOOD,
	STONE,
	IRON,
	
	POTION,
	SYRUP,
	BLOCK_WOOD,
	BLOCK_IRON,
	ANGRY_STATUE
}
createItem(ITEM.APPLE, "Apple", sprApple, []);
createItem(ITEM.ORANGE, "Orange", sprOrange, []);
createItem(ITEM.WOOD, "Wood", sprWood, []);
createItem(ITEM.STONE, "Stone", sprStone, []);
createItem(ITEM.IRON, "Iron", sprIron, []);

createItem(ITEM.POTION, "Potion", sprPotion, [
	[ITEM.APPLE, 4]
]);
createItem(ITEM.SYRUP, "Syrup", sprSyrup, [
	[ITEM.ORANGE, 4],
	[ITEM.APPLE, 2]
]);
createPlaceableItem(ITEM.BLOCK_WOOD, "Wood Block", sprBlockWood, [
	[ITEM.WOOD, 2]
], oPlaceableBlockWood);
createItem(ITEM.BLOCK_IRON, "Iron Block", sprBlockIron, [
	[ITEM.IRON, 4]
]);

createPlaceableItem(ITEM.ANGRY_STATUE, "Angry Statue", sprAngryStatue, [
	[ITEM.STONE, 3]
], oAngryStatue);


// Inventory
#macro INVENTORY_SIZE 12

global.craftingMenu = [
	"CRAFTING",
	"Stats",
	ITEM.POTION,
	ITEM.SYRUP,
	
	"Building",
	ITEM.BLOCK_WOOD,
	ITEM.BLOCK_IRON,
	
	"Statues",
	ITEM.ANGRY_STATUE
	
]
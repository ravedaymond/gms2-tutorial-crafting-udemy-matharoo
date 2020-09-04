// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function createItem
/// @param	{index}		item	The type of object the item represents.
/// @param	{string}	name	The name of the item.
/// @param	{index}		sprite	The sprite index for the item.
/// @param	{array}		recipe	The array of items required to craft this item.
function createItem(item, name, sprite, recipe){
	global.itemName[item] = name;
	global.itemSprite[item] = sprite;
	global.itemRecipe[item] = recipe;
}
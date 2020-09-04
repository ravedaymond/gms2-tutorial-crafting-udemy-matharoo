// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function createButtonCraft(xPos, yPos, width, height, item)
/// @param	{real}	xPos	Starting x position for the button.
/// @param	{real}	yPos	Starting y position for the button.
/// @param	{real}	width	The width of the button being created.
/// @param	{real}	height	The height of the button being created.
/// @param	{index} item	The item to display in the crafting button.
function createButtonCraft(xPos, yPos, width, height, item) {

	// Create button
	var inst = instance_create_depth(xPos, yPos, 0, oButtonCraft);
	
	with(inst) {
		self.width = width
		self.height = height;
		self.item = item;
	}
	
	return inst;
}
/// @function createButtonTitle(xPos, yPos, width, height, item)
/// @param	{real}	xPos	Starting x position for the button.
/// @param	{real}	yPos	Starting y position for the button.
/// @param	{real}	width	The width of the button being created.
/// @param	{real}	height	The height of the button being created.
/// @param	{index} text	The text to display for the title.
function createButtonTitle(xPos, yPos, width, height, text) {
	// Create button
	var inst = instance_create_depth(xPos, yPos, 0, oButtonTitle);
	
	with(inst) {
		self.width = width;
		self.height = height;
		self.text = text;
	}
	
	return inst;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function juiceCreate(){
	// Scaling
	xScale = 1;
	yScale = 1;
	xScaleTarget = 1;
	yScaleTarget = 1;
	scalingSpeed = 0.1
	
	// Flashing
	shFlashAlpha = 0;
	shFlashColor = c_white;
}

function juiceStep() {
	// Set scale
	xScale = lerp(xScale, xScaleTarget, scalingSpeed);
	yScale = lerp(yScale, yScaleTarget, scalingSpeed);
	
	// Reduce flash alpha
	if(shFlashAlpha > 0) {
		shFlashAlpha-=0.1;	
	}
}

function juiceDraw(x, y) {
	if(shFlashAlpha > 0) {
		shader_set(shFlash);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*xScale, image_yscale*yScale, image_angle, shFlashColor, shFlashAlpha);
		shader_reset();
	} else {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*xScale, image_yscale*yScale, image_angle, image_blend, image_alpha);
	}
}

function juiceApplyScaling(xScale, yScale, xScaleTarget, yScaleTarget) {
	self.xScale = xScale;
	self.yScale = yScale;
	self.xScaleTarget = xScaleTarget;
	self.yScaleTarget = yScaleTarget;
}

function juiceApplyFlash(shFlashColor, shFlashAlpha) {
	self.shFlashColor = shFlashColor;
	self.shFlashAlpha = shFlashAlpha;
}
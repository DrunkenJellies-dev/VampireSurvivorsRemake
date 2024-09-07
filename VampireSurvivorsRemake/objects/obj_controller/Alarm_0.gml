//using the parent object for the calculations
with(obj_enemyParent){

	//getting the direction of the player compared to the player
	direction = point_direction(x,y,obj_hero.x,obj_hero.y);
	speed = walkSpeed;
	
	//flipping the sprite left and right
	if (obj_hero.x > x)
	{
		image_xscale = 1;
	}
	else 
	{
		image_xscale = -1;
	}
	
	depth = -y;
	
	//resetting enemy sprite
	if(sprite_index == sprDamaged)
	{
			sprite_index = spr;
	}
}

// setting the depth 
obj_hero.depth = -obj_hero.y;

///loop
alarm[0] = alaTime;
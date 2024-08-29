with(obj_enemyParent){

	direction = point_direction(x,y,obj_hero.x,obj_hero.y);
	speed = walkSpeed;
	
	if (obj_hero.x > x)
	{
		image_xscale = 1;
	}
	else 
	{
		image_xscale = -1;
	}
	
	depth = -y;
}

obj_hero.depth = -obj_hero.y;


///loop
alarm[0] = alaTime;
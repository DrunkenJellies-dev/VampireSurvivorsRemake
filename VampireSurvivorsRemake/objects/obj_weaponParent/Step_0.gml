/// @description Insert description here

var list = ds_list_create();

var num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemyParent, false, true, list, false);

if num > 0
{
	for (var i = 0; i < num; ++i;)
	{
		
		if(list[| i].sprite_index == list[| i].spr)
		{
			//push the spite back
			var dir = point_direction(x,y, list[| i].x, list[| i].y)
			list[| i].x = list [| i].x + lengthdir_x(10, dir);
			list[| i].y = list [| i].y + lengthdir_y(10, dir);
			
			list[| i].sprite_index = list[| i].sprDamaged;
		
		
			list[| i].hp -= dmg;
		
			if(list[| i].hp <= 0)
			{
				instance_destroy(list[| i]);
			}
		}
	}
}

ds_list_destroy(list);
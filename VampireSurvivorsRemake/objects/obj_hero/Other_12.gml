/// @description Fireball

var fireball = instance_create_layer(x,y,"Instances", obj_fireball);

	fireball.direction = irandom_range(0, 360);
	fireball.image_angle = fireball.direction;
	fireball.speed = 4;







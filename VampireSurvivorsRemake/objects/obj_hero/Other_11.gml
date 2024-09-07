///@description Scythe

var scythe = instance_create_layer(x,y,"Instances", obj_scythe);

	scythe.direction = irandom_range(45, 135);
	scythe.speed = 4;
	scythe.gravity = 0.1;
	scythe.friction = 0.01;
//setting the walking speed 
walkSpeed = 1;

//setting the deadzone for controller inputs
gamepad_set_axis_deadzone(0, 0.2);

alertTime[0] = 20;
alertTime[1] = 15;
alertTime[2] = 15;

alarm[0] = alertTime[0];
alarm[1] = alertTime[1];
alarm[2] = alertTime[2];

slot[0] = "slash";
slot[1] = "scythe";
slot[2] = "fireball";

//getting weapon damage values
damageSlash = 3;
damageScythe = 1;
damageFireball = 2;
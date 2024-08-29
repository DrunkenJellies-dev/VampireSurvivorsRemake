// getting the player input
var keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
var keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
var keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
var keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));

// movement combined
var horizontal = (keyRight - keyLeft);
var vertical = (keyDown - keyUp);

//override with gamepad thumbsticks
if (gamepad_axis_value(0, gp_axislh) != 0 or gamepad_axis_value(0, gp_axislv) != 0)
{
	horizontal = gamepad_axis_value(0,gp_axislh);
	vertical = gamepad_axis_value(0,gp_axislv);
}

// applying the walking speed
x += horizontal * walkSpeed;
y += vertical * walkSpeed;

//changing the player sprite and direction
if (horizontal > 0)
{
	object_set_sprite(obj_hero, spr_heroWalk);
	image_xscale = 1;
}

if (vertical > 0)
{
	object_set_sprite(obj_hero, spr_heroWalk);
	image_xscale = -1;
}

if (horizontal == 0 && vertical == 0)
{
	object_set_sprite(obj_hero, spr_heroIdle);
}

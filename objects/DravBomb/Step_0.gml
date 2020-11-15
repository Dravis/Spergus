/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51905653
/// @DnDArgument : "code" "image_angle -= 4$(13_10)if y > startpoint +	450$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	image_angle = 0$(13_10)	sprite_index = s_explosion$(13_10)	image_xscale = 0.5$(13_10)	image_yscale = 0.5$(13_10)}$(13_10)$(13_10)if sprite_index = s_explosion and image_index > image_number - 1$(13_10){$(13_10)	instance_destroy()$(13_10)}"
image_angle -= 4
if y > startpoint +	450
{
	hspeed = 0
	vspeed = 0
	image_angle = 0
	sprite_index = s_explosion
	image_xscale = 0.5
	image_yscale = 0.5
}

if sprite_index = s_explosion and image_index > image_number - 1
{
	instance_destroy()
}
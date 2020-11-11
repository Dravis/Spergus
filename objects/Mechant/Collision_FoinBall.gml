/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53D08ED6
/// @DnDArgument : "code" "if y > other.creator.y-100 and y < other.creator.y+100 and other.speed != 0$(13_10){$(13_10)	if healths > 0 and Flashy != 1$(13_10)	{$(13_10)		healths -= 34$(13_10)		Flashy = 1$(13_10)		alarm[1] = 65$(13_10)		sprite_index = s_BS1Die$(13_10)		image_index = 0$(13_10)	if other.image_yscale < 19/30$(13_10)	{$(13_10)	instance_destroy(other)$(13_10)	}$(13_10)	}$(13_10)$(13_10)}"
if y > other.creator.y-100 and y < other.creator.y+100 and other.speed != 0
{
	if healths > 0 and Flashy != 1
	{
		healths -= 34
		Flashy = 1
		alarm[1] = 65
		sprite_index = s_BS1Die
		image_index = 0
	if other.image_yscale < 19/30
	{
	instance_destroy(other)
	}
	}

}
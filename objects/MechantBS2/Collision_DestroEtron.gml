/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D74CC9F
/// @DnDArgument : "code" "if y > other.y-100 and y < other.y+100$(13_10){$(13_10)	if healths > 0$(13_10)	{$(13_10)		Flashy= 1$(13_10)		healths -= 5$(13_10)		if sprite_index != s_BS2Die$(13_10)		{$(13_10)			sprite_index = s_BS2Die$(13_10)			image_index = 0$(13_10)		}$(13_10)	}$(13_10)$(13_10)	instance_destroy(other)$(13_10)$(13_10)}$(13_10)$(13_10)"
if y > other.y-100 and y < other.y+100
{
	if healths > 0
	{
		Flashy= 1
		healths -= 5
		if sprite_index != s_BS2Die
		{
			sprite_index = s_BS2Die
			image_index = 0
		}
	}

	instance_destroy(other)

}
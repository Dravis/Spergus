/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4888B1EA
/// @DnDArgument : "code" "if other.sprite_index == s_explosion$(13_10){$(13_10)	if healths > 0$(13_10)	{$(13_10)		Flashy= 1$(13_10)		healths -= 5$(13_10)		if sprite_index != s_BS1Die$(13_10)		{$(13_10)			sprite_index = s_BS1Die$(13_10)			image_index = 0$(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)"
if other.sprite_index == s_explosion
{
	if healths > 0
	{
		Flashy= 1
		healths -= 5
		if sprite_index != s_BS1Die
		{
			sprite_index = s_BS1Die
			image_index = 0
		}
	}

}
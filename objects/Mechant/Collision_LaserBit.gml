/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D74CC9F
/// @DnDArgument : "code" "if y > BriseMarc.y-100 and y < BriseMarc.y+100$(13_10){$(13_10)	if healths > 0$(13_10)	{$(13_10)		Flashy= 1$(13_10)		healths -= 5$(13_10)		if sprite_index != s_BS1Die$(13_10)		{$(13_10)			x -= 5 * image_xscale$(13_10)		}$(13_10)	}$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)"
if y > BriseMarc.y-100 and y < BriseMarc.y+100
{
	if healths > 0
	{
		Flashy= 1
		healths -= 5
		if sprite_index != s_BS1Die
		{
			x -= 5 * image_xscale
		}
	}


}
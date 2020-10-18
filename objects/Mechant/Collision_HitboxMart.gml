/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43A09C4E
/// @DnDArgument : "code" "if y > Player1_Parent.y-100 and y < Player1_Parent.y+100$(13_10){$(13_10)	if healths > 0 and Flashy != 1$(13_10)	{$(13_10)		healths -= 34$(13_10)		Flashy = 1$(13_10)		alarm[1] = 45$(13_10)		sprite_index = s_BS1Die$(13_10)		image_index = 0$(13_10)	}$(13_10)}"
if y > Player1_Parent.y-100 and y < Player1_Parent.y+100
{
	if healths > 0 and Flashy != 1
	{
		healths -= 34
		Flashy = 1
		alarm[1] = 45
		sprite_index = s_BS1Die
		image_index = 0
	}
}
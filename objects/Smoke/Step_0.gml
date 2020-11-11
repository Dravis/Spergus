/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B701C4F
/// @DnDArgument : "code" "if image_index > image_number -1$(13_10)	{$(13_10)	if sprite_index = s_Smoke2$(13_10)		{$(13_10)		instance_destroy()$(13_10)		}$(13_10)	}"
if image_index > image_number -1
	{
	if sprite_index = s_Smoke2
		{
		instance_destroy()
		}
	}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E155D70
/// @DnDArgument : "code" "if isHit$(13_10){$(13_10)	if image_blend == c_red$(13_10)	{		$(13_10)		image_blend = c_white$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_blend = c_red$(13_10)	}$(13_10)	$(13_10)	alarm[10] = 10$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	image_blend = c_white$(13_10)}$(13_10)$(13_10)"
if isHit
{
	if image_blend == c_red
	{		
		image_blend = c_white
	}
	else
	{
		image_blend = c_red
	}
	
	alarm[10] = 10
}

else
{
	image_blend = c_white
}
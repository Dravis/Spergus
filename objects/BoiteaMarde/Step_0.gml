/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D526629
/// @DnDArgument : "code" "$(13_10)depth = -9000$(13_10)$(13_10)if y > Destro.y+100$(13_10)	{$(13_10)		speed = 0$(13_10)		gravity = 0$(13_10)	}$(13_10)$(13_10)if image_index == 4$(13_10)	{$(13_10)		instance_create_depth(x,y-100,-y,DestroEtron)$(13_10)	}$(13_10)$(13_10)"

depth = -9000

if y > Destro.y+100
	{
		speed = 0
		gravity = 0
	}

if image_index == 4
	{
		instance_create_depth(x,y-100,-y,DestroEtron)
	}
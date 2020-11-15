/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5284DEC3
/// @DnDArgument : "code" "depth = -y$(13_10)$(13_10)if y > startpoint + 200$(13_10){$(13_10)	if vspeed != 0$(13_10)	{$(13_10)		alarm[0] = 10$(13_10)	}$(13_10)hspeed = 0$(13_10)vspeed = 0$(13_10)}$(13_10)$(13_10)else$(13_10)$(13_10){$(13_10)image_angle -= 10*sens$(13_10)}"
depth = -y

if y > startpoint + 200
{
	if vspeed != 0
	{
		alarm[0] = 10
	}
hspeed = 0
vspeed = 0
}

else

{
image_angle -= 10*sens
}
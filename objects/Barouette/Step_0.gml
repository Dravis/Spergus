/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 467FB4DC
/// @DnDArgument : "code" "$(13_10)if y >= -2$(13_10){$(13_10)	image_angle += rotspeed$(13_10)}$(13_10)$(13_10)$(13_10)if  y > startpoint + 675$(13_10){$(13_10)	$(13_10)	speed = 0$(13_10)	gravity = 0$(13_10)	rotspeed = 0$(13_10)$(13_10)}"

if y >= -2
{
	image_angle += rotspeed
}


if  y > startpoint + 675
{
	
	speed = 0
	gravity = 0
	rotspeed = 0

}
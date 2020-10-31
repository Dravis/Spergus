/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68E69DBE
/// @DnDArgument : "code" "if y >= 700$(13_10){$(13_10)	speed = 0$(13_10)	gravity = 0$(13_10)	alarm[1] = 200$(13_10)}$(13_10)else$(13_10){$(13_10)alarm[0] = random_range(20,40)$(13_10)}"
if y >= 700
{
	speed = 0
	gravity = 0
	alarm[1] = 200
}
else
{
alarm[0] = random_range(20,40)
}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FF4414A
/// @DnDArgument : "code" "if (SelectMode = 2)$(13_10){$(13_10)	if CanMove$(13_10){$(13_10)	CanMove = false$(13_10)	alarm[2] = MoveSpeed$(13_10)	Slot += 3$(13_10)}$(13_10)}"
if (SelectMode = 2)
{
	if CanMove
{
	CanMove = false
	alarm[2] = MoveSpeed
	Slot += 3
}
}
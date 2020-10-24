/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 655F6924
/// @DnDArgument : "code" "if Draffeurd.state = "attack" and Draffeurd.substate = "basic"$(13_10){$(13_10)	alarm[0] = 20$(13_10)}"
if Draffeurd.state = "attack" and Draffeurd.substate = "basic"
{
	alarm[0] = 20
}
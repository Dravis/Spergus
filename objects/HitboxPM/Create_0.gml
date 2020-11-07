/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 655F6924
/// @DnDArgument : "code" "if BriseMarc.state = "attack" and BriseMarc.substate = "basic"$(13_10){$(13_10)	alarm[0] = 20$(13_10)}"
if BriseMarc.state = "attack" and BriseMarc.substate = "basic"
{
	alarm[0] = 20
}
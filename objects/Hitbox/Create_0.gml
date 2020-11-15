/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 655F6924
/// @DnDArgument : "code" "creator = Draffeurd$(13_10)$(13_10)if creator.state = "attack" and creator.substate = "basic"$(13_10){$(13_10)	alarm[0] = 20$(13_10)}$(13_10)$(13_10)"
creator = Draffeurd

if creator.state = "attack" and creator.substate = "basic"
{
	alarm[0] = 20
}
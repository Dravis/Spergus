/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A824E07
/// @DnDArgument : "var" "CanMove"
/// @DnDArgument : "value" "1"
if(CanMove == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66F001C9
	/// @DnDParent : 4A824E07
	/// @DnDArgument : "var" "CanMove"
	CanMove = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 304D9EA3
	/// @DnDParent : 4A824E07
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Slot"
	Slot += 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7D75FBA3
	/// @DnDParent : 4A824E07
	/// @DnDArgument : "steps" "50"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 50);
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10A7E2AF
/// @DnDArgument : "var" "CanMove"
/// @DnDArgument : "value" "1"
if(CanMove == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54B00CB3
	/// @DnDParent : 10A7E2AF
	/// @DnDArgument : "var" "CanMove"
	CanMove = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44A3CEE0
	/// @DnDParent : 10A7E2AF
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Slot"
	Slot += 3;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4896E23E
	/// @DnDParent : 10A7E2AF
	/// @DnDArgument : "steps" "50"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 50);
}
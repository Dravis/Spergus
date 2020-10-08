/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24695411
/// @DnDArgument : "var" "CanMove"
/// @DnDArgument : "value" "1"
if(CanMove == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FCF97A8
	/// @DnDParent : 24695411
	/// @DnDArgument : "var" "CanMove"
	CanMove = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2875695D
	/// @DnDParent : 24695411
	/// @DnDArgument : "steps" "50"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 50);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B710E29
	/// @DnDParent : 24695411
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Slot"
	Slot += -1;
}
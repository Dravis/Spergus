/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6378B83D
/// @DnDArgument : "var" "CanMove"
/// @DnDArgument : "value" "1"
if(CanMove == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F51B850
	/// @DnDParent : 6378B83D
	/// @DnDArgument : "var" "CanMove"
	CanMove = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71B8C338
	/// @DnDParent : 6378B83D
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Slot"
	Slot += -3;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 374FB936
	/// @DnDParent : 6378B83D
	/// @DnDArgument : "steps" "50"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 50);
}
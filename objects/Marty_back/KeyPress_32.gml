/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09CE8641
/// @DnDArgument : "var" "CanStartShoot"
/// @DnDArgument : "value" "1"
if(CanStartShoot == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A6751AF
	/// @DnDParent : 09CE8641
	/// @DnDArgument : "var" "CanStartShoot"
	CanStartShoot = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40276B72
	/// @DnDParent : 09CE8641
	/// @DnDArgument : "var" "image_index"
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 48F13592
	/// @DnDParent : 09CE8641
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, 30);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2749724B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Shooting"
Shooting = 1;
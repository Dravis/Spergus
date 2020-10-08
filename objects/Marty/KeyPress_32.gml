/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2749724B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Shooting"
Shooting = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A66DC41
/// @DnDArgument : "var" "hspeed"
if(hspeed == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7A79EABC
	/// @DnDParent : 0A66DC41
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "MartyShootIdle"
	/// @DnDSaveInfo : "spriteind" "MartyShootIdle"
	sprite_index = MartyShootIdle;
	image_index += 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 598FF36F
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "not" "1"
if(!(hspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35EFF853
	/// @DnDParent : 598FF36F
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "MartWalkShooty"
	/// @DnDSaveInfo : "spriteind" "MartWalkShooty"
	sprite_index = MartWalkShooty;
	image_index += 1;
}
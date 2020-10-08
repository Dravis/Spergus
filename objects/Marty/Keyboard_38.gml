/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0AC7E383
/// @DnDArgument : "speed" "-10"
/// @DnDArgument : "type" "2"
vspeed = -10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F5E9D7D
/// @DnDArgument : "var" "hspeed"
if(hspeed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59D81A0D
	/// @DnDParent : 2F5E9D7D
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "1"
	if(lastdir == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 64D03F94
		/// @DnDParent : 59D81A0D
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55629630
	/// @DnDParent : 2F5E9D7D
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "-1"
	if(lastdir == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 123B4B53
		/// @DnDParent : 55629630
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}
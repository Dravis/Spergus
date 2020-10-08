/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0AC7E383
/// @DnDArgument : "speed" "10"
/// @DnDArgument : "type" "2"
vspeed = 10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C4596BA
/// @DnDArgument : "var" "hspeed"
if(hspeed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B5345CF
	/// @DnDParent : 0C4596BA
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "1"
	if(lastdir == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 5C9D3BC4
		/// @DnDParent : 0B5345CF
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5763EE10
	/// @DnDParent : 0C4596BA
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "-1"
	if(lastdir == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6CB7E97B
		/// @DnDParent : 5763EE10
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}
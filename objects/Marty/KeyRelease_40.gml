/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 038F9B57
/// @DnDArgument : "type" "2"
vspeed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29DA9E41
/// @DnDArgument : "var" "hspeed"
if(hspeed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35F70A52
	/// @DnDParent : 29DA9E41
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "1"
	if(lastdir == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2FB7B38E
		/// @DnDParent : 35F70A52
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 246D730E
	/// @DnDParent : 29DA9E41
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "-1"
	if(lastdir == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 52680F21
		/// @DnDParent : 246D730E
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}
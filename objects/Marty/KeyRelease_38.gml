/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 51C9763B
/// @DnDArgument : "type" "2"
vspeed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 791AB6EC
/// @DnDArgument : "var" "hspeed"
if(hspeed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24962B4D
	/// @DnDParent : 791AB6EC
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "1"
	if(lastdir == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 31EA62AF
		/// @DnDParent : 24962B4D
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 648B82F1
	/// @DnDParent : 791AB6EC
	/// @DnDArgument : "var" "lastdir"
	/// @DnDArgument : "value" "-1"
	if(lastdir == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2C36E827
		/// @DnDParent : 648B82F1
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}
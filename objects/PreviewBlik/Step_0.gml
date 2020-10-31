/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2795BEFB
/// @DnDArgument : "var" "CharacterSelectControl.Slot"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "7"
if(!(CharacterSelectControl.Slot == 7))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 7B563C59
	/// @DnDParent : 2795BEFB
	/// @DnDArgument : "xscale" "0"
	/// @DnDArgument : "yscale" "0"
	image_xscale = 0;
	image_yscale = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 52CC4AF8
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 62999748
	/// @DnDParent : 52CC4AF8
	image_xscale = 1;
	image_yscale = 1;
}
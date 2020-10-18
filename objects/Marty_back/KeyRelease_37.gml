/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36D176A0
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "1"
if(hspeed < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 330C50D5
	/// @DnDParent : 36D176A0
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0DA6B6EE
	/// @DnDParent : 36D176A0
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}
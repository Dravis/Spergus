/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F5B278F
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "2"
if(hspeed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3E3D723E
	/// @DnDParent : 6F5B278F
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 19198F1D
	/// @DnDParent : 6F5B278F
	image_xscale = 1;
	image_yscale = 1;
}
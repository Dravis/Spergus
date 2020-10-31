/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4719A747
/// @DnDArgument : "code" "depth = -y-20$(13_10)x = Destro.x$(13_10)y= Destro.y"
depth = -y-20
x = Destro.x
y= Destro.y

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 544F7ABE
/// @DnDArgument : "var" "Destro.sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "s_DestroBlock"
if(!(Destro.sprite_index == s_DestroBlock))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65E1AF24
	/// @DnDParent : 544F7ABE
	instance_destroy();
}
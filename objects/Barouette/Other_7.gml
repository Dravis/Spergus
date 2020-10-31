/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A63C7C2
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "s_explosion"
if(sprite_index == s_explosion)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 748C3799
	/// @DnDParent : 5A63C7C2
	instance_destroy();
}
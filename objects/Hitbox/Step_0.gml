/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76CEA970
/// @DnDArgument : "var" "Draffeurd.sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "s_DraffAttack"
if(!(Draffeurd.sprite_index == s_DraffAttack))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 458A4712
	/// @DnDParent : 76CEA970
	instance_destroy();
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D54E473
/// @DnDArgument : "var" "global.Character1"
/// @DnDArgument : "value" "3"
if(global.Character1 == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7509732F
	/// @DnDParent : 4D54E473
	/// @DnDArgument : "xpos" "992"
	/// @DnDArgument : "ypos" "736"
	/// @DnDArgument : "objectid" "Marty"
	/// @DnDSaveInfo : "objectid" "Marty"
	instance_create_layer(992, 736, "Instances", Marty);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 508F8327
/// @DnDArgument : "var" "global.Character1"
/// @DnDArgument : "value" "1"
if(global.Character1 == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 14C1206F
	/// @DnDParent : 508F8327
	/// @DnDArgument : "xpos" "992"
	/// @DnDArgument : "ypos" "736"
	/// @DnDArgument : "objectid" "Draffeurd"
	/// @DnDSaveInfo : "objectid" "Draffeurd"
	instance_create_layer(992, 736, "Instances", Draffeurd);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4547AC20
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 39CDB89E
	/// @DnDParent : 4547AC20
	/// @DnDArgument : "xpos" "992"
	/// @DnDArgument : "ypos" "736"
	/// @DnDArgument : "objectid" "Player1_Parent"
	/// @DnDSaveInfo : "objectid" "Player1_Parent"
	instance_create_layer(992, 736, "Instances", Player1_Parent);
}
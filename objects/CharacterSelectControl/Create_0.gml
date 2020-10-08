/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 220C52A4
/// @DnDArgument : "expr" "s_DraffIdle"
/// @DnDArgument : "var" "CharPreview"
CharPreview = s_DraffIdle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7702F1F8
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "CanMove"
CanMove = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36D6C30F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Slot"
Slot = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C56DF6A
/// @DnDArgument : "xpos" "250"
/// @DnDArgument : "ypos" "525"
/// @DnDArgument : "objectid" "PreviewDraff"
/// @DnDSaveInfo : "objectid" "PreviewDraff"
instance_create_layer(250, 525, "Instances", PreviewDraff);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2A331B0A
/// @DnDArgument : "xpos" "250"
/// @DnDArgument : "ypos" "525"
/// @DnDArgument : "objectid" "PreviewDrav"
/// @DnDSaveInfo : "objectid" "PreviewDrav"
instance_create_layer(250, 525, "Instances", PreviewDrav);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 13DDF0BA
/// @DnDArgument : "xpos" "250"
/// @DnDArgument : "ypos" "525"
/// @DnDArgument : "objectid" "PreviewMart"
/// @DnDSaveInfo : "objectid" "PreviewMart"
instance_create_layer(250, 525, "Instances", PreviewMart);
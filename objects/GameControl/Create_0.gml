/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A6CC079
/// @DnDArgument : "code" "if global.Character1 == 1$(13_10)	{ instance_create_depth(992, 736, 0, Draffeurd) }$(13_10)else if global.Character1 == 2 $(13_10)	{ instance_create_depth(992, 736, 0, Dravis) }$(13_10)else if global.Character1 == 3 $(13_10)	{ instance_create_depth(992, 736, 0, Marty) }$(13_10)else$(13_10)	{ instance_create_depth(992, 736, 0, Player1_Parent) }"
if global.Character1 == 1
	{ instance_create_depth(992, 736, 0, Draffeurd) }
else if global.Character1 == 2 
	{ instance_create_depth(992, 736, 0, Dravis) }
else if global.Character1 == 3 
	{ instance_create_depth(992, 736, 0, Marty) }
else
	{ instance_create_depth(992, 736, 0, Player1_Parent) }
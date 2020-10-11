/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A6CC079
/// @DnDArgument : "code" "player1 = ""$(13_10)player1Icon = ""$(13_10)player2 = ""$(13_10)player2Icon = ""$(13_10)$(13_10)if global.Character1 == 1$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Draffeurd)$(13_10)		player1Icon = s_FrameDraff$(13_10)	}$(13_10)else if global.Character1 == 2 $(13_10)	{  $(13_10)		player1 = instance_create_depth(992, 736, 0, Dravis) $(13_10)		player1Icon = s_FrameDrav$(13_10)	}$(13_10)else if global.Character1 == 3 $(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Marty) $(13_10)		player1Icon = s_FrameMart$(13_10)	}$(13_10)else$(13_10)	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }"
player1 = ""
player1Icon = ""
player2 = ""
player2Icon = ""

if global.Character1 == 1
	{ 
		player1 = instance_create_depth(992, 736, 0, Draffeurd)
		player1Icon = s_FrameDraff
	}
else if global.Character1 == 2 
	{  
		player1 = instance_create_depth(992, 736, 0, Dravis) 
		player1Icon = s_FrameDrav
	}
else if global.Character1 == 3 
	{ 
		player1 = instance_create_depth(992, 736, 0, Marty) 
		player1Icon = s_FrameMart
	}
else
	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }
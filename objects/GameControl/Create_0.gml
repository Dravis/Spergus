/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A6CC079
/// @DnDArgument : "code" "player1 = ""$(13_10)player1Icon = ""$(13_10)player2 = ""$(13_10)player2Icon = ""$(13_10)$(13_10)//Character 1 create$(13_10)if global.Character1 == 1$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 200, 0, Draffeurd)$(13_10)		player1Icon = s_FrameDraff$(13_10)	}$(13_10)else if global.Character1 == 2 $(13_10)	{  $(13_10)		player1 = instance_create_depth(992, 736, 0, Dravis) $(13_10)		player1Icon = s_FrameDrav$(13_10)	}$(13_10)else if global.Character1 == 3 $(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Marty) $(13_10)		player1Icon = s_FrameMart$(13_10)	}$(13_10)	$(13_10)	else if global.Character1 == 4$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, BriseMarc) $(13_10)		player1Icon = s_FramePM$(13_10)	}$(13_10)	$(13_10)	else if global.Character1 == 5$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Dossailto) $(13_10)		player1Icon = s_FrameDoss$(13_10)	}$(13_10)	$(13_10)		else if global.Character1 == 6$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Destro) $(13_10)		player1Icon = s_FrameDestro$(13_10)	}$(13_10)	$(13_10)else$(13_10)	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }$(13_10)$(13_10)//Create character 2$(13_10)$(13_10)if (global.PlayerMode = 2)$(13_10)$(13_10){$(13_10)$(13_10)if global.Character2 == 1$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 200, 0, Draffeurd)$(13_10)		player2Icon = s_FrameDraff$(13_10)	}$(13_10)else if global.Character2 == 2 $(13_10)	{  $(13_10)		player2 = instance_create_depth(992, 736, 0, Dravis) $(13_10)		player2Icon = s_FrameDrav$(13_10)	}$(13_10)else if global.Character2 == 3 $(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, Marty) $(13_10)		player2Icon = s_FrameMart$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 4$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, BriseMarc) $(13_10)		player2Icon = s_FramePM$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 5$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, Dossailto) $(13_10)		player2Icon = s_FrameDoss$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 6$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Destro) $(13_10)		player1Icon = s_FrameDestro$(13_10)	}$(13_10)	$(13_10)else$(13_10)	{ player2 = instance_create_depth(992, 736, 0, Player2_Parent) }$(13_10)	$(13_10)	}$(13_10)	"
player1 = ""
player1Icon = ""
player2 = ""
player2Icon = ""

//Character 1 create
if global.Character1 == 1
	{ 
		player1 = instance_create_depth(992, 200, 0, Draffeurd)
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
	
	else if global.Character1 == 4
	{ 
		player1 = instance_create_depth(992, 736, 0, BriseMarc) 
		player1Icon = s_FramePM
	}
	
	else if global.Character1 == 5
	{ 
		player1 = instance_create_depth(992, 736, 0, Dossailto) 
		player1Icon = s_FrameDoss
	}
	
		else if global.Character1 == 6
	{ 
		player1 = instance_create_depth(992, 736, 0, Destro) 
		player1Icon = s_FrameDestro
	}
	
else
	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }

//Create character 2

if (global.PlayerMode = 2)

{

if global.Character2 == 1
	{ 
		player2 = instance_create_depth(992, 200, 0, Draffeurd)
		player2Icon = s_FrameDraff
	}
else if global.Character2 == 2 
	{  
		player2 = instance_create_depth(992, 736, 0, Dravis) 
		player2Icon = s_FrameDrav
	}
else if global.Character2 == 3 
	{ 
		player2 = instance_create_depth(992, 736, 0, Marty) 
		player2Icon = s_FrameMart
	}
	
	else if global.Character2 == 4
	{ 
		player2 = instance_create_depth(992, 736, 0, BriseMarc) 
		player2Icon = s_FramePM
	}
	
	else if global.Character2 == 5
	{ 
		player2 = instance_create_depth(992, 736, 0, Dossailto) 
		player2Icon = s_FrameDoss
	}
	
	else if global.Character2 == 6
	{ 
		player1 = instance_create_depth(992, 736, 0, Destro) 
		player1Icon = s_FrameDestro
	}
	
else
	{ player2 = instance_create_depth(992, 736, 0, Player2_Parent) }
	
	}